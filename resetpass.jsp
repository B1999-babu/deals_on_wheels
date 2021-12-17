<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Booking Details</h2>   
                        
                    </div>
                </div>
<title>Processing...</title>
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
   out.println("<script>alert('Password Reset Successfully');document.location='login.jsp';</script>");
}
else
{
out.println("<script>alert('New Password & Confirm Password Does not Matched...');history.back();</script>");
}
%>
<jsp:include page="footer.jsp"></jsp:include>