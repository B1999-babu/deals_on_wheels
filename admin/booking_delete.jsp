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
int z=s.stm.executeUpdate("delete from booking where b_id='"+a+"'");
%>
<script>
alert('Booking Detais Is deleted');
document.location="booking_view.jsp";
</script>
<%
}
%>