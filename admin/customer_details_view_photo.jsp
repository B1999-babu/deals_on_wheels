<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Customer Details</h2>   
                       
                    </div>
                </div>
				<div class="row">
                <div class="col-md-12">
   <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Customer Details | <a class="btn btn-primary" href="customer_details_view.jsp"><i class="fa fa-arrow-left"></i> Back</a>
                        </div>
	<div class="panel-body">
	<div class="table-responsive">
	
	
  <%@page import="java.sql.*"%>
  <%@page import="wheels.dbconnect"%>
  <jsp:useBean id="s" class="wheels.dbconnect"/>
  <jsp:getProperty name="s" property="conn"/>
  <%
  String id=request.getParameter("id");
  ResultSet rs=s.stm.executeQuery("select * from customer_details where c_id='"+id+"'");
  rs.next();
  
  int cid=rs.getInt("c_id");
  %>

 
   <img src="../uploads/<%=rs.getString("c_photo")%>" width="80%" />
    
              </div>
                      </div>
                    </div>
                     <!-- End  Kitchen Sink -->
				  </div>
   
    </div>
<jsp:include page="footer.jsp"></jsp:include>

