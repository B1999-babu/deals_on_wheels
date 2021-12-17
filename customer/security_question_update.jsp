<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String sq=request.getParameter("qu");
String an=request.getParameter("an");
String un=request.getParameter("un");
int z=s.stm.executeUpdate("update login set s_question='"+sq+"',s_answer='"+an+"' where username='"+un+"'");
%>
<script>
alert("Security Dertails Updated Successfully");
document.location="home.jsp";
</script>