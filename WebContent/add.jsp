<%@page import="java.sql.*" %>

<%@page import="java.io.*" %>

<%@page import="javax.sql.*" %>

<%@page import="java.sql.Connection" %>

<%

String username=request.getParameter("username");

String password=request.getParameter("password");

String firstname=request.getParameter("firstname");

String lastname=request.getParameter("lastname");

String address=request.getParameter("address");

String pincode=request.getParameter("pincode");

String phonenumber=request.getParameter("phonenumber");

Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection
("jdbc:mysql://localhost:3306/db","root","root");

Statement st=con.createStatement();

String sql="insert into info (username,password,firstname,lastname,address,pincode,phonenumber) values('"+username+"','"+password+"','"+firstname+"','"+lastname+"','"+address+"','"+pincode+"','"+phonenumber+"')";
try
{
st.executeUpdate(sql);
boolean flag=true;
if(flag==true)
{
out.println("Added");
}
else
{
out.println("Not possible : error!");
}
}
catch(Exception e)
{
out.println("Exception");
}
response.sendRedirect("show.html");
%>