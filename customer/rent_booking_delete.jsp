<%
String chk=request.getParameter("id");
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
String a=request.getParameter("id");
int z=s.stm.executeUpdate("delete From rent_booking where rb_id='"+a+"'");
%>
<script>
alert('Rent Booking deleted');
document.location="rent_booking_view.jsp";
</script>
<%
}
%>