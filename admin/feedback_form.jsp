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
<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="feedback_insert.jsp">
      <div><label>Feedback From </label>
       <select class="validate[required] form-control" style="width:90% " name="ff"  id="ff">
	  <option value="">-- Select --</option>
	  <%
	  ResultSet rs=s.stm.executeQuery("select * from customer_details");
	  while(rs.next())
	  {
	  %>
	  <option value="<%=rs.getInt("c_id")%>"><%=rs.getString("c_fname")+" "+rs.getString("c_lname")%></option>
	  <%
	  }
	  %>
	  </select>
	  </div></br>
      <div><label>Feedback </label>
      <input class="validate[required,custom[onlyLetter]] form-control" style="width:90% " name="fb" type="text" id="fb"> 
      </div></br>
      
	  <div><label>Sent Date </label>
      <input class="form-control" style="width:90%" name="sd" required   type="date" id="sd"> 
      </div></br>
	
      <div><label>Status </label>
      <input name="st" value="requested" class="form-control" style="width:90%" readonly="" type="text" id="st"> 
      </div></br>
      
	  <div align="center">
        <input type="submit" class="btn btn-success" name="Submit" value="Submit">
        <input type="reset" class="btn btn-primary" name="Reset" value="Reset">
      </div> 
     
</form>
<jsp:include page="footer.jsp"></jsp:include>