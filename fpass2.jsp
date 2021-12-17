<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Validate Your Info.</h2>   
                        
                    </div>
                </div>
<title>Forgot Password</title>
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
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="fpass3.jsp">
  <input name="un" type="hidden" value="<%=un%>" id="un">
  <div><label>Security Question </label>
      <input name="sq" type="text" class="form-control"  style="width:90% "  value="<%=rs.getString("s_question")%>" readonly="" id="sq"> 
    </div></br>
   <div><label>Answer</label>
       <input name="sa" class="validate[required] form-control" style="width:90% " type="password" id="sa"> 
    </div></br>
       <div align="center">
          <input type="submit" class="btn btn-primary"  name="Submit" value="Next">
      </div> 
</form>
</body>
</html>
<%
}
else
{
out.println("<script>alert('Username Not Found..!');document.location='fpass1.jsp';</script>");
}
%>
<jsp:include page="footer.jsp"></jsp:include>
