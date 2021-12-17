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
String a=request.getParameter("ff");
String b=request.getParameter("fb");
String c=request.getParameter("sd");
String d=request.getParameter("st");
int z=s.stm.executeUpdate("update feedback set f_from='"+a+"',feedback='"+b+"',s_date='"+c+"',status='"+d+"' where f_id='"+id+"'");
%>
<script>
alert('Feedback updated');
document.location="feedback_view.jsp";
</script>
<%
}
%>