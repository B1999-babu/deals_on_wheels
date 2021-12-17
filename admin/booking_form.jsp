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
<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<jsp:include page="val.jsp"></jsp:include>

      <%@page import="java.text.*"%>
	  <%@page import="java.util.*"%>
      <%@page import="java.util.Date"%>
	  <%
	    // Today
		SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
		Date d1=new Date(); 
		sd.setTimeZone(TimeZone.getTimeZone("IST"));
		String td=sd.format(d1);
		
		// Current Time
		//SimpleDateFormat st = new SimpleDateFormat("hh:mm:ss");
		//st.setTimeZone(TimeZone.getTimeZone("IST"));
		//String tm=st.format(d1);
		//out.println(tm);
		
		// Adter 10 Days
		SimpleDateFormat sd1 = new SimpleDateFormat("yyyy-MM-dd");
		Date md1=new Date(); 
		int td1=md1.getDate();
		md1.setDate(td1+9);
		sd1.setTimeZone(TimeZone.getTimeZone("IST"));
		String max=sd1.format(md1);
	  %>
	  
<form id="WFS_Riz" name="form1" method="post" action="booking_insert.jsp">
   <div><label>Customer</label>
	  <select class="validate[required] form-control" style="width:90%" name="cui" id="cui">
	  <option value="">-- Select Customer --</option>
	  <%
	  ResultSet rs=s.stm.executeQuery("select * from customer_details");
	  while(rs.next())
	  {
	  %>
	  <option value="<%=rs.getInt("c_id")%>"><%=rs.getString("c_fname")+" "+rs.getString("c_lname")%></option>
	  <% }  %>
	  </select>
	  </div></br>
	  
	 <div><label>Car</label>
	  <select class="validate[required]  form-control" style="width:90%" style="width:90%" name="ci" id="ci">
	  <option value="">-- Select Car --</option>
	  <%
	  ResultSet rs1=s.stm.executeQuery("select * from car_details");
	  while(rs1.next())
	  {
	  %>
	  <option value="<%=rs1.getInt("cr_id")%>" title="Model:<%=rs1.getString("cr_model")%> Fule: <%=rs1.getString("cr_fueltype")%>"><%=rs1.getString("cr_name")%></option>
	  <% }  %>
	  </select>
	  </div></br>
	  
	 <div><label>Booking Date</label>
      <input name="bd" class="form-control" style="width:90%" value="<%=td%>" readonly="" type="text" id="bd">
    </div></br>
	  
	 <div><label>Appoinment Date</label>
	<input name="ad" class="form-control" style="width:90%" required min="<%=td%>" max="<%=max%>" type="date" id="ad">
	</div></br>
	  
	 <div><label>Appoinment Time</label>
	<input name="at" class="form-control" style="width:90%" required type="time" id="at">
   </div></br>
	  
	 <div><label>Status</label>
   <input name="st" class="form-control" style="width:90%" value="Requested" readonly="" type="text" id="st">
     </div></br>
	 
     <div align="center">
        <input type="submit" class="btn btn-primary" name="Submit" value="Submit">
        <input type="reset" class="btn btn-default" name="Reset" value="Reset">
      </div>
</form>
<jsp:include page="footer.jsp"></jsp:include>
