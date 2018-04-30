<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글작성</title>
</head>
<body>
<%
String userNo = request.getParameter("userNo");
%>

<form action="BoardInsert" method="post">
<input type="text" name ="title" placeholder ="제목을 작성하세요.">
<input type="text" name ="content" placeholder ="내용을 작성하세요.">
<input type="hidden" name="regUser" value="<%=userNo%>">
<input type="submit" value ="작성">
</form>
</body>
</html>