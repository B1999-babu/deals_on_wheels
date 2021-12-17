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
<%
String un=session.getAttribute("uname").toString();
String rcid=request.getParameter("cid");

%>
 <%@page import="java.text.*"%>
	  <%@page import="java.util.*"%>
      <%@page import="java.util.Date"%>
	  <%
	    // Today
		SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
		Date d1=new Date(); 
		sd.setTimeZone(TimeZone.getTimeZone("IST"));
		String td=sd.format(d1);
		%>
<form id="WFS_Riz" name="form1" method="post" action="rent_booking_insert.jsp">
  <table width="400" border="2" align="center">
    <div><label>Rent Car Id</label>
       <input class="validate[required] form-control" style="width:90% " value="<%=rcid%>" readonly="" type="text" name="rc"  id="rc">
	  
	   </div><br>
     <div><label>Customer Id </label>
      <select class="validate[required] form-control" readonly style="width:90% " name="ci"  id="ci">
	  <!-- <option value="">--select customer--</option> -->
	  <%
	  ResultSet rs1=s.stm.executeQuery("select * from customer_details where c_email='"+un+"'");
	  while(rs1.next())
	  {
	  %>
	  <option value="<%=rs1.getInt("c_id")%>"><%=rs1.getString("c_fname")+" "+rs1.getString("c_lname")%></option>
	  <% } %>
	  </select>
	   </div><br>
	 
    <div><label>Rent booking Date</label>
       <input name="rb" required class="form-control" style="width:90%" type="date" min="<%=td%>" id="rb"> 
    </div><br>
	<div><label>Place</label>
       <input class="validate[required,custom[onlyLetter]] form-control" style="width:90% " name="pl" type="text" id="pl"> 
     </div><br>
	<div><label>Total KM</label>
      <input class="validate[required,custom[onlyNumber]] form-control" maxlength="3" style="width:90%" name="km" type="text" id="km"> 
     </div><br>
	
   <div align="center">
        <input type="submit" class="btn btn-success" name="Submit" value="Submit">
        <input type="reset" class="btn btn-primary" name="Reset" value="Reset">
      </div> 
    
  </table>
</form>
<jsp:include page="footer.jsp"></jsp:include>