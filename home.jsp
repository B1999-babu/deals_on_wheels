<%
//response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
//if(session.getAttribute("uname")!=null)
//{
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
                <a href="#"><span class="icon-box bg-color-green set-icon">
                    <i class="fa fa-users"></i>
                </span></a>
                <div class="text-box" >
                   <p class="main-text">
					0
				  </p>
                    <p class="main-text" style="font-size:18px">Users</p>
                </div>
             </div>
		     </div>
			 
			  <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <a href="#"><span class="icon-box bg-color-brown set-icon">
                    <i class="fa fa-info"></i>
                </span></a>
                <div class="text-box" >
                   <p class="main-text">
					0
				  </p>
                    <p class="main-text" style="font-size:18px">Cars</p>
                </div>
             </div>
		     </div>
			 
			  <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <a href="#"><span class="icon-box bg-color-red set-icon">
                    <i class="fa fa-bell"></i>
                </span></a>
                <div class="text-box" >
                   <p class="main-text">
					0
				  </p>
                    <p class="main-text" style="font-size:18px">Feedback</p>
                </div>
             </div>
		     </div>
			 
			  <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <a href="#"><span class="icon-box bg-color-blue set-icon">
                    <i class="fa fa-bullhorn"></i>
                </span></a>
                <div class="text-box" >
                   <p class="main-text">
					0
				  </p>
                    <p class="main-text" style="font-size:18px">Notice</p>
                </div>
             </div>
		     </div>
			 
			 <div align="center"><img src="../wfs_temp/img/img.jpg" width="90%"/></div>
                   
			</div>
                 <!-- /. ROW  -->
                 
                                   
<jsp:include page="footer.jsp"></jsp:include>
<%
//}
//else
//{
//out.println("<script>alert('Your Session Expired');document.location='../index.jsp';</script>");
//}
%>