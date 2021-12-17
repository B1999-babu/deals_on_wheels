<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String un=request.getParameter("un");
String sq=request.getParameter("sq");
String an=request.getParameter("an");
ResultSet rs=s.stm.executeQuery("select * from login where username='"+un+"' and s_question='"+sq+"' and s_answer='"+an+"'");
if(rs.next())
{
%>
<form name="form1" method="post" action="resetpassword.jsp">
  <input id="un" type="hidden" value="<%=un%>" name="un">
  <table width="328" border="2" align="center">
    <tr>
      <td colspan="2"><div align="center"><strong>Reset Your Password</strong></div></td>
    </tr>
    <tr>
      <td>New Password </td>
      <td><input name="np" type="password" id="np"></td>
    </tr>
    <tr>
      <td width="127">Confirm Password</td>
      <td width="183"><input name="cp" type="password" id="cp"></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
          <input type="submit" name="Submit" value="Reset Password">
      </div></td>
    </tr>
  </table>
</form>
<%
}
else
{
out.println("<script>alert('Invalid Answer');history.back();</script>");
}
%>
