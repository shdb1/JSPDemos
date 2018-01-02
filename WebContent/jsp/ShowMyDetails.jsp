<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show Entered Details</title>
</head>
<body>
<jsp:useBean id="userDetails" class="com.shadab.tests.UserDetails"></jsp:useBean> 
<jsp:setProperty property="*" name="userDetails"/> 
You have entered below details:<br> 
Your Name: <jsp:getProperty property="username" name="userDetails"/><br> 
Your Password: <jsp:getProperty property="password" name="userDetails"/><br> 
Your Age: <jsp:getProperty property="age" name="userDetails" /><br>
Calculation of Your Double Age: <%= userDetails.getDoubleAge()%>
</body>
</html>