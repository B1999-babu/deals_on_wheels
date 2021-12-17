<%
String chk=request.getParameter("Submit");
if(chk==null)
{
out.println("<script>history.back();</script>");
}
else
{
%>
<title>Updating...</title>
<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String id=request.getParameter("cid");
String a=request.getParameter("fn");
String b=request.getParameter("ln");
String c=request.getParameter("mn");
//String d=request.getParameter("ei");
String e=request.getParameter("ct");
//String f=request.getParameter("pt");
int z=s.stm.executeUpdate("update customer_details set c_fname='"+a+"',c_lname='"+b+"',c_mobile='"+c+"',c_city='"+e+"' where c_id='"+id+"'");
%>
<script>
alert('Profile Updated');
document.location="my_profile.jsp";
</script>
<%
}
%>