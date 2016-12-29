ready =  function() {
  js_update();
}


$(document).on('turbolinks:load', ready);
$(document).ready(ready);


function js_update() {
  $('.ui.dropdown').dropdown();
}