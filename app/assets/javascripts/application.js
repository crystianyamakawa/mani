/*
 * This is a manifest file that'll be compiled into application.css, which will include all the files
 * listed below.
 *
 * Any CSS and SCSS file within this directory, lib/assets/stylesheets, vendor/assets/stylesheets,
 * or any plugin's vendor/assets/stylesheets directory can be referenced here using a relative path.
 *
 * You're free to add application-wide styles to this file and they'll appear at the bottom of the
 * compiled file so the styles you add here take precedence over styles defined in any styles
 * defined in the other CSS/SCSS files in this directory. It is generally better to create a new
 * file per style scope.
 *
 */
/*
--
*/

//= require jquery
//= require jquery_ujs
//= require dataTables/jquery.dataTables
//= require turbolinks
//= require bootstrap.min
//= require google
//= require_tree .


function currency_to_number(inField, outField ){
  var currency = $(inField).val();
  var outf = $(outField).attr('id');
  currency = currency.replace(/[^0-9\,]+/g,"");
  currency = currency.replace(',',".");
  document.getElementById(outf).value = currency;
}

function mask_tel(inField){ //MASCARA PARA TELEFONE
    var valor = $(inField).val();
    var id = $(inField).attr('id');

    valor=valor.replace(/\D/g,"");             //Remove tudo o que não é dígito
    valor=valor.replace(/^(\d{2})(\d)/g,"($1) $2"); //Coloca parênteses em volta dos dois primeiros dígitos
    valor=valor.replace(/(\d)(\d{4})$/,"$1-$2");    //Coloca hífen entre o quarto e o quinto dígitos
    document.getElementById(id).value = valor;
}
function mask_cep(inField){ //MASCARA PARA TELEFONE
    var valor = $(inField).val();
    var id = $(inField).attr('id');

    valor=valor.replace(/\D/g,"");             //Remove tudo o que não é dígito
    valor=valor.replace(/(\d)(\d{5})$/,"$1-$2");    //Coloca hífen entre o quinto e sexto dígitos
    document.getElementById(id).value = valor;
}

function remove_fields( link) {
  $(link).prevAll("input[type=hidden]").first().val("1");
  $(link).closest(".fields_remove").hide();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).parent().before(content.replace(regexp, new_id));
}
