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
String id=request.getParameter("cid");
String g=request.getParameter("cui");
String a=request.getParameter("ci");
String b=request.getParameter("bd");
String c=request.getParameter("ad");
String d=request.getParameter("at");
String e=request.getParameter("st");
int z=s.stm.executeUpdate("update booking set c_id='"+g+"',cr_id='"+a+"',b_date='"+b+"',apointment_date='"+c+"',apointment_time='"+d+"',status='"+e+"' where b_id='"+id+"'");
%>
<script>

alert('Booking Details updated');
document.location="booking_view.jsp";
</script>
<%
}
%>