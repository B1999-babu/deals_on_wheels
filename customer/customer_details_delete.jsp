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
int z=s.stm.executeUpdate("delete from customer_details where c_id='"+a+"'");
%>
<script>
alert('Customer Details deleted');
document.location="customer_details_view.jsp";
</script>
<%
}
%>