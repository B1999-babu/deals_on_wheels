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
ResultSet rs=s.stm.executeQuery("select * from rent_booking where rb_id='"+a+"'");
rs.next();
%>

<form id="WFS_Riz" name="form1" method="post" action="rent_booking_update.jsp">
<input name="id" type="hidden" value="<%=a%>">
  <table width="400" border="1" align="center">
    <div><label>Rent Car Id</label>
       <select class="validate[required] form-control" style="width:90% " name="rc" id="rc">
	  <option value="">--Select Rent car--</option>
	  <%
	  ResultSet rs1=ss.stm.executeQuery("select * from rent_cars");
	  while(rs1.next())
	  {
	  %>
	  <option value="<%=rs1.getInt("rc_id")%>"><%=rs1.getString("car_name")%></option>
	  <% } %>
	  </select>
	  </div><br>
       <div><label>Customer Id </label>
       <select class="validate[required] form-control" style="width:90%" name="ci" id="ci">
	  <option value="" >--Select Customer--</option>
	  <%
	  ResultSet rs2=ss.stm.executeQuery("select * from customer_details");
	  while(rs2.next())
	  {
	  %>
	  <option value="<%=rs2.getInt("c_id")%>"><%=rs2.getString("c_fname")+" "+rs2.getString("c_lname")%></option>
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
    <div><label>Rent Booking Date</label>
         <input name="rb" value="<%=rs.getString("rb_date")%>" min="<%=dt%>" required class=" form-control" style="width:90%" type="date" id="rb"> 
    </div><br>
       <div><label>Place</label>
       <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="pl" value="<%=rs.getString("place")%>" type="text" id="pl"> 
    </div><br>
       <div><label>Total KM </label>
      <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="km" value="<%=rs.getString("total_km")%>" type="text" id="km"> 
    </div><br>
       <div><label>Total Price</label>
       <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="tp" value="<%=rs.getString("total_price")%>"  type="text" id="tp"> 
    </div><br>
       <div align="center">
        <input type="submit" class="btn btn-success" name="Submit" value="Submit">
        <input type="reset" class="btn btn-primary" name="Reset" value="Reset">
      </div></br>
     
  </table>
</form>
<%
}
%>
<jsp:include page="footer.jsp"></jsp:include>