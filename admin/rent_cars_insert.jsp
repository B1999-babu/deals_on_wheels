<%
String chk=request.getParameter("Submit");
if(chk==null)
{
out.println("<script>history.back();</script>");
}
else
{
%>
<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("cn");
String  b=request.getParameter("ct");
String c=request.getParameter("no");
//String d=request.getParameter("pt");
String e=request.getParameter("ow");
String f=request.getParameter("st");
String g=request.getParameter("km");

int z=s.stm.executeUpdate("insert into rent_cars values(null,'"+a+"','"+b+"','"+c+"','noimg.jpg','"+e+"','"+f+"','"+g+"')");
%>
<script>
alert('Rent Car Details Inserted');
document.location="rent_cars_select_photo.jsp";


</script>
<%
}
%>