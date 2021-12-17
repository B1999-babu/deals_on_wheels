<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Cars For Rent</h2>   
                       
                    </div>
                </div>
				<div class="row">
                <div class="col-md-12">
   <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Cars For Rent
                        </div>
	<div class="panel-body">
	<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
	<thead>

  <tr>
    <th><div align="center"><strong>Sl No.</strong></div></th>
    <th><div align="center"><strong>Car Name </strong></div></th>
    <th><div align="center"><strong>Car Type </strong></div></th>
    <th><div align="center"><strong>Car Number </strong></div></th>
    <th><div align="center"><strong>Car Photo </strong></div></th>
    <th><div align="center"><strong>Car Owner </strong></div></th>
    <th><div align="center"><strong>Status </strong></div></th>
    <th><div align="center"><strong>KM Price </strong></div></th>
    
  </tr>
  </thead>
  <tbody>
  <%@page import="java.sql.*"%>
  <%@page import="wheels.dbconnect"%>
  <jsp:useBean id="s" class="wheels.dbconnect"/>
  <jsp:getProperty name="s" property="conn"/>
  <%
   int sl=0;
  ResultSet rs=s.stm.executeQuery("select * from rent_cars");
  while(rs.next())
 
  {
  sl++;
  int rcid=rs.getInt("rc_id");
  %>
  <tr>
    <td><div align="center"><%=sl%></div></td>
    <td><div align="center"><%=rs.getString("car_name")%></div></td>
    <td><div align="center"><%=rs.getString("car_type")%></div></td>
    <td><div align="center"><%=rs.getString("car_number")%></div></td>
    <td><div align="center"><a href="rent_cars_view_photo.jsp?id=<%=rcid%>"><img src="../uploads/<%=rs.getString("car_photo")%>" width="100px" height="100px"/></a></br><a href="rent_cars_select_photo.jsp?rid=<%=rcid%>">Change Photo</a></div></td>
    <td><div align="center"><%=rs.getString("car_owner")%></div></td>
    <td><div align="center"><%=rs.getString("car_status")%></div></td>
    <td><div align="center"><%=rs.getString("car_kmprice")%></div></td>
   
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