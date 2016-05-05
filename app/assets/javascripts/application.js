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
//= require_tree .

// $(document).ready(function(){
//   //when "create new article" submit button is clicked
//   $("#new-article").on("submit", function(event){
//     event.preventDefault();

//     var $form = $(this);
//     //build request
//     data = $form.serialize();
//     method = $form.attr("method");
//     route = $form.attr("action");
//     //send request
//     var request = $.ajax({
//       //needed for rails authenticity check
//       beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
//       method: method,
//       url: route,
//       data: data
//     });//end request
//     //on successful request
//     request.done(function(ckEditorForm){
//       //pop-up CK Editor form
//        $("#create-new-article-container").append(ckEditorForm);
//     });//end request done
//   });//end new-art submit
// });//end doc ready
