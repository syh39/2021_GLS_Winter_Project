<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
img, label {
	display: inline-block;
}

label {
	width: 130px;
}

button {
	background-color: blue;
	color: white;
	font-size: 15px;
}

#headername {
	color: navy;
}

#Lost {
	color: orange;
}

#Found {
	color: skyblue;
}

</style>
</head>
<body>
	<div style='width: 100%; text-align: center; padding: 5%'>
		<form method="post" action="loginOk">
			<h1 id=headername style="font-size: 35px;">
				<span id="Lost" style="font-size: 35px;">Lost</span> & <span
					id="Found" style="font-size: 35px;">Found</span>
			</h1>
			<div>
				<label>User Id: </label><input type='text' name='userid' />
			</div>
			<br>
			<div>
				<label>Password: </label><input type='password' name='password' />
			</div>
			<br>
			<button type='submit'>login</button>

		</form>
	</div>
</body>

</html>