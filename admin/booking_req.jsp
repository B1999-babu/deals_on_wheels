<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String id=request.getParameter("bid");
String pr=request.getParameter("pr");
if(pr.equals("acpt"))
{
int z=s.stm.executeUpdate("update booking set status='Accepted' where b_id='"+id+"'");
response.sendRedirect("booking_view.jsp");

}
else if(pr.equals("rjct"))
{
int z=s.stm.executeUpdate("update booking set status='Rejected' where b_id='"+id+"'");
response.sendRedirect("booking_view.jsp");
}
else
{
out.println("<script>history.back();</script>");
}
%>