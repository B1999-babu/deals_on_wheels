<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
if(session.getAttribute("uname")!=null)
{
%>
<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String un=session.getAttribute("uname").toString();
ResultSet rs=s.stm.executeQuery("select * from login where username='"+un+"' and s_question='-' and s_answer='-'");
if(rs.next())
{
out.println("<script>alert('Please set Security details first for safty...');document.location='security_question_form.jsp';</script>");
}
else
{
%>
<%
  ResultSet rs3=s.stm.executeQuery("select count(f_id) as fr from  feedback where status='New'");
  rs3.next();
  int fr=rs3.getInt("fr");
  %> 
  <%
  ResultSet rs1=s.stm.executeQuery("select count(rc_id) as rcr from  rent_cars ");
  rs1.next();
  int rcr=rs1.getInt("rcr");
  %> 
  <%
  ResultSet rs2=s.stm.executeQuery("select count(cr_id) as cr from  car_details ");
  rs2.next();
  int cr=rs2.getInt("cr");
  %>
<%
  ResultSet rs4=s.stm.executeQuery("select count(c_id) as cur from  customer_details ");
  rs4.next();
  int cur=rs4.getInt("cur");
  %>

<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
  <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Customer Dashboard</h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <a href="#"><span class="icon-box bg-color-green set-icon">
                    <i class="fa fa-users"></i>
                </span></a>
                <div class="text-box" >
                   <p class="main-text">
					<%=cur%>
				  </p>
                    <p class="main-text" style="font-size:18px">Users</p>
                </div>
             </div>
		     </div>
			 
			  <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <a href="car_details.jsp"><span class="icon-box bg-color-brown set-icon">
                    <i class="fa fa-list"></i>
                </span></a>
                <div class="text-box" >
                   <p class="main-text">
					<%=cr%>
				  </p>
                    <p class="main-text" style="font-size:18px">Used Cars</p>
                </div>
             </div>
		     </div>
			 
			  <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <a href="rent_cars.jsp"><span class="icon-box bg-color-red set-icon">
                    <i class="fa fa-list"></i>
                </span></a>
                <div class="text-box" >
                   <p class="main-text">
					<%=rcr%>
				  </p>
                    <p class="main-text" style="font-size:18px">Rent Cars</p>
                </div>
             </div>
		     </div>
			 
			  <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <a href="feedback_view.jsp"><span class="icon-box bg-color-blue set-icon">
                    <i class="fa fa-bell"></i>
                </span></a>
                <div class="text-box" >
                   <p class="main-text">
					<%=fr%>
				  </p>
                    <p class="main-text" style="font-size:18px">Feedbacks</p>
                </div>
             </div>
		     </div>
			 
			 <div align="center"><img src="../wfs_temp/img/img.jpg" width="90%"/></div>
                   
			</div>
                 <!-- /. ROW  -->
                 
                                   
<jsp:include page="footer.jsp"></jsp:include>
<% } %>
<%
}
else
{
out.println("<script>alert('Your Session Expired');history.back();</script>");
}
%>
