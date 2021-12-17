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
String a=request.getParameter("fn");
String b=request.getParameter("ln");
String c=request.getParameter("mn");
String d=request.getParameter("ei");
String e=request.getParameter("ct");
//String f=request.getParameter("pt");
int z=s.stm.executeUpdate("insert into customer_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','noimg.jpg')");
%>
<script>
alert('Customer Details inserted');
document.location="customer_details_select_photo.jsp";
</script>
<%
}
%>