<%@page import ="java.sql.*"%>
<%
String name  = request.getParameter("name");
String EOP = request.getParameter("email");
String password=request.getParameter("password");
String cpassword=request.getParameter("cpassword");


try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vedant","root","root");
	Statement st=con.createStatement();	
	
	st.executeUpdate("insert into user(name,EOP,password,cpassword) values('"+name+"','"+EOP+"','"+password+"','"+cpassword+"')");
	response.sendRedirect("page2.html");
	
	}

catch(Exception e)
{
	response.sendRedirect("error.html");
}
%>