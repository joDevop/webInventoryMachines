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
    $("#location").val(datos[12]);
    $("#campus").val(datos[14]);
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
    $("#fact_update").val(datos[3]);
    $("#model_update").val(datos[4]);
    $("#serial_update").val(datos[5]);
    $("#ramslot00_update").val(datos[6]);
    $("#ramslot01_update").val(datos[7]);
    $("#disk_update").val(datos[8]);
    $("#cpu_update").val(datos[9]);
    $("#ip_update").val(datos[10]);
    $("#mac_update").val(datos[11]);
    $("#anydesk_update").val(datos[12]);
    $("#campus_update").val(datos[13]);
    $("#location_update").val(datos[14]);
    $("#at_created_update").val(datos[15]);
    $("#at_update_update").val(datos[16]);
    $("#comment_update").val(datos[18]);

});

//MODAL VIEW!
$(".viewbtn").on("click", function () {
    $tr = $(this).closest("tr");
    var datos = $tr.children("td").map(function () {
        return $(this).text();
    });

    $("#id_view").val(datos[0]);
    $("#type_view").val(datos[1]);
    $("#fact_view").val(datos[3]);
    $("#model_view").val(datos[4]);
    $("#serial_view").val(datos[5]);
    $("#ramslot00_view").val(datos[6]);
    $("#ramslot01_view").val(datos[7]);
    $("#disk_update").val(datos[8]);
    $("#cpu_view").val(datos[9]);
    $("#ip_view").val(datos[10]);
    $("#mac_view").val(datos[11]);
    $("#anydesk_view").val(datos[12]);
    $("#campus_view").val(datos[13]);
    $("#location_view").val(datos[14]);
    $("#at_created_view").val(datos[15]);
    $("#at_update_view").val(datos[16]);
    $("#comment_view").val(datos[17]);
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
    pageLength: 12,
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
