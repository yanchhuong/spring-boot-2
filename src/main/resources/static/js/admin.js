"use strict";
$(function () {
    admin.init = {};
    admin.onload();
});
var admin = {
     onload: function () {
        admin.event();
        admin.load();
     },
     load: function () {
         console.log("Hello Admin");

     },
     event: function () {
        $(document).on("click","#dropFnPost",function() {
            $("#newButton").toggleClass("show");
        });

         $(document).on("click",".ks_ml10",function(e) {
                  $.ajax({
                        url: "/sample/submitValue",         // URL mapping for your controller method
                        contentType: "application/json",        // Set the correct content type
                        type: "POST",                // HTTP method
                        data: JSON.stringify({ USR_ID: '1222' }),    // Data to send, as key/value pair
                        success: function(response) {
                          console.log("Response from server:", response);
                        },
                        error: function(xhr, status, error) {
                          console.error("AJAX Error:", error);
                        }
                  });
         });

         $(document).on(".close").click(function () {
              $("#newCategories").remove("show") ;
         });

         $(document).on("click",".ks_lbl",function() {
           $.ajax({
                 url: "/sample/submitOject",         // URL mapping for your controller method
                 contentType: "application/json",        // Set the correct content type
                 type: "POST",                // HTTP method
                 data: JSON.stringify({ USR_ID: '1222' }),    // Data to send, as key/value pair
                 success: function(response) {
                   console.log("Response from server:", response);
                 },
                 error: function(xhr, status, error) {
                   console.error("AJAX Error:", error);
                 }
           });
         });
     }
}