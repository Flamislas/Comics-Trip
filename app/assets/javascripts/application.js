// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
$(document).ready(function(){
  $("form#sign_in_user")
      .on("ajax:success", function(event, xhr, settings) {
          $('#myModal').modal('hide');
          //force page reload because Devise user_signed_in? state is never updated
          setTimeout(function(){location.reload();}, 300);            
      });
});

  window.setTimeout("document.getElementById('alert_message').style.display='none';", 6000);