<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List" %>
<%@page import="com.shadab.tests.Students" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Date" %>

<!-- Page Directives --> 
<%@page import="java.util.ArrayList" %>
<%@ page session="true"%>
<%@ page isErrorPage="false"%>
<%@ page errorPage="Errors.jsp"%>
<%@ page isThreadSafe="false"%>
<%@ page buffer="5kb"%>
<%-- <%@ page extends="mypackage.SampleClass"%> --%>
<%@ page info="This is info text will be vailable on call of getServletInfo()"%>
<%@ page autoFlush="true"%>
<%@ page isELIgnored="true"%>

<!-- Include Directive -->
<%-- <%@include file="Errors.jsp"%> --%>

<!-- Taglib Directive -->

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show Students Detail</title>
</head>
<body>
<table border='1' width='100%'>
<tr><th>Id</th><th>Name</th><th>Password</th><th>Email</th><th>Branch</th><th>Edit</th><th>Delete</th></tr>
<%!

int myDeclaredVar=15;
public int showMyDeclaredVar(){
	//int ii=1/0;
	return myDeclaredVar+1000;
}
%>

<!-- Here is the scriplet tag-->
<%
List<Students> list=(List<Students>)request.getAttribute("stdentlist");


/* for(Students e:list){
	
	out.print("<tr><td>"+e.getId()+"</td><td>"+e.getName()+"</td><td>"+e.getPassword()+"</td><td>"+e.getEmail()+"</td><td>"+e.getBranch()+"</td><td><a href='StudentEdit?id="+e.getId()+"'>edit</a></td><td><a href='deletestudents?id="+e.getId()+"'>delete</a></td></tr>");

} */
 for(int i=0; i<list.size();i++){
	
	int id=list.get(i).getId();
	String name = list.get(i).getName();
	String password = list.get(i).getPassword();
	String email= list.get(i).getEmail();
	String branch= list.get(i).getBranch();
	 	
	%>
	 	
	 	<tr><td><%=id%></td><td><%=name %></td><td><%=password %></td><td><%=email %></td><td><%=branch %></td><td><a href='StudentEdit?id=<%=id %>'>edit</a></td><td><a href='deletestudents?id=<%=id%>'>delete</a></td></tr>
	 	
	 	<%
	 	} 
	 	%>

</table>
<br>
<div align="center">
<h3>Hello declared variable's value is:<%=myDeclaredVar %></h3>
<h3> Hello Value returned by method call is:<%=showMyDeclaredVar() %></h3>
</div>


<!-- Implicit Objects -->

<h1>Here are all impplicit objects</h1>

<%-- out object example --%>
<strong>Current Time is</strong>: <% out.print(new Date()); %><br><br>

<%-- request object example --%>
<strong>Request User-Agent</strong>: <%=request.getHeader("User-Agent") %><br><br>

<%-- response object example --%>
<%response.addCookie(new Cookie("Test","Value")); %>

<%-- config object example --%>
<%
request.getRequestDispatcher("/ConfigTest").include(request, response);
%>
<%-- application object example --%>
<strong>User context param value</strong>:<%=application.getInitParameter("User") %><br><br>

<%-- session object example --%>
<strong>User Session ID</strong>:<%=session.getId() %><br><br>

<%-- pageContext object example --%>
<% pageContext.setAttribute("myKey","mykey is 123",PageContext.PAGE_SCOPE); %>
<strong>PageContext attribute</strong>: {Name="myKey",Value="<%=pageContext.getAttribute("myKey") %>"}<br><br>

<%-- page object example --%>
<strong>Generated Servlet Name</strong>:<%=page.getClass().getName() %>


<!-- JSP Actions  -->

<h1>JSP Actions</h1>
1. Foward Action: <br>
<%-- <jsp:forward page="ForwardAccepter.jsp" >  
<jsp:param name="yorPage" value="forwardingPage" />  
</jsp:forward>  --%> 

2. Include Action: <br>

<jsp:include page="IncludeAccepter.jsp" >  
<jsp:param name="yorPage" value="forwardingPage" />  
</jsp:include>

3. UseBean/Set and Get properties<br>
<form action="jsp/ShowMyDetails.jsp" method="post"> 
Your Name: <input type="text" name="username"><br> 
Password: <input type="password" name="password"><br> 
Age: <input type="text" name="age"><br> 
<input type="submit" value="Go Ahead"> 
</form> 
4. Plugin Action: <br>
<jsp:plugin type="applet" code="AppletDemoForPlugin.class" codebase="com.shadab.tests"
width = "200" height = "200">
<jsp:fallback>
<p>Unable to load Applet in your browser</p>
</jsp:fallback>
</jsp:plugin>

<h1>JSP TL</h1>

<a href="jsp/JSTLExamples.jsp">Click me to see JSTL</a>


</body>
</html>