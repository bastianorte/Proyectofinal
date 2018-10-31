$(function() {
	$(".prueba").change(function() {
  	var id = $(this).val();
		var elementoNombre = $(this).data('nombre');
    $.get("/foods/"+id+".json", function(data) {
    	$(elementoNombre).text(data.description);
    })
  });
});
