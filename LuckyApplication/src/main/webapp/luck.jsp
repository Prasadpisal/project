<%@ page import = "java.util.Random" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("name");
int num=Integer.parseInt(request.getParameter("num"));

Random random =new Random();
int luck=random.nextInt();
random.nextInt(10);
out.print("<center><h1>Welcome to my Luck center</h1>");
%>
Name:<%=name %><br>
Your Number:<%=num%>
Lucky Number:<%=luck %>
<%
if(num==luck)
	out.print("Guess is correct ...Congrates!!!!!!");
else{
	out.print("sorry better luck next time....");
}
%>
</body>
</html>