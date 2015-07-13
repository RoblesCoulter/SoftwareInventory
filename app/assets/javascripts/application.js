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
	$('#movement_shipping_date, #movement_arrival_date').datepicker({ dateFormat: 'yy-mm-dd', altFormat: "dd/mm/yy" });

	$(".barcode-input").keypress(function( event ) {
		if(event.which == 13){
	  		event.preventDefault();
	  		$(this).closest(".form-group").next().find(".form-control").focus();
	  	
		}

	});
});
