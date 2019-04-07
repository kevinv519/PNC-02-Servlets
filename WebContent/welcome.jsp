<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html">
	<meta charset="UTF-8">
	<title>Welcome page</title>
	<link href="${ pageContext.request.contextPath }/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div class="container is-centered">
        <div class="content">
            <h1 class="text-center">Welcome, ${ user }</h1>
            <h3 class="text-center">This site is not secure and I do not care, so your password is:</h3>
            <h2 class="text-center text-error">${ password }</h2>
            <img alt="" src="https://i.kym-cdn.com/photos/images/newsfeed/001/176/251/4d7.png" width="200" style="align-self: center;">
        </div>
    </div>
</body>
</html>