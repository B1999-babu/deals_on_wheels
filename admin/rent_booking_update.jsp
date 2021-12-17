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
String id=request.getParameter("id");
String a=request.getParameter("rc");
String b=request.getParameter("ci");
String c=request.getParameter("rb");
String d=request.getParameter("pl");
String e=request.getParameter("km");
String f=request.getParameter("tp");
int z=s.stm.executeUpdate("update rent_booking set rc_id='"+a+"',c_id='"+b+"',rb_date='"+c+"',place='"+d+"',total_km='"+e+"',total_price='"+f+"' where rb_id='"+id+"'");
%>
<script>
alert('Rent Booking updated');
document.location="rent_booking_view.jsp";
</script>
<%
}
%>