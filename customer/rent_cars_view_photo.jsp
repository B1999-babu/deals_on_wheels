<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Rent Cars Details</h2>   
                       
                    </div>
                </div>
				<div class="row">
                <div class="col-md-12">
  <%
   String cid=request.getParameter("cid");
  %>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Rent Cars Details | <a class="btn btn-primary" href="rent_car_view.jsp?cid=<%=cid%>"><i class="fa fa-arrow-left"></i> Back</a>
                        </div>
	<div class="panel-body">
	<div class="table-responsive">
	
  <%@page import="java.sql.*"%>
  <%@page import="wheels.dbconnect"%>
  <jsp:useBean id="s" class="wheels.dbconnect"/>
  <jsp:getProperty name="s" property="conn"/>
  <%
  ResultSet rs=s.stm.executeQuery("select * from rent_cars where rc_id='"+cid+"'");
  rs.next();
  int rcid=rs.getInt("rc_id");
  %>
     <div align="center">
    <img src="../uploads/<%=rs.getString("car_photo")%>" width="80%"/>
   </div> 
              </div>
                      </div>
                    </div>
                     <!-- End  Kitchen Sink -->
				  </div>
   
    </div>
<jsp:include page="footer.jsp"></jsp:include>