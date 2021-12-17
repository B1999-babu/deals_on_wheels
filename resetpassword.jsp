<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String un=request.getParameter("un");
String np=request.getParameter("np");
String cp=request.getParameter("cp");
if(np.equals(cp))
{
int z=s.stm.executeUpdate("update login set password='"+np+"' where username='"+un+"'");
out.println("<script>alert('Password Reset Successfully');document.location='index.jsp';</script>");
}
else
{
out.println("<script>alert('New Password & Confirm Passwors Does Not Matched');history.back();</script>");
}
%>
