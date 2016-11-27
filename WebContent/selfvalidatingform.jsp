<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="user1" class="beans.User" scope="session"></jsp:useBean>
	<jsp:setProperty name="user1" property="*" />

	<%
		//Fetching parameter action to allow the user to submit the form
		String action = request.getParameter("action");

		//Only validate if the form has actually been submitted
		if (action != null && action.equals("formsubmit")) {
			if (user1.validate()) {
				request.getRequestDispatcher("/Controller").forward(
						request, response);
			}
		}
	%>


	<!-- If validation fails then print message. Wrapping in header. -->
	<h2><jsp:getProperty property="message" name="user1" /></h2>

	<!-- Making this submit to itself to allow self validation. -->
	<form action="/Forms/selfvalidatingform.jsp" method="post">

		<!-- With forms ALWAYS use POST instead of GET unless you want users to send parameters across via the URL -->

		<input type="hidden" name="action" value="formsubmit" /> 
		<input type="text" name="email" value="<jsp:getProperty name="user1" property="email" />" /><br /> 
		<input type="text" name="password" value="<jsp:getProperty name="user1" property="password" />" /><br />

		<input type="submit" value="OK" />

	</form>

</body>
</html>