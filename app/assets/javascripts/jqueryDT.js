//##################################################
// dataTables
//##################################################
$(document).on('page:change',function(){
    $('#produtos').DataTable({
    "language": {
            "search": "Procurar:",
            "paginate":{
              "previous": "Anterior ",
              "next": " Proximo"},
            "lengthMenu": "Mostrar _MENU_ registros",
            "zeroRecords": "Não encontrado",
            "info": "Pagina _PAGE_ de _PAGES_",
            "infoEmpty": "Vazio",
            "infoFiltered": "(filtrado de _MAX_ total registros)"
            }
    });

    $('#tb_OS').DataTable({
        "language": {
                "search": "Procurar:",
                "paginate":{
                  "previous": "Anterior ",
                  "next": " Proximo"},
                "lengthMenu": "Mostrar _MENU_ registros",
                "zeroRecords": "Não encontrado",
                "info": "Pagina _PAGE_ de _PAGES_",
                "infoEmpty": "Vazio",
                "infoFiltered": "(filtrado de _MAX_ total registros)"
                }
        });
    $('#tb_Servicos').DataTable({
            "language": {
                    "search": "Procurar:",
                    "paginate":{
                      "previous": "Anterior ",
                      "next": " Proximo"},
                    "lengthMenu": "Mostrar _MENU_ registros",
                    "zeroRecords": "Não encontrado",
                    "info": "Pagina _PAGE_ de _PAGES_",
                    "infoEmpty": "Vazio",
                    "infoFiltered": "(filtrado de _MAX_ total registros)"
                    }
            });

   $('#inbox').DataTable({
            "language": {
                    "search": "Procurar:",
                    "paginate":{
                      "previous": "Anterior ",
                      "next": " Proximo"},
                    "lengthMenu": "Mostrar _MENU_ registros",
                    "zeroRecords": "Não encontrado",
                    "info": "Pagina _PAGE_ de _PAGES_",
                    "infoEmpty": "Vazio",
                    "infoFiltered": "(filtrado de _MAX_ total registros)"
                    }
            });

    $('#tbCampanha').DataTable({
            "language": {
                    "search": "Procurar:",
                    "paginate":{
                      "previous": "Anterior ",
                      "next": " Proximo"},
                    "lengthMenu": "Mostrar _MENU_ registros",
                    "zeroRecords": "Não encontrado",
                    "info": "Pagina _PAGE_ de _PAGES_",
                    "infoEmpty": "Vazio",
                    "infoFiltered": "(filtrado de _MAX_ total registros)"
                    }
            });

      $('#tbProcessoVenda').DataTable({
                    "language": {
                            "search": "Procurar:",
                            "paginate":{
                              "previous": "Anterior ",
                              "next": " Proximo"},
                            "lengthMenu": "Mostrar _MENU_ registros",
                            "zeroRecords": "Não encontrado",
                            "info": "Pagina _PAGE_ de _PAGES_",
                            "infoEmpty": "Vazio",
                            "infoFiltered": "(filtrado de _MAX_ total registros)"
                            }
                    });
      $('#tbOportunidade').DataTable({
                          "language": {
                          "search": "Procurar:",
                          "paginate":{
                          "previous": "Anterior ",
                          "next": " Proximo"},
                          "lengthMenu": "Mostrar _MENU_ registros",
                          "zeroRecords": "Não encontrado",
                          "info": "Pagina _PAGE_ de _PAGES_",
                          "infoEmpty": "Vazio",
                          "infoFiltered": "(filtrado de _MAX_ total registros)"
                                        }
                        });
});
