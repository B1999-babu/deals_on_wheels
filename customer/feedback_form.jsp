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
<%
String un=session.getAttribute("uname").toString();
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
	  
<form id="WFS_Riz" name="form1" method="post" action="feedback_insert.jsp">
      <div><label>Feedback From </label>
       <input type="text" value="<%=un%>" readonly="" class="validate[required] form-control" style="width:90% " name="ff"  id="ff">
	  </div></br>
      <div><label>Feedback </label>
        <textarea name="fb" rows="4" class="validate[required] form-control" id="fb" style="width:90% "></textarea> 
      </div></br>
      
	  <div><label>Sent Date </label>
      <input class="form-control" style="width:90%" name="sd" required type="text" value="<%=td%>" readonly="" id="sd"> 
      </div></br>
      
	  <div align="center">
        <input type="submit" class="btn btn-success" name="Submit" value="Submit">
        <input type="reset" class="btn btn-primary" name="Reset" value="Reset">
      </div> 
     
</form>
<jsp:include page="footer.jsp"></jsp:include>