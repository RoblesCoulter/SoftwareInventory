//= require jquery
//= require jquery_ujs
//= require jquery-ui/datepicker
//= require twitter/bootstrap
//= require turbolinks
//= require rails.validations
//= require local_time

$(function(){
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
