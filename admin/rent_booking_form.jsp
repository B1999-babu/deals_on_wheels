<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
                      <div id="page-inner">
			          <div class="row">
                    <div class="col-md-12">
                     <h2>Rent Booking Details</h2>   
                        
                    </div>
                </div>
<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<jsp:include page="val.jsp"></jsp:include>

<form id="WFS_Riz" name="form1" method="post" action="rent_booking_insert.jsp">
  <table width="400" border="2" align="center">
    <div><label>Rent Car Id</label>
       <select class="validate[required] form-control" style="width:90% " name="rc"  id="rc">
	  <option value="">--Select car--</option>
	  <%
	  ResultSet rs=s.stm.executeQuery("select * from rent_cars");
	  while(rs.next())
	  {
	  %>
	  <option value="<%=rs.getInt("rc_id")%>"><%=rs.getString("car_name")+" "+rs.getString("car_type")%></option>
	  <% }  %>
	  </select>
	   </div><br>
     <div><label>Customer Id </label>
      <select class="validate[required] form-control" style="width:90% " name="ci"  id="ci">
	  <option value="">--select customer--</option>
	  <%
	  ResultSet rs1=s.stm.executeQuery("select * from customer_details");
	  while(rs1.next())
	  {
	  %>
	  <option value="<%=rs1.getInt("c_id")%>"><%=rs1.getString("c_fname")+" "+rs1.getString("c_lname")%></option>
	  <% } %>
	  </select>
	   </div><br>
	<%@page import="java.util.Date"%>
	<%
	Date d=new Date();
	int today=d.getDate();
	d.setDate(today-1);
	int dd,mm,yy;
	dd=d.getDate();
	mm=d.getMonth()+1;
	yy=d.getYear()+1900;
	String dt=yy+"-"+mm+"-"+dd;
	%>
    <div><label>Rent booking Date</label>
       <input name="rb" required class=" form-control" style="width:90% type="date" min="<%=dt%>" id="rb"> 
    </div><br>
	<div><label>Place</label>
       <input class="validate[required,custom[onlyLetter]] form-control" style="width:90% " name="pl" type="text" id="pl"> 
     </div><br>
	<div><label>Total KM</label>
      <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="km" type="text" id="km"> 
     </div><br>
	<div><label>Totaln Price</label>
       <input class="validate[required,custom[onlyNumber]] form-control" style="width:90% " name="tp" type="text" id="tp"> 
   </div><br>
   <div align="center">
        <input type="submit" class="btn btn-success" name="Submit" value="Submit">
        <input type="reset" class="btn btn-primary" name="Reset" value="Reset">
      </div> 
    
  </table>
</form>
<jsp:include page="footer.jsp"></jsp:include>