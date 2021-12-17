<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Used Cars </h2>   
                       
                    </div>
                </div>
				<div class="row">
                <div class="col-md-12">
   <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Used Cars
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
                ResultSet rs=s.stm.executeQuery("select * from car_details where cr_status='Available'");
				while(rs.next())
				{
				int crid=rs.getInt("cr_id");
                String pt=rs.getString("cr_photo1");
				
				if(i%4==0)
				{
				%>
				<tr>					
					<td>
					<a href="car_details_view.jsp?crid=<%=crid%>"><img src="../uploads/<%=pt%>" width="200Px" height="200px"/></a>
					<p style="padding-top:4px"><b>Name: </b><%=rs.getString("cr_name")%>
					</br>
					<b>Model: </b><%=rs.getString("cr_model")%></br>
					<b>Price: </b><%=rs.getString("cr_price")%></p>				
					</td>
				<%
				}
				else
				{
				%>	
					<td>
					<a href="car_details_view.jsp?crid=<%=crid%>"><img src="../uploads/<%=pt%>" width="200Px" height="200px"/></a>
					<p style="padding-top:4px"><b>Name: </b><%=rs.getString("cr_name")%>
					</br>
					<b>Model: </b><%=rs.getString("cr_model")%></br>
					<b>Price: </b><%=rs.getString("cr_price")%></p>
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

