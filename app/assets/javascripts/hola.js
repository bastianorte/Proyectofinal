$(function() {
	$("#prueba").change(function() {
  	var id = $("#prueba").val();
    $.get("/foods/"+id).success(function(data) {
    	$("#nombre").text("data.name");
    })
  });
});
