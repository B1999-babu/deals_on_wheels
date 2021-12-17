
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
                           Car Details | <a class="btn btn-success" href="car_details_form.jsp"><i class="fa fa-plus"></i> Add New</a>
                        </div>
	<div class="panel-body">
	<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
	<thead>
  <tr>
    <th width="5%"> <div align="center"><strong>Sl No. </strong></div></th>
    <th width="7%"><div align="center"><strong>Name </strong></div></th>
    <th width="7%"><div align="center"><strong>Model </strong></div></th>
    <th width="7%"><div align="center"><strong>Fuel Type </strong></div></th>
    <th width="7%"><div align="center"><strong>Number Of Owners </strong></div></th>
    <th width="7%"><div align="center"><strong>Photo 1</strong></div></th>
    <th width="7%"><div align="center"><strong>Photo 2 </strong></div></th>
    <th width="100"><div align="center"><strong>Registration No. </strong></div></th>
    <th width="100"><div align="center"><strong>Total Running </strong></div></th>
    <th width="100"><div align="center"><strong>Price</strong></div></th>
    <th width="93"><div align="center"><strong>Final Price </strong></div></th>
    <th width="92"><div align="center"><strong>Status</strong></div></th>
    <th width="399"><div align="center"><strong>Action</strong></div></th>
  </tr>
  </thead>
  <tbody>
  <%@page import="java.sql.*"%>
  <%@page import="wheels.dbconnect"%>
  <jsp:useBean id="s" class="wheels.dbconnect"/>
  <jsp:getProperty name="s" property="conn"/>
  <%
  int sl=0;
  ResultSet rs=s.stm.executeQuery("Select * from car_details ");
  while(rs.next())
  {
  sl++;
  
  int crid=rs.getInt("cr_id");
  %>
  <tr>
    <td><div align="center"><%=sl%></div></th>
    <td><div align="center"><%=rs.getString("cr_name")%></div></td>
    <td><div align="center"><%=rs.getString("cr_model")%></div></td>
    <td><div align="center"><%=rs.getString("cr_fueltype")%></div></td>
    <td><div align="center"><%=rs.getString("cr_no_of_owners")%></div></td>
    <td><div align="center"><a href="car_details_view_photo.jsp?id=<%=crid%>"><img src="../uploads/<%=rs.getString("cr_photo1")%>" width="100px" height="100px"/></a></br><a href="car_details_select_photo.jsp?cid=<%=crid%>&pt=up">Change Photo</a></div></td>
    <td><div align="center"><a href="car_details_view_photo1.jsp?id=<%=crid%>"><img src="../uploads/<%=rs.getString("cr_photo2")%>" width="100px" height="100px"/></a></br><a href="car_details_select_photo2.jsp?cid=<%=crid%>&pt=up">Change Photo</a></div></td>
    <td><div align="center"><%=rs.getString("cr_regno")%></div></td>
    <td><div align="center"><%=rs.getString("cr_total_running")%></div></td>
    <td><div align="center"><%=rs.getString("cr_price")%></div></td>
    <td><div align="center"><%=rs.getString("cr_final_price")%></div></td>
    <td><div align="center"><%=rs.getString("cr_status")%></div></td>
    <td><div align="center">
      <a href="car_details_edit.jsp?id=<%=crid%>"class="btn btn-success"><i class="fa fa-edit" title="Edit"></i></a> <a onClick="return confirm('Are you sure?')" href="car_details_delete.jsp?id=<%=crid%>"class="btn btn-danger" title="Delete">X</a> </div></td>
  </tr>
  <%
  }
  %>
</tbody>
                </table>
              </div>
                      </div>
                    </div>
                     <!-- End  Kitchen Sink -->
				  </div>
   
    </div>
<jsp:include page="footer.jsp"></jsp:include>
