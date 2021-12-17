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
  ResultSet rs=s.stm.executeQuery("select count(c_id) as tc from customer_details");
  rs.next();
  int tc=rs.getInt("tc");
  %>
  <%
  ResultSet rs1=s.stm.executeQuery("select count(rb_id) as rbc from  rent_booking where r_status='Requested'");
  rs1.next();
  int rbc=rs1.getInt("rbc");
  %>
  <%
  ResultSet rs2=s.stm.executeQuery("select count(b_id) as br from  booking where status='Requested'");
  rs2.next();
  int br=rs2.getInt("br");
  %>
  <%
  ResultSet rs3=s.stm.executeQuery("select count(f_id) as fr from  feedback where status='New'");
  rs3.next();
  int fr=rs3.getInt("fr");
  %>     
<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
  <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Admin Dashboard</h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <a href="customer_details_view.jsp"><span class="icon-box bg-color-green set-icon">
                    <i class="fa fa-users"></i>
                </span></a>
                <div class="text-box" >
                   <p class="main-text">
					<%=tc%>
				  </p>
				  <p></p>
                    <p class="main-text" style="font-size:18px">Users</p>
                </div>
             </div>
		     </div>
			 
			  <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <a href="rent_booking_view.jsp"><span class="icon-box bg-color-brown set-icon">
                    <i class="fa fa-info"></i>
                </span></a>
                <div class="text-box" >
                   <p class="main-text">
					<%=rbc%>
				  </p>
				  <p></p>
                    <p class="main-text" style="font-size:18px">Rent Request</p>
                </div>
             </div>
		     </div>
			 
			  <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <a href="booking_view.jsp"><span class="icon-box bg-color-red set-icon">
                    <i class="fa fa-bell"></i>
                </span></a>
                <div class="text-box" >
                   <p class="main-text">
					<%=br%>
				  </p>
				  <p>
                    <p class="main-text" style="font-size:18px">Booking Request</p>
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
				  <p></p>
                    <p class="main-text" style="font-size:18px">Feedbacks</p>
                </div>
             </div>
		     </div>
			 
			 <div align="center"><img src="../wfs_temp/img/img.jpg" width="90%"/></div>
                   
			</div>
                 <!-- /. ROW  -->
                 
                                   
<jsp:include page="footer.jsp"></jsp:include>
<%
}
else
{
out.println("<script>alert('Your Session Expired');document.location='../index.jsp';</script>");
}
%>