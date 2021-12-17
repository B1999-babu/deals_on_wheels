<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2> Used Cars</h2>    
                    </div>
                </div>
<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<jsp:useBean id="ss" class="wheels.dbconnect"/>
<jsp:getProperty name="ss" property="conn"/>
<%
String crid=request.getParameter("crid");
String pt=request.getParameter("pt");
ResultSet rs=s.stm.executeQuery("select * from car_details where cr_id='"+crid+"'"); 
rs.next();
String pht1=rs.getString("cr_photo1");
String pht2=rs.getString("cr_photo2");
%>

				<div class="row">
                <div class="col-md-12">
   <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Used Cars | <a class="btn btn-primary" href="car_details.jsp"><i class="fa fa-arrow-left"></i> Back</a>
                        </div>
	<div class="panel-body">
	<div class="table-responsive">
	<table width="100%" class="table table-striped table-bordered table-hover">
	<thead>
    <tr>
      <th colspan="2"><div align="center"><strong>Look & Design </strong></div>        <div align="center"><strong> </strong></div></th>
      </tr>
	</thead>
	<tbody>
    
    <tr>
      <td width="50%"><div align="center"><a href="car_details_view_photo.jsp?crid=<%=crid%>&pt=1"><img src="../uploads/<%=pht1%>" width="100%"/></a></div></td>
	   <td width="50%"><div align="center"><a href="car_details_view_photo.jsp?crid=<%=crid%>&pt=2"><img src="../uploads/<%=pht2%>" width="100%"/></a></div></td>
    </tr>
	
	<tr>
      <td colspan="2">
	<table width="100%" class="table table-striped table-bordered table-hover">
	<tr>
      <th colspan="2"><div align="center"><strong>Details</strong></div></th>
	  </tr>
    <tr>
      <td width="32%">Car Name</td>
      <td width="68%"><%=rs.getString("cr_name")%></td>
    </tr>
    <tr>
      <td>Model</td>
      <td><%=rs.getString("cr_model")%></td>
    </tr>
    <tr>
      <td>Fuel Type</td>
      <td><%=rs.getString("cr_fueltype")%></td>
    </tr>
    <tr>
      <td>Number Of Owners</td>
      <td><%=rs.getString("cr_no_of_owners")%></td>
    </tr>
    <tr>
      <td>Registration no.</td>
      <td><%=rs.getString("cr_regno")%></td>
    </tr>
     <tr>
      <td>Total Running</td>
      <td><%=rs.getString("cr_total_running")%></td>
    </tr>
    <tr>
      <td>Price</td>
      <td><%=rs.getString("cr_price")%></td>
    </tr>
  <tr>
      <td>Final Price</td>
      <td><%=rs.getString("cr_final_price")%></td>
    </tr>
  <tr>
      <td>Status</td>
      <td><%=rs.getString("cr_status")%></td>
    </tr>
  
  </table>	<div align="center"><a onclick="return confirm('Do you really want to proceed..?')" href="booking_form.jsp?crid=<%=crid%>" class="btn btn-success">Book Now</a></div></td>
	   </tr>
	
</tbody>
                                </table>
              </div>
                      </div>
                    </div>                     <!-- End  Kitchen Sink -->

				  </div>
   
    </div>
<jsp:include page="footer.jsp"></jsp:include>

