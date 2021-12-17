<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
                      <div id="page-inner">
			          <div class="row">
                    <div class="col-md-12">
                     <h2>Feedback Details</h2>   
                        
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
ResultSet rs=s.stm.executeQuery("select * from feedback where f_id='"+a+"'");
rs.next();
%>
<form id="WFS_Riz" name="form1" method="post" action="feedback_update.jsp">
<input name="id" type="hidden" value="<%=a%>">
  <table width="400" border="2" align="center">
    
       <div><label>Feedback From</label>
       <select  class="validate[required] form-control" style="width:90% " name="ff"  id="ff">
	  <option value="">--Select Feedback From--</option>
	  <%
	  ResultSet rs3=ss.stm.executeQuery("select * from customer_details");
	  while(rs3.next())
	  {
	  %>
	  <option value="<%=rs3.getInt("c_id")%>"><%=rs3.getString("c_fname")+" "+rs3.getString("c_lname")%></option>
	  <% } %>
	  </select>
	  </div><br>
      <div><label>Feedback</label>
       <input  class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="fb" value="<%=rs.getString("feedback")%>" type="text" id="fb">  
    
	<%@page import="java.util.Date"%>
	<%
	Date d=new Date();
	int dd,mm,yy;
	dd=d.getDate();
	mm=d.getMonth()+1;
	yy=d.getYear()+1900;
	String dt=yy+"-"+mm+"-"+dd;
	%>
   </div><br>
      <div><label>Sent Date</label>
       <input name="sd"   class="form-control" style="width:90%" value="<%=dt%>" readonly="" type="date" id="sd"> 
    </div><br>
      <div><label>Status</label>
      <input name="st" value="requested" class="form-control" style="width:90%" readonly="" value="<%=rs.getString("status")%>"  type="text" id="st"> 
	  </div><br>
      <div align="center">
        <input type="submit" name="Submit" value="Submit">
        <input type="reset" name="Reset" value="Reset">
      </div><br>
     
  </table>
</form>
<%
}
%>
<jsp:include page="footer.jsp"></jsp:include>