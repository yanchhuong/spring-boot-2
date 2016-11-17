<html>
  <head>
    <title>File Upload Example using Apache commons File Upload Utility </title>
    <meta name="_csrf" content="${_csrf.token}"/>
    <!-- default header name is X-CSRF-TOKEN -->
    <meta name="_csrf_header" content="${_csrf.headerName}"/>
  </head>
  <body>
    <form action="/" method="post"
        enctype="multipart/form-data">
        Select File to Upload:<input type="file" name="fileName"><br>
       <input type="submit" value="Upload">
       <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
    </form>
  </body>
</html>