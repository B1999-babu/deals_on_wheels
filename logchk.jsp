<title>Validating...</title>
<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String un=request.getParameter("uname");
String ps=request.getParameter("pass");
ResultSet rs=s.stm.executeQuery("select * from login where username='"+un+"' and password='"+ps+"' and status='active'");
if(rs.next())
{
String typ=rs.getString("utype");
session.setAttribute("uname",un);
if(typ.equals("admin"))
{
String tp="Admin";
session.setAttribute("utp",tp);
response.sendRedirect("admin/home.jsp");
}
else if(typ.equals("customer"))
{
String tp="Cust";
session.setAttribute("utp",tp);
response.sendRedirect("customer/home.jsp");
}
}
else
{
out.println("<script>alert('Invalid Username or Password');document.location='index.jsp';</script>");
}
%>