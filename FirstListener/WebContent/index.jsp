<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=request.getSession().getAttribute("currentUser")%>
	<h1>index.jsp</h1>
	<hr>
	<button onclick="location.href='<%=request.getContextPath()%>/init.jsp'">Init</button>
	<button onclick="location.href='<%=request.getContextPath()%>/destory.jsp'">Destory</button>
	
</body>
</html>