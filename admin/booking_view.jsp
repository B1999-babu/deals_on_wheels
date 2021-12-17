<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Booking Request</h2>   
                       
                    </div>
                </div>
				<div class="row">
                <div class="col-md-12">
   <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Booking Request 
                        </div>
	<div class="panel-body">
	<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
	<thead>
  <tr>
    <th width="50"><div align="center"><strong>Sl No. </strong></div></th>
	<th width="100"><div align="center"><strong>Customer  </strong></div></th>
    <th width="100"><div align="center"><strong>Car </strong></div></th>
    <th width="100"><div align="center"><strong>Booking Date </strong></div></th>
    <th width="110"><div align="center"><strong>Apointment Date </strong></div></th>
    <th width="110"><div align="center"><strong>Apointment Time </strong></div></th>
    <th width="90"><div align="center"><strong>Status</strong></div></th>
	<th width="120"><div align="center"><strong>Action</strong></div></th>
    
  </tr>
  </thead>
  <tbody>
  <%@page import="java.sql.*" %>
  <%@page import="wheels.dbconnect"%>
  <jsp:useBean id="s" class="wheels.dbconnect"/>
  <jsp:getProperty name="s" property="conn"/>
  <%
  int sl=0;
  String un=session.getAttribute("uname").toString();
 
  ResultSet rs=s.stm.executeQuery("select * from booking b,car_details c,customer_details cd where b.cr_id=c.cr_id and b.c_id=cd.c_id ");
  while(rs.next())
  {
  sl++;
  int bid=rs.getInt("b_id");
  String sts=rs.getString("status");
  %>
  
  <tr>
    <td><div align="center"><%=sl%></div></td>
	<td><div align="center"><%=rs.getString("c_fname")+" "+rs.getString("c_lname")%></div></td>
    <td><div align="center"><%=rs.getString("cr_name")%></div></td>
    <td><div align="center"><%=rs.getString("b_date")%></div></td>
    <td><div align="center"><%=rs.getString("apointment_date")%></div></td>
    <td><div align="center"><%=rs.getString("apointment_time")%></div></td>
	<%
	if(sts.equals("Requested"))
	{
	%>
    <td><div align="center"><font color="#0033FF" size="3">Requested</font></div></td>
	<td><div align="center"><a onClick="return confirm('Are You Sure?')" href="booking_req.jsp?bid=<%=bid%>&pr=acpt" class="btn btn-success btn-sm">Accept</a> <a href="booking_req.jsp?bid=<%=bid%>&pr=rjct" class="btn btn-danger btn-sm">Rejected</a></div></td>
	<%
	}
	else if(sts.equals("Accepted"))
	{
	%>
	<td><div align="center"><font color="#00CC00" size="3">Accepted</font></div></td>
	<td><div align="center">-</div></td>
	<%
	}
	else
	{
	%>
	<td><div align="center"><font color="#FF0000" size="3">Rejected</font></div></td>
	<td><div align="center">-</div></td>
	<%
	}
	%>
	
    
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
