<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- Using class 'User' -->
<jsp:useBean id="user" class="beans.User" scope="session"></jsp:useBean>

<!-- If we have a parameter named either user or password this will result in a match. Hence '*' -->
<!-- This file will set these parameter values to these parameters. -->
<jsp:setProperty property="*" name="user"/>

User name: <%= user.getEmail() %>
Password: <%= user.getPassword() %>

</body>
</html>