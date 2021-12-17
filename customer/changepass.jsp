<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String op=request.getParameter("old");
String np=request.getParameter("new");
String cp=request.getParameter("con");
String un=session.getAttribute("uname").toString();
ResultSet rs=s.stm.executeQuery("select * from login where password='"+op+"' and username='"+un+"'");
if(rs.next())
{
if(np.equals(cp))
{
int z=s.stm.executeUpdate("update login set password='"+np+"' where username='"+un+"'");
out.println("<script>alert('Password changed successfully');document.location='../logout.jsp';</script>");
}
else
{
out.println("<script>alert('Old Password and New Password does not matched');document.location='change_pass_form.jsp';</script>");
}

}
else
{
out.println("<script>alert('Old Password Does Not Matched');document.location='change_pass_form.jsp';</script>");
}
%>