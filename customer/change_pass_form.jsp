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

   <form id="WFS_Riz" name="form1" method="post" action="changepass.jsp">
	 <div><label>Old Password</label>
   <input name="old" class="validate[required] form-control" style="width:90%"  type="password" id="old">
     </div></br>
	 <div><label>New Password</label>
   <input name="new" class="validate[required] form-control" style="width:90%"  type="password" id="new">
     </div></br>
	 <div><label>Confirm Password</label>
   <input name="con" class="validate[required] form-control" style="width:90%"  type="password" id="con">
     </div></br>
     <div align="center">
        <input type="submit" class="btn btn-primary" name="Submit" value="Submit">
        <input type="reset" class="btn btn-default" name="Reset" value="Reset">
      </div>
</form>
<jsp:include page="footer.jsp"></jsp:include>
