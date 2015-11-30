$(function(){
	var omaig = new Set();
	$(".main-list li").each(function(){ 
		omaig.add($(this).data("barcode"));
	});
	var pressed = false; 
	var chars = []; 
	var prehtml = "<li class='list-group-item list-group-item-warning'>";
	var posthtml = "<button type=\"button\" class=\"close scanned-barcode delete-scan\" data-dismiss=\"alert\" aria-label=\"Close\"><span aria-hidden=\"true\">×</span></button></li>";

	function removeXfromBarcode(str){
		return str.indexOf("×") != -1 ? str.split("×")[0]: str;	
	}
	function reloadItemSelect(){
		var boxId = $(".box-info").data("id");
		if(boxId){
			var ajaxCall = {
							type: "GET",
							url: "/items/item_dropdown",
							data: { "box_id" : boxId },
							dataType: "json",
							contentType: "application/json" 
						};
			$.ajax(ajaxCall).done(function(data){
					var items = data[0].items;
					var $dropdown = $(".item-dropdown");
					$($dropdown).html("").append($('<option>', {
						value: "",
						text: "Select an Item"
					}));
					$.each(items, function(i,v){
						$($dropdown).append($("<option>",{
							value: v[0],
							text: v[1]+ " - " + v[2] + " ("+ v[0] +")"
						}))
					});
			});	
		} 
	}
	
	$(window).keypress(function(e) {
		chars.push(String.fromCharCode(e.which));
		if (pressed == false) {
			setTimeout(function(){
				if (chars.length >= 4) {
					var scan = chars.join("");
					var barcode = scan.split(String.fromCharCode(13));
					barcode.pop();                
					$.each(barcode, function(k,v){
						if (!omaig.has(v)) {
							$("ul.scanned-items").append(prehtml + v + posthtml);
							omaig.add(v);
						};
					});
					if($("ul.scanned-items li").length >= 1){
						$(".scan-title").removeClass("hidden");
						$(".not-found-title").addClass("hidden");
						$(".not-found-list").text("");
						$(".add-scan-btn").removeClass("hidden");
					}
				}
				chars = [];
				pressed = false;
			},500);
		}
		pressed = true;
	});

	$("ul.scanned-items").on("click",".delete-scan", function() {
			omaig.delete(removeXfromBarcode($(this).parent().text()));
			if($("ul.scanned-items li").length <= 1){
				$(".scan-title").addClass("hidden");
				$(".add-scan-btn").addClass("hidden");
			}
			reloadItemSelect();
	});

	$(".main-list").on("click", ".remove-item-box", function(){
		var text = $(this).closest("li").text().split("×")[0];
		var box_id = $(".box-info").data("id");
		if(barcode){
			$.ajax({
				type: "POST",
				url: "/boxes/"+box_id+"/remove_item",
				data: JSON.stringify({"barcode" : barcode}),
				dataType: "json",
				contentType: "application/json"
			}).done(function(data){
				omaig.delete(barcode);
				reloadItemSelect();
			});
		}
	});

	$(".add-scan-btn").on("click", function() {
		var $node = $("ul.scanned-items li");
		var scanned = [];
		if($node.length > 0){
			$(".loading").removeClass("hidden");
			$(".add-scan-btn").addClass("hidden");
			$node.each(function(i,v){
				scanned.push(removeXfromBarcode($(v).text()));
			});
			var box_id = $(".box-info").data("id");
			var box_number = $(".box-info").data("box-number");
			$.ajax({
				type: "POST",
				url: "/boxes/"+box_id+"/add_scans",
				data: JSON.stringify({"scanned_items" : scanned}),
				dataType: "json",
				contentType: "application/json"
			}).done(function(data){
				data = data[0];
				var notInBoxItems = data.notinboxitems;
				var notFoundItems = data.notfound;
				var movedFromBoxItems = data.movedfrombox;
				var oldboxesid = data.oldboxesid;

				notInBoxItems.forEach(function(v){
					$(".main-list").append("<li class='list-group-item list-group-item-success' data-barcode='"+v.barcode+"'><button type='button' class='close remove-item-box' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>×</span></button><a class='addedItem' href='/items/"+v.id+"'><h4 class='list-group-item-heading'>" + v.name + " ("+ v.barcode + ")</h4></a><p class='list-group-item-text'>Succesfully added to Box #"+box_number+"</p></li>");
				});
				movedFromBoxItems.forEach(function(v){
					$(".main-list").append("<li class='list-group-item list-group-item-warning' data-barcode='"+v.barcode+"'><button type='button' class='close remove-item-box' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>×</span></button><a class='movedItem' href='/items/"+v.id+"'><h4 class='list-group-item-heading'>"+ v.name +" ("+ v.barcode + ")</h4></a><p class='list-group-item-text'>Moved from Box #"+oldboxesid[v.id]+" to Box #"+ box_number +"</p></li>");
				});
				omaig = new Set();
				$(".main-list li").each(function(){ 
					omaig.add($(this).data("barcode"));
				});
				if(notInBoxItems.length > 0 || movedFromBoxItems.length > 0){
					$(".info-title").text("Items have been added to Box #"+ box_number);
				}
				if(notFoundItems.length > 0){
					$(".not-found-title").removeClass("hidden");
					notFoundItems.forEach(function (v) {
						$(".not-found-list").append("<li class='list-group-item list-group-item-danger' data-barcode='"+v+"'>"+v+"</li>");
					});
				}
				$(".loading").addClass("hidden");
				$(".scan-title").addClass("hidden");
				$(".scanned-items").text("");
				reloadItemSelect();
			}).fail(function(data){
				$(".loading").addClass("hidden");
				$(".scan-title").addClass("hidden");
				$(".scanned-items").text("");
			});
			
		}
	});   

	$(".item-dropdown").change(function() {
		var barcode = $(this).val();
		if(barcode){
			$(".item-dropdown option[value="+barcode+"]").remove();
			if (!omaig.has(barcode)) {
				$("ul.scanned-items").append(prehtml + barcode + posthtml);
				omaig.add(barcode);
			};
			if($("ul.scanned-items li").length >= 1){
				$(".scan-title").removeClass("hidden");
				$(".not-found-title").addClass("hidden");
				$(".not-found-list").text("");
				$(".add-scan-btn").removeClass("hidden");
			}
		}
	}); 
});

