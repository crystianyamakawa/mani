(function() {
  $(function() {
    return $(document).on('change', '#motivos_select', function(evt) {
      return $.ajax('/atendimentos/update_submotivos', {
        type: 'GET',
        dataType: 'script',
        data: {
          motivo_id: $("#motivos_select option:selected").val()
        },
        error: function(jqXHR, textStatus, errorThrown) {
          return console.log("AJAX Error: " + textStatus + " ");
        },
        success: function(data, textStatus, jqXHR) {
          return console.log("Dynamic country select OK!");
        }
      });
    });
  });

}).call(this);
