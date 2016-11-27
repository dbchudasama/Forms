<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- Making this the action of a form. The parameter details entered in the form will be passed -->
<!-- into this bean and then this bean will make it available to other jsp pages in the Web App -->
<form action="/Forms/formhandler.jsp" method= "post">

<!-- With forms ALWAYS use POST instead of GET unless you want users to send parameters across via the URL -->

<input type="text" name="user" /><br/>
<input type="text" name="password" /><br/>

<input type="submit" value="OK" />

</form>

</body>
</html>