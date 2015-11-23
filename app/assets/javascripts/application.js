// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require uikit
//= require_tree .

function displayGoogleMap(url, callback) {
  $('#location-map').append('<iframe id="agent-formula-map" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" width="700" height="300"></iframe>');
  $('iframe#agent-formula-map').attr('src', url);

  $('iframe#agent-formula-map').load(function() {
    callback(this);
  })
}