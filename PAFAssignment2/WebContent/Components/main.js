$(document).ready(function()
{ 
if ($("#alertSuccess").text().trim() == "") 
 { 
 $("#alertSuccess").hide(); 
 } 
 $("#alertError").hide(); 
});

$(document).on("click", "#btnSave", function(event)
{
	
		// Clear alerts---------------------
		 $("#alertSuccess").text("");
		 $("#alertSuccess").hide();
		 $("#alertError").text("");
		 $("#alertError").hide();

		// Form validation-------------------
		var status = validateItemForm();
		if (status != true)
		 {
		 $("#alertError").text(status);
		 $("#alertError").show();
		 return;
		 }
	
		// If valid------------------------
		var type = ($("#hidItemIDSave").val() == "") ? "POST" : "PUT";
		
		$.ajax(
			{
				url : "ProductAPI",
				 type : type,
				 data : $("#formproduct").serialize(),
				 dataType : "text",
				 complete : function(response, status)
				 {
				 onItemSaveComplete(response.responseText, status);
				 }
				
				
			});
	
});

function onItemSaveComplete(response, status){
	
	if (status == "success"){
		
		var resultSet = JSON.parse(response);
		
		if (resultSet.status.trim() == "success"){
			$("#alertSuccess").text("Successfully saved.");
			
			 $("#alertSuccess").show();
			 $("#divItemsGrid").html(resultSet.data);
			
		}else if (resultSet.status.trim() == "error"){
			
			$("#alertError").text(resultSet.data);
 			$("#alertError").show();
		}
	}else if (status == "error"){
		
		$("#alertError").text("Error while saving.");
 		$("#alertError").show();
	}else{
		
		$("#alertError").text("Unknown error while saving..");
 		$("#alertError").show();
	}
	
	$("#hidItemIDSave").val("");
 	$("#formproduct")[0].reset(); 
	
}

$(document).on("click", ".btnUpdate", function(event)
{
		$("#hidItemIDSave").val($(this).data("id"));
		$("#productId").val($(this).closest("tr").find('td:eq(0)').text());
		 $("#title").val($(this).closest("tr").find('td:eq(1)').text());
		 $("#sDesc").val($(this).closest("tr").find('td:eq(2)').text());
		 $("#lDesc").val($(this).closest("tr").find('td:eq(3)').text());
		 $("#price").val($(this).closest("tr").find('td:eq(4)').text());
		$("#downloadLink").val($(this).closest("tr").find('td:eq(5)').text());
	
});

$(document).on("click", ".btnRemove", function(event)
{
	 $.ajax(
	 {
		 url : "ProductAPI",
		 type : "DELETE",
		 data : "id=" + $(this).data("id"),
		 dataType : "text",
		 complete : function(response, status)
		 {
		 		onItemDeleteComplete(response.responseText, status);
		 }
	 });
});

function onItemDeleteComplete(response, status)
{
	if (status == "success")
	 {
		 var resultSet = JSON.parse(response);
			 if (resultSet.status.trim() == "success")
			 {
				 $("#alertSuccess").text("Successfully deleted.");
				 $("#alertSuccess").show();
				 $("#divItemsGrid").html(resultSet.data);
			 } else if (resultSet.status.trim() == "error")
			 {
				 $("#alertError").text(resultSet.data);
				 $("#alertError").show();
			 }
	 } else if (status == "error")
	 {
		 $("#alertError").text("Error while deleting.");
		 $("#alertError").show();
	 } else
	 {
		 $("#alertError").text("Unknown error while deleting..");
		 $("#alertError").show();
	 }
}

function validateItemForm() 
{ 
	// CODE
	if ($("#productId").val().trim() == "") 
	 { 
 		return "Insert Item Code."; 
 	} 
	// NAME
	if ($("#title").val().trim() == "") 
 	{ 
 		return "Insert Item Name."; 
 	} 
 	if ($("#sDesc").val().trim() == "") 
 	{ 
 		return "Insert Short Description."; 
 	} 
 	if ($("#lDesc").val().trim() == "") 
 	{ 
 		return "Insert Long Description."; 
 	} 
	// PRICE-------------------------------
	if ($("#price").val().trim() == "") 
 	{ 
 		return "Insert Item Price."; 
 	} 
	// is numerical value
	
	var price = $("#price").val().trim(); 
	if (!$.isNumeric(price)) 
 	{ 
 	return "Insert a numerical value for Item Price."; 
 	} 
	// convert to decimal price
 	$("#price").val(parseFloat(price).toFixed(2)); 
	// DESCRIPTION------------------------
	if ($("#downloadLink").val().trim() == "") 
	 { 
 		return "Insert Link."; 
 	} 
	return true; 
}
