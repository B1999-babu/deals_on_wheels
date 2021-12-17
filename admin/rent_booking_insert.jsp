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
String a=request.getParameter("rc");

String b=request.getParameter("ci");
String c=request.getParameter("rb");
String d=request.getParameter("pl");
String e=request.getParameter("km");
String f=request.getParameter("tp");
int z=s.stm.executeUpdate("insert into rent_booking values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"')");
%>
<script>
alert('Rent Booking inserted');
document.location="rent_booking_view.jsp";
</script>
<%
}
%>