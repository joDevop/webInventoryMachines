//MODAL INSERT!
$(".editbtn").on("click", function () {
    $tr = $(this).closest("tr");
    var datos = $tr.children("td").map(function () {
        return $(this).text();
    });
    $("#insert_id").val(datos[0]);
    $("#type").val(datos[1]);
    $("#fact").val(datos[2]);
    $("#model").val(datos[3]);
    $("#serial").val(datos[4]);
    $("#ram-slot00").val(datos[5]);
    $("#ram-slot01").val(datos[6]);
    $("#hard-drive").val(datos[7]);
    $("#cpu").val(datos[8]);
    $("#ip").val(datos[9]);
    $("#mac").val(datos[10]);
    $("#anydesk").val(datos[11]);
    $("#campus").val(datos[12]);
    $("#location").val(datos[14]);
    $("#comment").val(datos[15]);
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
    $("#observation_update").val(datos[6]);
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
    $("#observation").val(datos[6]);
});

//MODAL DELETE!
$(".deletebtn").on("click", function () {
    $tr = $(this).closest("tr");
    var datos = $tr.children("td").map(function () {
        return $(this).text();
    });
    $("#delete_id").val(datos[0]);
});

//DATATABLE!
$("#datatable").DataTable({
    //scrollY: "800px",
    //scrollCollapse: true,
    //paging: true,
    dom: "Bfrtip",
    buttons: ["copy", "csv", "excel", "pdf", "print"],
    responsive: true,
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

/*$(document).ready(function () {
    $("#datatable").DataTable();
});*/
