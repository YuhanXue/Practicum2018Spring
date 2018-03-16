<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="Login.css">

</head>


<body>
	<div class="loginBox" id="div0">
		<img src="../WebProject1/includes/UserProfile.png" class="user">
		<h1 class="">User Login</h1>
		<font color="#ff0000">${user_msg}</font><br />

			<form action="${pageContext.request.contextPath}/login.do">
			<div id="div1">
				<label for="Username" class="col-sm-2 control-label">Username</label>
						<input type="text" id="Username" placeholder="Enter Username" name="username">
			</div>

				<div id="div2">
					<p>Password</p>
					<input type="password" id="password" placeholder="Enter Password" name="password">
				</div>

				<div id="div3">
					<input type="submit" name="" value="Sign In">
				</div>

				<a href="">Forget Your Password ?</a>
			</form>

	</div> <!--end class container-->
</body>
</html>
