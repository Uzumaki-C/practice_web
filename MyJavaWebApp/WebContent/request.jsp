<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>request内置对象</h1>
	<hr>
	<%
		request.setCharacterEncoding("utf-8");
		request.setAttribute("password", "123456");
	%>
	用户名：<%=request.getParameter("username") %><br>
	爱好：<%	
			if(request.getParameterValues("favourite")!=null){
			String[] favourite = request.getParameterValues("favourite");
			for(int i = 0;i<favourite.length;i++){
				out.println(favourite[i]+"&nbsp;&nbsp");
			}
			}
		%>
		<br>
	密码:<%=request.getAttribute("password") %><br>
	请求体的MIME类型<%=request.getContentType() %><br>
	协议类型及版本号:<%=request.getProtocol() %><br>
	服务器主机<%=request.getServerName() %><br>
	服务器端口号<%=request.getServerPort() %><br>
	请求文件长度<%=request.getContentLength() %><br>
	请求客户端IP地址<%=request.getRemoteAddr() %><br>
	请求的真实路径<%=request.getRealPath("request.jsp") %><br>	
	请求的上下文<%=request.getContextPath() %><br>
</body>
</html>