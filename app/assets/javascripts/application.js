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
		var tbodyPopulate = $(".populate-university-contacts");
		if(id){
			var url = '/embed_code_universities/' + id + '/university_contacts'
			var ajaxCall = {
							type: "GET",
							url: url,
							dataType: "json",
							contentType: "application/json" 
						};
			$.ajax(ajaxCall).done(function(data){
					var items = data[0];
					
			});	
		} 
	});

});
