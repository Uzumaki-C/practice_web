<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>登陆系统</h1>
	<hr>
	<form name="loginForm" action="dologin.jsp?mypass=999999" method="post">
		<table>
			<tr>
				<td>用户名:</td>
				<td><input type="text" name="username" value=""/></td>
			</tr>
			<tr>
				<td>密码:</td>
				<td><input type="password" name="password" value=""/></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="登陆"/></td>
			</tr>
		</table>	
	</form>
</body>
</html>