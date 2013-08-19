// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function(){
    $("#email_signup_spinner").hide();
    
    $(document).ajaxSend(function(r, s) {
    $("#email_signup_spinner").show();});

    $(document).ajaxStop(function(r, s) {
    $("#email_signup_spinner").fadeOut("fast");});
    
    function draw() {
        var height = $(document).height();
        var header_height = $('#header').height();
        var footer_height = $('#footer').height();
        var content_height = (height - (header_height + footer_height));

        $("#content-left").height(content_height);
    }
    $(document).resize(draw);
    $(draw);
});