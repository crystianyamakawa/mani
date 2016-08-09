  function pesquisa_clientes( ){
    var nome = $('#pesquisaNome').val();
    var cpf  = $('#pesquisaCpf').val();
    var cnpj = $('#pesquisaCnpj').val();
    var url  = '/clientes/pesquisa_clientes?utf8=✓&nome=' + nome +
                              '&cpf=' + cpf +
                              '&cnpj=' + cnpj;
    var resultTable = $('#tbRetorno');
    resultTable.empty();
    //console.log(url);
    $.getJSON(url, function (data) {
    //  console.log(data);
      $.each(data, function (i, object) {
          resultTable.append('<tr><td><input id="accept_cli" name="'+object['cliente'].nome +'" type="checkbox" value="'+object['cliente'].id+'" /></td><td id="nome">'
                              + object['cliente'].nome +'</td> <td>'
                              + object['cliente'].cpf +'</td> <td>'
                              + object['cliente'].cnpj +'</td> <td id="cliente_id">'
                              //style="display:none;"
                              + object['cliente'].id  + '</td> </tr>');
        });
    });

  }

 function setCliente(id_field){
   //console.log($('#accept:checked'));
    var nm_cli = $('#accept_cli:checked').attr("name");
    var id_cli = $('#accept_cli:checked').val();

    if (typeof nm_cli !== "undefined") {
      document.getElementById("cliente").value = nm_cli;
      document.getElementById(id_field).value = id_cli;
    };
  }
///////////////////////////////////////////////////
// Equipamentos
  function pesquisa_equipamentos( ){
    var codigo = $('#equipCodigo').val();
    var descricao  = $('#equipDescricao').val();
    var tipo = $('#equipTipo').val();
    var url  = '/equipamentos/pesquisa_equipamento?utf8=✓&codigo=' + codigo +
                              '&descricao=' + descricao +
                              '&tipo=' + tipo;

    var resultTable = $('#tbRetornoEquip');
    resultTable.empty();
    //console.log(url);
    $.getJSON(url, function (data) {
    //  console.log(data);
      $.each(data, function (i, object) {
          resultTable.append('<tr><td><input id="accept_equip" name="'+object['equipamento'].descricao +'" type="checkbox" value="'+object['equipamento'].id+'" /></td>'
                              +'<td id="descricao">' + object['equipamento'].codigo +'</td> <td>'
                              + object['equipamento'].descricao +'</td> <td>'
                              + object['equipamento'].tipo +'</td> </tr>');
        });
    });

  }


 function setEquipamento(id_field){
  // console.log($('#accept:checked'));
    var ds_equip = $('#accept_equip:checked').attr("name");
    var id_equip = $('#accept_equip:checked').val();

    if (typeof ds_equip !== "undefined") {
      document.getElementById("equipamento").value = ds_equip;
      document.getElementById(id_field).value = id_equip;
    };
  }

////////////////////////////////////////////////////////////////////
function pesquisa_resolucao( ){
  var descricao  = $('#resolucaoDescricao').val();
  var url  = '/resolucaos/pesquisa_resolucao?utf8=✓&descricao=' + descricao;

  var resultTable = $('#tbRetornoResolucao');
  resultTable.empty();
  //console.log(url);
  $.getJSON(url, function (data) {
    //console.log(data);
    $.each(data, function (i, object) {
        resultTable.append('<tr><td><input id="accept_res" name="'+object['resolucao'].descricao +'" type="checkbox" value="'+object['resolucao'].id+'" /></td><td>'
                            + object['resolucao'].descricao +'</td> <td>'
                            + object['resolucao'].obs_resolucao +'</td></tr>');
      });
  });

}

function setResolucao(){
 //console.log($('#accept:checked'));
  var ds_res = $('#accept_res:checked').attr("name");
  var id_res = $('#accept_res:checked').val();

  if (typeof ds_res !== "undefined") {
    document.getElementById("resolucao").value = ds_res;
    document.getElementById("atendimento_resolucao_id").value = id_res;
  }
}


function encaminhar_inbox(){
  var inbox =  $('#sel_inbox').val();
  var id =  $('#atendimento_id').val();
  var url = "encaminhar_inbox"
  $.get(url,{ atendimento_id: id, inbox: inbox });
}

function carregaCliente(){
   console.log("CarregaCliente");
   document.getElementById("pesquisaNome").value = $('cliente').val();
}

$('#pesquisaCliente').on('shown.bs.modal', function () {
  console.log("J queryCarregaCliente");

});
