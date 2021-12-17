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
int z=s.stm.executeUpdate("delete from rent_cars where rc_id='"+a+"'");
%>
<script>
alert('Rent Car Details deleted');
document.location="rent_cars_view.jsp";
</script>
<%
}
%>
