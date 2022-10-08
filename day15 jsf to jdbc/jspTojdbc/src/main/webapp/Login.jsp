<%@page import="com.infinite.jspTojdbc.EmployDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="Login.jsp">
<center>
User Name:
<input type="text" name="username"/><br/><br/>
Password:
<input type="text" name="passcode"/><br/><br/>
<input type="submit" value="Login"/>
</center>
</form>
<%
  if(request.getParameter("username")!=null&& 
  request.getParameter("passcode")!=null){
	  EmployDAO dao=new EmployDAO();
	  String user=request.getParameter("username");
	  String pwd=request.getParameter("passcode");
	  int count=dao.validate(user,pwd);
	  if(count==1){
	  
  
%>
<jsp:forward page="EmployTable.jsp"></jsp:forward>
<%
	  
	  } else{
		  out.println("invalid Credential...");
	  }
  }
%>
</body>
</html>