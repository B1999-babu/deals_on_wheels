<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String un=request.getParameter("un");
ResultSet rs=s.stm.executeQuery("select * from login where username='"+un+"' and status='active'");
if(rs.next())
{
%>
<form name="form1" method="post" action="fpassword3.jsp">
  <input id="un" type="hidden" value="<%=un%>" name="un">
  <table width="328" border="2" align="center">
    <tr>
      <td colspan="2"><div align="center"><strong>Validate Your info.. </strong></div></td>
    </tr>
    <tr>
      <td>Security Question </td>
      <td><input name="sq" type="text" value="<%=rs.getString("s_question")%>" readonly="" id="sq"></td>
    </tr>
    <tr>
      <td width="127">Answer</td>
      <td width="183"><input name="an" type="password" id="an"></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
          <input type="submit" name="Submit" value="Next">
      </div></td>
    </tr>
  </table>
</form>
<%
}
else
{
out.println("<script>alert('Username Not found..');document.location='fpassword1.jsp';</script>");
}
%>