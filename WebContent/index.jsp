<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html">
	<meta charset="UTF-8">
	<title>Sign in</title>
	<link href="${ pageContext.request.contextPath }/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="container is-centered">
		<form action="login" method="POST" id="login-form">
			<h1 class="text-center">Sign in</h1>
			<div class="form-group">
				<label for="username">Username:</label>
				<input type="text" name="username" id="username" autocomplete="off" placeholder="Username" class="form-control">
				<span class="text-error"><small>${ messages.emptyUsername ? "": messages.emptyUsername}</small></span>
			</div>
			<div class="form-group">
				<label for="password">Password:</label>
				<input type="password" name="password" id="password" autocomplete="off" placeholder="Password" class="form-control">
				<span class="text-error"><small>${ messages.emptyPassword ? "": messages.emptyPassword}</small></span>
			</div>
			<br>
			<button type="submit" class="btn-green">Sign in</button>
			<br> 
			<span class="text-error text-center">${ messages.invalidUser ? "": messages.invalidUser}</span>
		</form>
	</div>
</body>
</html>