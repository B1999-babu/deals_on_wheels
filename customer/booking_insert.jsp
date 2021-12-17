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
String f=request.getParameter("cui");
String a=request.getParameter("ci");
String b=request.getParameter("bd");
String c=request.getParameter("ad");
String d=request.getParameter("at");
String e=request.getParameter("st");
int z=s.stm.executeUpdate("insert into booking values(null,'"+f+"','"+a+"','"+b+"','"+c+"','"+d+"','"+e+"')");
%>
<script>
alert('Booking Details is inserted');
document.location="booking_view.jsp";
</script>
<%
}
%>