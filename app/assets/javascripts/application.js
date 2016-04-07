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
						contactNode+= "<td>" + contact.name + "</td>"
						contactNode+= "<td>" + contact.email + "</td>"
						contactNode+= "<td>" + contact.skype + "</td>"
						contactNode+= "<td class='text-right'>" + contact.role + "</td>"
						contactNode += "</tr>";
						$(contactList).append(contactNode);
						contactNode = "<tr>";
					});
					$("a.new-contact-btn").attr("href", "/university_contacts/new/"+id);
					$(".modal-body").removeClass("hidden");
					$(".content-loader").addClass("hidden");
					
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
						universityNode+= "<td class='text-right'>" + university.comments + "</td>"
						universityNode += "</tr>";
						$(universityList).append(universityNode);
						universityNode = "<tr>";
					});
					$("a.new-university-btn").attr("href", "/embed_code_universities/new/"+id);
					$(".modal-body").removeClass("hidden");
					$(".content-loader").addClass("hidden");
					
			});	
		} 
	});

});
