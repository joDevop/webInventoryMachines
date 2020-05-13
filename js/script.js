//MODAL INSERT!
$(".editbtn").on("click", function () {
  $tr = $(this).closest("tr");
  var datos = $tr.children("td").map(function () {
    return $(this).text();
  });
  $("#insert_id").val(datos[0]);
  $("#type").val(datos[1]);
  $("#ip").val(datos[2]);
  $("#mac").val(datos[3]);
  $("#campus").val(datos[4]);
});

//MODAL UPDATE!
$(".updatebtn").on("click", function () {
  $tr = $(this).closest("tr");
  var datos = $tr.children("td").map(function () {
    return $(this).text();
  });
  $("#update_id").val(datos[0]);
  $("#type").val(datos[1]);
  $("#ip").val(datos[2]);
  $("#mac").val(datos[3]);
  $("#campus").val(datos[4]);
});

//MODAL DELETE!
$(".deletebtn").on("click", function () {
  $tr = $(this).closest("tr");
  var datos = $tr.children("td").map(function () {
    return $(this).text();
  });
  $("#delete_id").val(datos[0]);
});

//MODAL UPDATE!
$(".updatebtn").on("click", function () {
  $tr = $(this).closest("tr");
  var datos = $tr.children("td").map(function () {
    return $(this).text();
  });
  $("#update_id").val(datos[0]);
  $("#type_update").val(datos[1]);
  $("#ip_update").val(datos[2]);
  $("#mac_update").val(datos[3]);
  $("#campus_update").val(datos[4]);
});

//MODAL VIEW!
$(".viewbtn").on("click", function () {
  $tr = $(this).closest("tr");
  var datos = $tr.children("td").map(function () {
    return $(this).text();
  });
  $("#view_id").val(datos[0]);
  $("#type").val(datos[1]);
  $("#ip").val(datos[2]);
  $("#mac").val(datos[3]);
  $("#campus").val(datos[4]);
});

//DATATABLE!
$("#datatable").DataTable({
  //scrollY: "200px",
  //scrollCollapse: true,
  //paging: true,
  order: [[0, "desc"]],
  language: {
    search: "Buscar:",
    info: "Mostrando del _START_ al _END_ de _TOTAL_ registros",
    lengthMenu: "Mostrando _MENU_ registros",
    //infoEmpty: "Affichage de l'&eacute;lement 0 &agrave; 0 sur 0 &eacute;l&eacute;ments",
    //infoFiltered: "(filtr&eacute; de _MAX_ &eacute;l&eacute;ments au total)",
    paginate: {
      first: "Primero",
      previous: "Atras",
      next: "Siguiente",
      last: "U&eacuteltimo",
    },
  },
});

$(document).ready(function () {
  $("#datatable").DataTable();
});
