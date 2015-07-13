
$(function(){
    var omaig = new Set();
    $(".main-list li").each(function(){ 
        omaig.add($(this).data("barcode"));
    });
    var pressed = false; 
    var chars = []; 
    var prehtml = "<li class='list-group-item list-group-item-warning'>";
    var posthtml = "<button type=\"button\" class=\"close delete-scan\" data-dismiss=\"alert\" aria-label=\"Close\"><span aria-hidden=\"true\">×</span></button></li>";

    function removeXfromBarcode(str){
        if(str.indexOf("×") != -1){
            return str.split("×")[0];
        } else {
            return str;
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
                            $("ul.scanned-boxes").append(prehtml + v + posthtml);
                            omaig.add(v);
                        };
                    });
                    if($("ul.scanned-boxes li").length >= 1){
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

	$("ul.scanned-boxes").on("click",".delete-scan", function() {
            omaig.delete(removeXfromBarcode($(this).parent().text()));
			if($("ul.scanned-boxes li").length <= 1){
	    		$(".scan-title").addClass("hidden");
	    		$(".add-scan-btn").addClass("hidden");
	    	}
	});

    $(".remove-box-movement").on("click", function(){
        var barcode = $(this).closest("li").data("barcode");
        var text = $(this).closest("li").text();
        console.log(barcode)
        var movement_id = $(".movement-info").data("id");
        if(barcode){
            $.ajax({
                type: "POST",
                url: "/moveemnts/"+movement_id+"/remove_box",
                data: JSON.stringify({"barcode" : barcode}),
                dataType: "json",
                contentType: "application/json"
            }).done(function(data){

            });
        }
    });

    $(".add-scan-btn").on("click", function() {
        var $node = $("ul.scanned-boxes li");
        var scanned = [];
        if($node.length > 0){
            $(".loading").removeClass("hidden");
            $(".add-scan-btn").addClass("hidden");
            $node.each(function(i,v){
                scanned.push(removeXfromBarcode($(v).text()));
            });
            var movement_id = $(".movement-info").data("id");
            $.ajax({
                type: "POST",
                url: "/movements/"+movement_id+"/add_scans",
                data: JSON.stringify({"scanned_boxes" : scanned}),
                dataType: "json",
                contentType: "application/json"
            }).done(function(data){
                data = data[0];
                var AddedBoxes = data.boxesadded;
                var notFoundBoxes = data.notfound;
                AddedBoxes.forEach(function(v){
                    $(".main-list").append("<li class='list-group-item list-group-item-success' data-barcode='"+v.barcode+"'><h4 class='list-group-item-heading'> Box #" + v.box_number + " ("+ v.barcode + ")</h4><p class='list-group-item-text'>Succesfully added to Movement</p></li>");
                    
                });
                
                omaig = new Set();
                $(".main-list li").each(function(){ 
                    omaig.add($(this).data("barcode"));
                });
                if(AddedBoxes.length > 0){
                    $(".info-title").text("Items have been added to Box #"+ box_id);
                }
                if(notFoundBoxes.length > 0){
                    $(".not-found-title").removeClass("hidden");
                    notFoundBoxes.forEach(function (v) {
                        $(".not-found-list").append("<li class='list-group-item list-group-item-danger' data-barcode='"+v+"'>"+v+"</li>");
                    });
                }
                $(".loading").addClass("hidden");
                $(".scan-title").addClass("hidden");
                $(".scanned-boxes").text("");
            }).fail(function(data){
                $(".loading").addClass("hidden");
                $(".scan-title").addClass("hidden");
                $(".scanned-boxes").text("");
            });
            
        }
    });    
});

