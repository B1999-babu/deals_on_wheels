<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String id=request.getParameter("rbid");
String pr=request.getParameter("pr");
if(pr.equals("acpt"))
{
  int z=s.stm.executeUpdate("update rent_booking set r_status='accepted' where rb_id='"+id+"'");
  response.sendRedirect("rent_booking_view.jsp");
}
else if(pr.equals("rjct"))
{
 int z=s.stm.executeUpdate("update rent_booking set r_status='rejected' where rb_id='"+id+"'");
  response.sendRedirect("rent_booking_view.jsp");
}
else
{
out.println("<script>history.back();</script>");
}
%>