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
int z=s.stm.executeUpdate("delete from feedback where f_id='"+a+"'");
%>
<script>
alert('Feedback deleted');
document.location="feedback_view.jsp";
</script>
<%
}
%>