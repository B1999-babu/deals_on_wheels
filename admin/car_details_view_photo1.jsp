
<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Car Details</h2>   
                       
                    </div>
                </div>
				<div class="row">
                <div class="col-md-12">
   <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Car Details | <a class="btn btn-primary" href="car_details_view.jsp"><i class="fa fa-arrow-left"></i>Back</a>
                        </div>
	<div class="panel-body">
	<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
	
  <tbody>
  <%@page import="java.sql.*"%>
  <%@page import="wheels.dbconnect"%>
  <jsp:useBean id="s" class="wheels.dbconnect"/>
  <jsp:getProperty name="s" property="conn"/>
  <%
  String id=request.getParameter("id");
  ResultSet rs=s.stm.executeQuery("Select * from car_details where cr_id='"+id+"'");
  rs.next();
  int crid=rs.getInt("cr_id");
  %>
  <div align="center">
  
   <img src="../uploads/<%=rs.getString("cr_photo2")%>" width="80%" />
 </div>
              </div>
                      </div>
                    </div>
                     <!-- End  Kitchen Sink -->
				  </div>
   
    </div>
<jsp:include page="footer.jsp"></jsp:include>
