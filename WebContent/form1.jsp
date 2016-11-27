<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- Creating simple HTML Form -->
<!-- The action command controls what URL the form goes to when the data is submitted -->
<!-- Here not using domain name as the / is relative to the file path. Hence when uploading -->
<!-- the web application to server it won't crash but will load the file relative from the location path -->
<form action="/Forms/Controller" method= "post">

<!-- With forms ALWAYS use POSt instead of GET unless you want users to send parameters across via the URL -->

<input type="text" name="user" />
<input type="text" name="password" />

<input type="submit" value="OK" />

</form>


</body>
</html>