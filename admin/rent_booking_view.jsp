<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Rent Request</h2>   
                       
                    </div>
                </div>
				<div class="row">
                <div class="col-md-12">
   <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Rent Request
                        </div>
	<div class="panel-body">
	<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
	<thead>
  <tr>
    <th><div align="center"><strong>Sl No. </strong></div></th>
    <th><div align="center"><strong>Rent Car Id </strong></div></th>
    <th><div align="center"><strong>Customer Id </strong></div></th>
    <th><div align="center"><strong>Rent Booking Date </strong></div></th>
    <th><div align="center"><strong>Place</strong></div></th>
    <th><div align="center"><strong>Total KM </strong></div></th>
    <th><div align="center"><strong>Total Price </strong></div></th>
	 <th><div align="center"><strong>Status</strong></div></th>
     <th><div align="center"><strong>Action</strong></div></th>
  </tr>
  </thead>
  <tbody>
  <%@page import="java.sql.*"%>
  <%@page import="wheels.dbconnect"%>
  <jsp:useBean id="s" class="wheels.dbconnect"/>
  <jsp:getProperty name="s" property="conn"/>
  <%
  int sl=0;
  ResultSet rs=s.stm.executeQuery("select * from rent_booking r,rent_cars rc,customer_details c where r.rc_id=rc.rc_id and r.c_id=c.c_id");
  while(rs.next())
  {
  sl++;
  int rbid=rs.getInt("rb_id");
  String sts=rs.getString("r_status");
  %>
  <tr>
    <td><div align="center"><%=sl%></div></td>
    <td><div align="center"><%=rs.getString("car_name")+" "+rs.getString("car_type")%></div></td>
    <td><div align="center"><%=rs.getString("c_fname")+" "+rs.getString("c_lname")%></div></td>
    <td><div align="center"><%=rs.getString("rb_date")%></div></td>
    <td><div align="center"><%=rs.getString("place")%></div></td>
    <td><div align="center"><%=rs.getString("total_km")%></div></td>
    <td><div align="center"><%=rs.getString("total_price")%></div></td>
    <% if(sts.equals("requested")) { %>
	<td><div align="center"><font color="#0033FF" size="3">Requested</font></div></td>
	<td><div align="center"><a onClick="return confirm('Are you sure?')" href="rent_req.jsp?rbid=<%=rbid%>&pr=acpt" class="btn btn-success btn-sm">Accept</a> <a onClick="return confirm('Are you sure?')" href="rent_req.jsp?rbid=<%=rbid%>&pr=rjct" class="btn btn-danger btn-sm">Reject</a></div></td>
	<% } else if(sts.equals("accepted")) { %>
	<td><div align="center"><font color="#00CC00" size="3">Accepted</font></div></td>
	<td><div align="center">-</div></td>
	<% } else { %>
	<td><div align="center"><font color="#FF0000" size="3">Rejected</font></div></td>
	<td><div align="center">-</div></td>
	<% } %>
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
