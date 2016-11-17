
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
  <head>
    <title>File Upload Example using Apache commons File Upload Utility </title>
    <meta name="_csrf" content="${_csrf.token}"/>
    <!-- default header name is X-CSRF-TOKEN -->
    <meta name="_csrf_header" content="${_csrf.headerName}"/>
  </head>
  <body>
    <form action="/file" method="post" enctype="multipart/form-data">
        Select File to Upload:<input type="file" name="filename" id="filename"><br>
       <input type="submit" value="Upload">
       <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
    </form>
    
    <div>
		<ul>
			<li th:each="file : ${files}">
				<a th:href="${file}" th:text="${file}" />
			</li>
		</ul>
	</div>
  </body>
</html>