<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Reset Your Password</h2>   
                        
                    </div>
                </div>
<title>Forgot Password</title>
<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<jsp:include page="val.jsp"></jsp:include>
<%
String un=request.getParameter("un");
String qs=request.getParameter("sq");
String aw=request.getParameter("sa");
ResultSet rs=s.stm.executeQuery("select * from login where username='"+un+"' and s_question='"+qs+"' and s_answer='"+aw+"'");
if(rs.next())
{
%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<form id="WFS_Riz" name="form1" method="post" action="resetpass.jsp">
  <input name="un" type="hidden" value="<%=un%>" id="un">
  
      <div><label>New Password </label>
      <input name="np" class="validate[required] form-control" style="width:90% " type="password" id="np">
    </div></br>
    <div><label>Confirm Password</label>
      <input name="cp" class="validate[required] form-control" style="width:90% "  type="password" id="cp">
   </div></br>
      <div align="center">
          <input type="submit" class="btn btn-primary" name="Submit" value="Reset Password">
      </div>
</form>
</body>
</html>
<%
}
else
{
out.println("<script>alert('Invalid Answer');history.back();</script>");
}
%>
<jsp:include page="footer.jsp"></jsp:include>