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
		e.preventDefault()
		return false;
	});

	$("#ajax_search input").keyup(function() {
		$.get($("#ajax_search").attr("action"), $("#ajax_search").serialize(), null, "script");
		return false;
	});

	$(".barcode-input").focus();
	$('#movement_shipping_date, #movement_arrival_date, #advanced_search_date').datepicker({ dateFormat: 'yy-mm-dd', altFormat: "dd/mm/yy" });

	$(".barcode-input").keypress(function( event ) {
		if(event.which == 13){
			event.preventDefault();
			$(this).closest(".form-group").next().find(".form-control").focus();
		}
	});

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
					var contactNode = "<tr>";
					$.each(contacts, function(i, contact){
						contactNode += "<td>" + contact.name + "</td>"
						contactNode += "<td>" + contact.email + "</td>"
						contactNode += "<td>" + contact.skype + "</td>"
						contactNode += "<td class='text-right'>" + contact.role + "</td>"
						contactNode += "</tr>";
						$(contactList).append(contactNode);
						contactNode = "<tr>";
					});
					$("a.new-contact-btn").attr("href", "/university_contacts/new/"+id);
					$("#contacts-modal .modal-body").removeClass("hidden");
					$("#contacts-modal .modal-footer").removeClass("hidden");
					$("#contacts-modal .content-loader").addClass("hidden");
					$("#add-contacts-modal").data("id", id);
			});
		}
	});

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
					$("#add-universities-modal").data("id", id);
			});
		}
	});

	$(".add-contact-btn").on("click", function(event){
		$("#contacts-modal").modal('hide');
		$("#add-contacts-modal").modal('show');
		var universityId = $("#add-contacts-modal").data("id");
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
			var universityId = $("#add-contacts-modal").data("id");
			var contactId = $dropdown.val();
			var alertSuccess = "<div class='alert alert-success alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button><strong>Added!</strong> has been added.</div>";
			var url = '/embed_code_universities/add_contact'
			var ajaxCall = {
							type: "POST",
							url: url,
							data: { "university_id" : universityId , "contact_id" : contactId},
							dataType: "json",
							contentType: "application/json"
						};
			$.ajax(ajaxCall).done(function(data){
					var log = data;
					console.log(data);
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
			console.log(contacts);
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
});
