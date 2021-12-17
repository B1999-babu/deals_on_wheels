<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2> Cars Details</h2>    
                    </div>
                </div>
<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<jsp:useBean id="ss" class="wheels.dbconnect"/>
<jsp:getProperty name="ss" property="conn"/>
<%
String cid=request.getParameter("cid");
ResultSet rs=s.stm.executeQuery("select * from  rent_cars where rc_id='"+cid+"'"); 
rs.next();
%>
				<div class="row">
                <div class="col-md-12">
   <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Cars Details | <a class="btn btn-primary" href="rent_cars.jsp"><i class="fa fa-arrow-left"></i> Back</a>
                        </div>
	<div class="panel-body">
	<div class="table-responsive">
	<table width="100%" class="table table-striped table-bordered table-hover">
	<thead>
    <tr>
      <th width="50%"><div align="center"><strong>Look & Design</strong></div></th>
      <th width="50%"><div align="center"><strong> Details </strong></div></th>
    </tr>
	</thead>
	<tbody>
    <tr>
      <td><div align="center"><a href="rent_cars_view_photo.jsp?cid=<%=cid%>"><img src="../uploads/<%=rs.getString("car_photo")%>" width="100%"/></a></td>
	   <td>
	<table width="100%" class="table table-striped table-bordered table-hover">
  <tr>
    <td>Name</td>
    <td><%=rs.getString("car_name")%></td>
  </tr>
  <tr>
    <td>Type</td>
    <td><%=rs.getString("car_type")%></td>
  </tr>
  <tr>
    <td>Reg. No.</td>
    <td><%=rs.getString("car_number")%></td>
  </tr>
  <tr>
    <td>Owners</td>
    <td><%=rs.getString("car_owner")%></td>
  </tr>
  <tr>
    <td>Price per KM</td>
    <td><%=rs.getString("car_kmprice")%></td>
  </tr>
   <tr>
    <td>Status</td>
    <td><%=rs.getString("car_status")%></td>
  </tr>
</table>
<div align="center"><a onclick="return confirm('Do you really want to proceed..?')" href="rent_booking_form.jsp?cid=<%=cid%>" class="btn btn-success">Request Now</a></div>
</td>
    </tr>
</tbody>
                                </table>
                      </div>
                        </div>
                    </div>
                     <!-- End  Kitchen Sink -->
					  </div>
   
    </div>
<jsp:include page="footer.jsp"></jsp:include>

