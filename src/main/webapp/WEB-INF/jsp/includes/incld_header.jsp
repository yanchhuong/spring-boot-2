
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%

%>

<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/main.css">
<link rel="stylesheet" href="/css/others.css">
<link rel="stylesheet" href="/css/0b6da63922288a81.css">


<meta name="_csrf" content="${_csrf.token}" />
<meta name="_csrf_header" content="${_csrf.headerName}" />

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="application/javascript" src="/js-lib/custom.popup.js"></script>
<script type="application/javascript" src="/js-lib/datepicker.js"></script>
<script type="application/javascript" src="/js-lib/jquery.cookie.js"></script>
<script type="application/javascript" src="/js-lib/sjquery.maskedinput.min.js"></script>
<script type="application/javascript" src="/js-lib/jquery-3.6.0.min.js"></script>
<script type="application/javascript" src="/js-lib/jquery-confirm.js"></script>
<script type="application/javascript" src="/js-lib/loader.js"></script>
<script type="application/javascript" src="/js-lib/printThis.js"></script>
<script type="application/javascript" src="/js-lib/smart.excel.js"></script>
<script type="application/javascript" src="/js-lib/smart.grid.js"></script>
<script type="application/javascript" src="/js-lib/smart.popup.js"></script>
<script type="application/javascript" src="/js-lib/tms.comm.js"></script>
<script type="application/javascript" src="/js-lib/upload_file.js"></script>


<!-- smart Library -->
<script type="application/javascript" src="/js-lib/smart/datepicker.js"></script>
<script type="application/javascript" src="/js-lib/smart/smart.excel_osmc.js"></script>
<script type="application/javascript" src="/js-lib/smart/rptr.excel.js"></script>
<script type="application/javascript" src="/js-lib/smart/smart.grid.js"></script>
<script type="application/javascript" src="/js-lib/smart/smart.popup_v2.js"></script>
<script type="application/javascript" src="/js-lib/smart/smart.table.paging.js"></script>



<script type="text/javascript">
	$(document).ready(function () {
		function callback_redirect(dat) {
			console.log("INDEX.HTML");
		}
	});

     var csrfToken = $("meta[name='_csrf']").attr("content");
     var csrfHeader = $("meta[name='_csrf_header']").attr("content");

     // Setup jQuery AJAX to include CSRF token in the header of every request
     $.ajaxSetup({
         beforeSend: function(xhr) {
             xhr.setRequestHeader(csrfHeader, csrfToken);
         }
     });
</script>
