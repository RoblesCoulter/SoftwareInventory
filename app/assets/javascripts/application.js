//= require jquery
//= require jquery_ujs
//= require jquery-ui/datepicker
//= require twitter/bootstrap
//= require turbolinks
//= require rails.validations
//= require local_time

$(function(){

	$(".dropdown-toggle").dropdown();

	$("#ajax_objects th a, #ajax_objects .pagination a").click(function(e){
		$.getScript(this.href);
		e.preventDefault();
		return false;
	});

	$("#ajax_search input").keyup(function() {
		$.get($("#ajax_search").attr("action"), $("#ajax_search").serialize(), null, "script");
		return false;
	});

	$(".barcode-input").focus();
	$('#movement_shipping_date, #movement_arrival_date, #advanced_search_date').datepicker({ dateFormat: 'yy-mm-dd', altFormat: "dd/mm/yy" });

	$(".barcode-input").keypress(function(event) {
		if(event.which == 13){
			event.preventDefault();
			$(this).closest(".form-group").next().find(".form-control").focus();
		}
	});
/*************** EMBED CODE GENERATOR ********************/
	$(".templates-dropdown").on("change",function () {
		$(".highlighter").hide();
		$(".alert-success").hide();
		$(".download-code-link").hide();
		var template_id = $(this).val();
		if(template_id){
			$(".embed_"+template_id).show();
			$(".generate-button").show();
		} else {
			$(".generate-button").hide();
		}
	});



	$("#variables-modal").on("show.bs.modal", function(event) {
		$(".modal-body, .modal-footer").addClass("hidden");
		$(".content-loader").removeClass("hidden");
		var template_id = $(".templates-dropdown").val();
		if (template_id) {
			var url = '/embed_codes/' + template_id + '/get_variables'
			var ajaxCall = {
							type: "GET",
							url: url,
							dataType: "json",
							contentType: "application/json"
						};
			$.ajax(ajaxCall).done(function(data) {
				$.each(data,function(i,e){
					$(".form-group").append($("<label>",{
						text: e.name,
						class: "control-label"
					}));
					$(".form-group").append($("<input>",{
						value: e.default_value,
						class: "form-control variable variable-"+e.name,
						name: e.name,
						id: e.id
					}));
				});
				$(".modal-body, .modal-footer").removeClass("hidden");
				$(".content-loader").addClass("hidden");
				$(".form-group").attr("data-template-id",template_id);
			});
		}
	});
	$(".generate-code").on("click",function() {
			var template_id = $(".form-group").data("template-id");

			if (template_id) {
				var code = $(".embed_"+ template_id).val();
				var map = {};
				$(".form-group .variable").each(function(i,e){ map[$(e).attr("name")] = e.value });
				for(var key in map){
					var regex = new RegExp("_%%\\s*" + key +"\\s*%%_","g");
					code = code.replace(regex, map[key]);
				}
				var textFile = null;
				var data = new Blob([code], {type: "text/plain"});
				textFile = window.URL.createObjectURL(data);
				$(".embed_"+template_id).val(code);
				$("button.btn[data-dismiss=modal]").click();
				$(".download-code-link").attr("href", textFile);
				$(".download-code-link").show();
				var data = "{ \"code\": \""+ code + "\" }";
				var events_university_id = $(".center-div").data("events-university-id");
				var url = "/events/"+ events_university_id +"/add_code"
				var ajaxCall = {
								type: "POST",
								url: url,
								data: data,
								dataType: "json",
								contentType: "application/json"
							};
				$.ajax(ajaxCall).done(function(data) {
					$(".alert-success").show();
				});
			}
		});


/*************** EMBED CODE VARIABLES ********************/
	$(".add-variable").on("click", function() {
		var association = "embed_code_variables";
		var new_id = new Date().getTime();
		var regexp = new RegExp("new_" + association, "g");
		var content = "<div class=' form-group fields'>"
									+ "<label class='control-label'>Variable Name</label>"
									+"<input class='form-control' type='text' name='embed_code[embed_code_variables_attributes][new_embed_code_variables][name]' id='embed_code_embed_code_variables_attributes_new_embed_code_variables_name' data-validate='true'>"
									+ "<label class='control-label'>Default Value</label>"
									+ "<input class='form-control' type='text' name='embed_code[embed_code_variables_attributes][new_embed_code_variables][default_value]' id='embed_code_embed_code_variables_attributes_new_embed_code_variables_default_value' data-validate='true'>"
									+ "<input type='hidden' value='false' name='embed_code[embed_code_variables_attributes][new_embed_code_variables][_destroy]' id='embed_code_embed_code_variables_attributes_new_embed_code_variables__destroy' data-validate='true'>"
		      			+ "<a class='remove_link btn btn-danger' href='javascript:void(0);'>Remove</a></div>";
		$(".add-variable").before(content.replace(regexp, new_id));
	});

	$("form.form-horizontal").on("click",".remove_link", function() {
		$(this).closest(".fields").find("input[type=hidden]").attr("value","true");
		$(this).closest(".fields").hide();
	});


/************    EMBED CODE UNIVERSITIES FUNCTIONALITIES   *************/

	$("#contacts-modal").on("show.bs.modal", function(event) {
		$("#contacts-modal .modal-body").addClass("hidden");
		$("#contacts-modal .modal-footer").addClass("hidden");
		var button = $(event.relatedTarget);
		var id = button.data("id");
		var acronym = button.data("acronym");
		var modal = $(this);
		modal.find('.modal-acronym').text(acronym);
		var contactList = $(".university-contacts-list");
		$(contactList).empty();
		if(id){
			var url = '/embed_code_universities/' + id + '/university_contacts'
			var ajaxCall = {
							type: "GET",
							url: url,
							dataType: "json",
							contentType: "application/json"
						};
			$.ajax(ajaxCall).done(function(data){
					var contacts = data;
					$.each(contacts, function(i, contact){
						var contactNode = "<tr data-contactId = '"+contact.id+"'>";
						contactNode += "<td>" + contact.name + "</td>";
						contactNode += "<td>" + contact.email + "</td>";
						contactNode += "<td>" + contact.skype + "</td>";
						contactNode += "<td>" + contact.role + "</td>";
						contactNode += "<td><a href='#contacts-modal' class='removeContact'>Remove</a></td>";
						contactNode += "</tr>";
						$(contactList).append(contactNode);
					});
					$("a.new-contact-btn").attr("href", "/university_contacts/new/"+id);
					$("#contacts-modal .modal-body").removeClass("hidden");
					$("#contacts-modal .modal-footer").removeClass("hidden");
					$("#contacts-modal .content-loader").addClass("hidden");
					$("#add-contacts-modal").data("universityId", id);
					$("#add-contacts-modal").data("acronym", acronym);
			});
		}
	});

	$(".university-contacts-list").on("click", ".removeContact" , function(){
		var $this = $(this);
		var contactId = $this.closest("tr").data("contactid");
		var universityId = $("#add-contacts-modal").data("universityId");
		if(contactId && universityId){
			var data = "{ \"university_id\": \""+ universityId + "\" }";
			var url = '/embed_code_universities/' + contactId + '/remove_contact';
			var ajaxCall = {
							type: "POST",
							url: url,
							data: data,
							dataType: "json",
							contentType: "application/json"
						};
			$.ajax(ajaxCall).done(function(data){
				$this.closest("tr").remove();
			});
		}
	});

	$(".add-contact-btn").on("click", function(event){
		$("#contacts-modal").modal('hide');
		$("#add-contacts-modal").modal('show');
		var universityId = $("#add-contacts-modal").data("universityId");
		getContactList(universityId);
		$("#add-contacts-modal .content-loader").addClass("hidden");
		$("#add-contacts-modal .modal-body").removeClass("hidden");
		$("#add-contacts-modal .modal-footer").removeClass("hidden");
	});

	$(".contact-dropdown").on("change",function(){
		if($(this).val() != ""){
			$("#add-contacts-modal div.modal-body .alert-danger").addClass("hidden");
		}
	});

	$(".add-contact").on("click", function(event){
		$dropdown = $("#add-contacts-modal .contact-dropdown");
		if($dropdown.val() == ""){
			$("#add-contacts-modal div.modal-body .alert-danger").removeClass("hidden");
		} else {
			var universityId = $("#add-contacts-modal").data("universityId");
			var contactId = $dropdown.val();
			var alertSuccess = "<div class='alert alert-success alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button><strong>Added!</strong> has been added.</div>";
			var url = '/embed_code_universities/add_contact'
			var data = "{ \"university_id\": \""+ universityId + "\", \"contact_id\": \""+ contactId + "\" }";
			var ajaxCall = {
							type: "POST",
							url: url,
							data:  data,
							dataType: "json",
							contentType: "application/json"
						};
			$.ajax(ajaxCall).done(function(contact){
					var acronym = $("#add-contacts-modal").data("acronym");
					var successNode = "<div class='alert alert-success alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button><span class='fa fa-check' role='alert'></span><span class='sr-only'>Success: </span>You have successfully added " + contact.name + " to " + acronym + "</div>";
					$("#add-contacts-modal div.modal-body").prepend(successNode);
					$("#add-contacts-modal .contact-dropdown option[value="+ contactId+"]").remove();

			});
		}
	});

	function getContactList(universityId){
		var ajaxParams = {
			type: "GET",
			url: "/university_contacts/contact_dropdown",
			data: { "university_id" : universityId },
			dataType: "json",
			contentType: "application/json"
		};
		$.ajax(ajaxParams).done(function(data){
			var contacts = data[0].contacts;
			var $dropdown = $("#add-contacts-modal .contact-dropdown");
			$($dropdown).html("").append($('<option>', {
				value: "",
				text: "Select a contact"
			}));
			$.each(contacts, function(i,v){
				$($dropdown).append($("<option>",{
					value: v[0],
					text: v[1] + " | " + v[2]
				}));
			});
		});
	}

/************    UNIVERSITIY CONTACTS  FUNCTIONALITIES   *************/
	$("#universities-modal").on("show.bs.modal", function(event) {
		var button = $(event.relatedTarget);
		var id = button.data("id");
		var name = button.data("name");
		var modal = $(this);
		modal.find('.modal-name').text(name);
		var universityList = $(".contact-universities-list");
		$(universityList).empty();
		if(id){
			var url = '/university_contacts/' + id + '/embed_code_universities'
			var ajaxCall = {
							type: "GET",
							url: url,
							dataType: "json",
							contentType: "application/json"
						};
			$.ajax(ajaxCall).done(function(data){
					var universities = data;
					var universityNode = "<tr>";
					$.each(universities, function(i, university){
						universityNode+= "<td>" + university.acronym + "</td>"
						universityNode+= "<td>" + university.name + "</td>"
						if (university.comments) {
							universityNode+= "<td class='text-right'>" + university.comments + "</td>"
						} else {
							universityNode+= "<td class='text-right'></td>"
						}
						universityNode += "</tr>";
						$(universityList).append(universityNode);
						universityNode = "<tr>";
					});
					$("a.new-university-btn").attr("href", "/embed_code_universities/new/"+id);
					$("#universities-modal .modal-body").removeClass("hidden");
					$("#universities-modal .modal-footer").removeClass("hidden");
					$("#universities-modal .content-loader").addClass("hidden");
					$("#add-universities-modal").data("contactId", id);
			});
		}
	});

	$(".contact-universities-list").on("click", ".removeUniversity" , function(){
		var $this = $(this);
		var contactId = $this.closest("tr").data("universityid");
		var universityId = $("#add-universities-modal").data("contactId");
		if(contactId && universityId){
			var data = "{ \"contact_id\": \""+ contactId + "\" }";
			var url = '/university_contacts/' + universityId + '/remove_university';
			var ajaxCall = {
							type: "POST",
							url: url,
							data: data,
							dataType: "json",
							contentType: "application/json"
						};
			$.ajax(ajaxCall).done(function(data){
				$this.closest("tr").remove();
			});
		}
	});

	$(".add-university-btn").on("click", function(event){
		$("#universities-modal").modal('hide');
		$("#add-universities-modal").modal('show');
		var contactId = $("#add-universities-modal").data("contactId");
		getUniversityList(contactId);
		$("#add-universities-modal .content-loader").addClass("hidden");
		$("#add-universities-modal .modal-body").removeClass("hidden");
		$("#add-universities-modal .modal-footer").removeClass("hidden");
	});


	$(".university-dropdown").on("change",function(){
		if($(this).val() != ""){
			$("#add-universities-modal div.modal-body .alert-danger").addClass("hidden");
		}
	});

	$(".add-university").on("click", function(event){
		$dropdown = $("#add-universities-modal .university-dropdown");
		if($dropdown.val() == ""){
			$("#add-universities-modal div.modal-body .alert-danger").removeClass("hidden");
		} else {
			var contactId = $("#add-universities-modal").data("contactId");
			var universityId = $dropdown.val();
			var alertSuccess = "<div class='alert alert-success alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button><strong>Added!</strong> has been added.</div>";
			var url = '/university_contacts/add_university'
			var data = "{ \"contact_id\": \""+ contactId + "\", \"university_id\": \""+ universityId + "\" }";
			var ajaxCall = {
							type: "POST",
							url: url,
							data:  data,
							dataType: "json",
							contentType: "application/json"
						};
			$.ajax(ajaxCall).done(function(contact){
					var contactName = $("#add-universities-modal").data("name");
					var successNode = "<div class='alert alert-success alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button><span class='fa fa-check' role='alert'></span><span class='sr-only'>Success: </span>You have successfully added " + university.name + " to " + contactName+ "</div>";
					$("#add-universities-modal div.modal-body").prepend(successNode);
					$("#add-universities-modal .university-dropdown option[value="+ universityId+"]").remove();

			});
		}
	});


	function getUniversityList(contactId){
		var ajaxParams = {
			type: "GET",
			url: "/embed_code_universities/university_dropdown",
			data: { "contact_id" : contactId },
			dataType: "json",
			contentType: "application/json"
		};
		$.ajax(ajaxParams).done(function(data){
			var universities = data[0].universities;
			var $dropdown = $("#add-universities-modal .university-dropdown");
			$($dropdown).html("").append($('<option>', {
				value: "",
				text: "Select an university"
			}));
			$.each(universities, function(i,v){
				$($dropdown).append($("<option>",{
					value: v[0],
					text: v[1] + " ( " + v[2] + " ) "
				}));
			});
		});
	}
});
