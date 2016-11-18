var _this;
$(document).ready(function(){

    
    $("#upload_submit").click( "click", function() {
	  alert();
	  ft_UPLOAD_FILE();
   });
	 
})

function ft_UPLOAD_FILE(){
	var csrfHeader = $("meta[name='_csrf_header']").attr("content");
	var csrfToken = $("meta[name='_csrf']").attr("content")
	
	var input={};
	
	var filedata = $("#file").text;
	
    formdata = new FormData();
    var i = 0, len = filedata.files.length, file;
     for (i; i < len; i++) {
        file = filedata.files[i];
        formdata.append("file[]", file);
        console.log(filedata.files[i]);
    }
    formdata.append("json",true);
    
	/*  $.ajax({
	    	type   : 'POST',
	    	url    : "/file",
	    	cache: false,
	        async: false,
	        beforeSend: function(xhr) {
	            xhr.setRequestHeader(csrfHeader, csrfToken);
	        },
	        
	        data:input,
	    	success :function(result){
	    	   alert(result);
	    	 }
		   })*/
}