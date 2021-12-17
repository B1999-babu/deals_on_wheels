<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>My Profile</h2>   
                       
                    </div>
                </div>
				<div class="row">
                <div class="col-md-12">
   <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           My Profile | <a class="btn btn-success" href="customer_details_form.jsp"><i class="fa fa-plus"></i> Add New</a>
                        </div>
	<div class="panel-body">
	<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
	<thead>
  <tr>
    <th width="46"><div align="center"><strong>Sl No.</strong></div></th>
    <th width="118"><div align="center"><strong>First Name</strong></div></th>
    <th width="115"><div align="center"><strong>Last Name </strong></div></th>
    <th width="117"><div align="center"><strong>Mobile No. </strong></div></th>
    <th width="115"><div align="center"><strong>Email Id</strong></div></th>
    <th width="108"><div align="center"><strong>City</strong></div></th>
    <th width="103"><div align="center"><strong>Photo</strong></div></th>
    <th width="94"><div align="center"><strong>Action</strong></div></th>
  </tr>
  </thead>
  <tbody>
  <%@page import="java.sql.*"%>
  <%@page import="wheels.dbconnect"%>
  <jsp:useBean id="s" class="wheels.dbconnect"/>
  <jsp:getProperty name="s" property="conn"/>
  <%
  int sl=0;
  ResultSet rs=s.stm.executeQuery("select * from customer_details");
  while(rs.next())
  {
  sl++;
  int cid=rs.getInt("c_id");
  %>

  <tr>
    <td><div align="center"><%=sl%></div></td>
    <td><div align="center"><%=rs.getString("c_fname")%></div></td>
    <td><div align="center"><%=rs.getString("c_lname")%></div></td>
    <td><div align="center"><%=rs.getString("c_mobile")%></div></td>
    <td><div align="center"><%=rs.getString("c_email")%></div></td>
    <td><div align="center"><%=rs.getString("c_city")%></div></td>
    <td><div align="center"><a href="customer_details_view_photo.jsp?id=<%=cid%>"><img src="../uploads/<%=rs.getString("c_photo")%>" width="100px" height="100px"/></a></div></td>
    <td><div align="center"><a href="customer_details_edit.jsp?id=<%=cid%>"class="btn btn-success"><i class="fa fa-edit"></i></a>   <a onClick="return confirm('Are you sure?')" href="customer_details_delete.jsp?id=<%=cid%>" class="btn btn-danger">X</a> </div></td>
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

