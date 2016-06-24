<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="myUsers" class="com.po.Users" scope="page"/>
	<h1>setProperty动作元素</h1>
	<hr>
	<!--根据表单自动匹配所有属性-->
	<%-- <jsp:setProperty property="*" name="myUsers"/> --%>
	<!--根据表单自动匹配部分的属性-->
	<%-- <jsp:setProperty property="username" name="myUsers"/> --%>
	<!--跟表单无关，通过手工赋值给属性-->
	<%-- <jsp:setProperty property="username" value="sunyanjun" name="myUsers"/>
	<jsp:setProperty property="password" value="1425142" name="myUsers"/> --%>
	<!--通过URL传参数给属性赋值-->
	<jsp:setProperty property="password" param="mypass" name="myUsers"/>
	<jsp:setProperty property="username" name="myUsers"/>
	<!--使用传统的表达式的方式来获取用户名和密码-->
	<%-- 用户名:<%=myUsers.getUsername() %><br>
	密码:<%=myUsers.getPassword() %><br> --%>
	<!--使用getProperty方式来获取用户名和密码-->
	用户名:<jsp:getProperty property="username" name="myUsers"/><br>
	密码:<jsp:getProperty property="password" name="myUsers"/><br>
	<br>
	<br>
		<a href="testScope.jsp">测试javabean的作用域范围</a>
		<%
			request.getRequestDispatcher("testScope.jsp").forward(request, response);
		%>
</body>
</html>