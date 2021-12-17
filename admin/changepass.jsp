<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String op=request.getParameter("opass");
String np=request.getParameter("npass");
String cp=request.getParameter("cpass");
String un=session.getAttribute("uname").toString();

ResultSet rs=s.stm.executeQuery("select * from login where password='"+op+"' and username='"+un+"'");
if(rs.next())
{
   if(np.equals(cp))
   {
     int z=s.stm.executeUpdate("update login set password='"+np+"' where username='"+un+"'");
	 out.println("<script>alert('Password Changed Successfully');document.location='../logout.jsp';</script>");
   }
   else
   {
    out.println("<script>alert('New Password & Confirm Password Dose not Matched');document.location='change_pass.jsp';</script>");
   }
}
else
{
out.println("<script>alert('Old Password Does not Matched');document.location='change_pass.jsp';</script>");
}
%>