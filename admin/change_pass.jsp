<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>ChangePassword</h2>   
                        
                    </div>
                </div>
<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<jsp:include page="val.jsp"></jsp:include>
	  
<form id="WFS_Riz" name="form1" method="post" action="changepass.jsp">
	  
	 <div><lable>Old Password</lable>
   <input name="opass" class="form-control validate[required]" style="width:90%" type="password" id="opass">
     </div></br>
	 
	 <div><lable>New Password</lable>
   <input name="npass" class="form-control validate[required]" style="width:90%" type="password" id="npass">
     </div></br>
	 
	 <div><lable>Confirm Password</lable>
   <input name="cpass" class="form-control validate[required]" style="width:90%" type="password" id="cpass">
     </div></br>
	 
     <div align="center">
        <input type="submit" class="btn btn-primary" name="Submit" value="Submit">
        <input type="reset" class="btn btn-default" name="Reset" value="Reset">
      </div>
</form>
<jsp:include page="footer.jsp"></jsp:include>
