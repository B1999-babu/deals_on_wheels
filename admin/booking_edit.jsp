<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
                      <div id="page-inner">
			          <div class="row">
                    <div class="col-md-12">
                     <h2>Booking Details</h2>   
                        
                    </div>
                </div>

<%
String chk=request.getParameter("id");
if(chk==null)
{
out.println("<script>history.back();</script>");
}
else
{
%>
<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<jsp:useBean id="ss" class="wheels.dbconnect"/>
<jsp:getProperty name="ss" property="conn"/>
<jsp:include page="val.jsp"></jsp:include>
<%
String a=request.getParameter("id");
ResultSet rs=s.stm.executeQuery("select * from booking where b_id='"+a+"'");
rs.next();
%>
<form id="WFS_Riz" name="form1" method="post" action="booking_update.jsp">
<input name="cid" type="hidden" value="<%=a%>">
  <table width="400" border="1" align="center">
    
	
     <div><label>Customer ID</label>
      <select class="validate[required] form-control" style="width:90%"  name="cui" id="cui">
	  <option value="">--Select Customer--</option>
	  <%
	  ResultSet rs1=ss.stm.executeQuery("select * from customer_details");
	  while(rs1.next())
	  {
	  %>
	  <option  value="<%=rs1.getInt("c_id")%>"><%=rs1.getString("c_fname")+" "+rs1.getString("c_lname")%></option>
	  <% } %>
	  </select>
	 </div></br>
       <div><label>Car ID</label>
      <select class="validate[required] form-control" style="width:90%" name="ci" id="ci">
	<option value="">--Select Car--</option>
	<%
	ResultSet rs2=ss.stm.executeQuery("select * from car_details");
	while(rs2.next())
	{
	%>
	
	<option value="<%=rs2.getInt("cr_id")%>"><%=rs2.getString("cr_name")%></option>
	<% } %>
	  </select>
	</div></br>
       
	<%@page import="java.util.Date"%>
	<%
	Date d=new Date();
	int dd,mm,yy;
	dd=d.getDate(); mm=d.getMonth()+1;
	yy=d.getYear()+1900;
	String dt=yy+"-"+mm+"-"+dd;
	%>
    <div><label>Booking Date</label>
      <input name="bd" required class="form-control" style="width:90%" value="<%=dt%>"  readonly="" type="text" id="bd">
    </div></br>
      
	<%
	Date d1=new Date();
	int td=d1.getDate();
	d1.setDate(td+9);
	int dd1,mm1,yy1;
	dd1=d1.getDate(); mm1=d1.getMonth()+1;
	yy1=d1.getYear()+1900;
	String dt1=yy1+"-"+mm1+"-"+dd1;
	%>
	<%
	Date d2=new Date();
	int today=d2.getDate();
	d2.setDate(today-1);
	int dd2,mm2,yy2;
	dd2=d2.getDate(); mm2=d2.getMonth()+1;
	yy2=d2.getYear()+1900;
	String dt2=yy2+"-"+mm2+"-"+dd2;
	%>
    <div><label>Appointment Date</label>
     <input name="ad" required class="form-control" style="width:90%" value="<%=rs.getString("apointment_date")%>" max="<%=dt1%>" min="<%=dt2%>" type="date" id="ad">
   </div></br>
       <div><label>Appointment Time</label>
      <input name="at" required class="form-control" style="width:90%" value="<%=rs.getString("apointment_time")%>"   type="time" id="at">
    </div></br>
       <div><label>Status</label>
      <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="st" value="<%=rs.getString("status")%>" readonly=""  type="text" id="st">
     </div></br>
      <div align="center">
        <input type="submit" class="btn btn-success" name="Submit" value="Submit">
        <input type="reset" class="btn btn-default" name="Reset" value="Reset">
      </div>
    
  </table>
</form>
<%
}
%>
<jsp:include page="footer.jsp"></jsp:include>
