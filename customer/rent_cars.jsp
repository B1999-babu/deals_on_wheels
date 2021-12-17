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
				<div class="row">
                <div class="col-md-12">
   <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Cars Details
                        </div>
	<div class="panel-body">
	<div class="table-responsive">
	
						
				<%@page import="java.sql.*"%>
  <%@page import="wheels.dbconnect"%>
  <jsp:useBean id="s" class="wheels.dbconnect"/>
  <jsp:getProperty name="s" property="conn"/>
				
				<table class="table">
				<%
				int i=0;
                ResultSet rs=s.stm.executeQuery("select * from rent_cars where car_status='Available'");
				while(rs.next())
				{
				int rcid=rs.getInt("rc_id");
                String pt=rs.getString("car_photo");
				if(i%4==0)
				{
				%>
				<tr>					
					<td>
					<a href="rent_car_view.jsp?cid=<%=rcid%>"><img src="../uploads/<%=pt%>" width="200Px" height="200px"/></a>
					<p style="padding-top:4px"><b>Name: </b><%=rs.getString("car_name")%>
					</br>
					<b>Type: </b><%=rs.getString("car_type")%></p>				
					</td>
				<%
				}
				else
				{
				%>	
					<td>
					<a href="rent_car_view.jsp?cid=<%=rcid%>"><img src="../uploads/<%=pt%>" width="200Px" height="200px"/></a>
					<p style="padding-top:4px"><b>Name: </b><%=rs.getString("car_name")%>
					</br>
					<b>Type: </b><%=rs.getString("car_type")%></p>
					</td>
					<%
					}
					i++;
					}
					%>
				</tr>
				</table>
  
					   
					   
                            </div>
                        </div>
                    </div>
                     <!-- End  Kitchen Sink -->
					  </div>
   
    </div>
<jsp:include page="footer.jsp"></jsp:include>

