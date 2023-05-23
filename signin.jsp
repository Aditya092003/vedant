<%@page import ="java.sql.*"%>
<%


String EOP=request.getParameter("email");
String password = request.getParameter("password");
ResultSet rs = null;
String alert=null;

try{
	
 
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/vedant","root","root");
	Statement st=con.createStatement();
	
	String SQL="select * from user where EOP = '"+EOP+"' AND password = '"+password+"' ";
	rs = st.executeQuery(SQL);
	 
	
	if(rs.next())
	{
		response.sendRedirect("page2.html");
	}
	else
	{
		%>
		<script>
		alert("Invalid Credentials");
		window.location= "index.html";		
		</script>	
	
		<%
		
		
	}	
}


catch(Exception e)
{
 	response.sendRedirect("error.html");
}
%>