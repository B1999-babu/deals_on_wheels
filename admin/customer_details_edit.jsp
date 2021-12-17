<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
                      <div id="page-inner">
			          <div class="row">
                    <div class="col-md-12">
                     <h2>Customer Details</h2>   
                        
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
<title>Editing...</title>
<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<jsp:include page="val.jsp"></jsp:include>
<%
String a=request.getParameter("id");
ResultSet rs=s.stm.executeQuery("select * from customer_details where c_id='"+a+"'");
rs.next();
%>
<form id="WFS_Riz" name="form1" method="post" action="customer_details_update.jsp">
<input name="cid" type="hidden" value="<%=a%>">
   
   
     <div><label>First Name</label>
      <input class="validate[required,custom[onlyLetter]] form-control" style="width:90% " name="fn" value="<%=rs.getString("c_fname")%>" type="text" id="fn">
    </div><br>
       <div><label>Last Name</label>
      <input  class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="ln" value="<%=rs.getString("c_lname")%>"type="text" id="ln"> 
   </div><br>
       <div><label>Mobile No.</label>
       <input  class="validate[required,custom[mobile]] form-control" style="width:90%" name="mn" value="<%=rs.getString("c_mobile")%>" type="text" id="mn"> 
    </div><br>
       <div><label>Email ID</label>
       <input  class="validate[required,custom[email]] form-control" style="width:90%" name="ei" value="<%=rs.getString("c_email")%>" type="text" id="ei"> 
   </div><br>
       <div><label>City</label>
      <input  class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="ct" value="<%=rs.getString("c_city")%>"type="text" id="ct"> 
    </div><br>
       
       <div align="center">
        <input type="submit" class="btn btn-success" name="Submit" value="Submit">
        <input type="reset" class="btn btn-primary" name="Reset" value="Reset">
      </div> <br>
     
   
</form>
<%
}
%>
<jsp:include page="footer.jsp"></jsp:include>