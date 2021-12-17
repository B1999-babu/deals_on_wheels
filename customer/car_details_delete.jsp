<%
String chk=request.getParameter("id");
if(chk==null)
{
out.println("<script>history.back();</script>");
}
else
{
%>
<title>Deleted....</title>
<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("id");
int z=s.stm.executeUpdate("delete from car_details where cr_id='"+a+"'");
%>
<script>
alert(' Car details deleted');
document.location="car_details_view.jsp";
</script>
<%
}
%>