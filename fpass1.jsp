<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Forgot Password</h2>   
                        
                    </div>
                </div>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Forgot Password</title>
</head>

<body>
<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="fpass2.jsp">
  <div><label>Username</label>
      <input name="un" class="validate[required] form-control" style="width:90% " type="text" id="un">
    </div></br>
   
     <div align="center">
        <input type="submit" class="btn btn-primary" name="Submit" value="Next">
      </div> 
</form>
</body>
</html>
<jsp:include page="footer.jsp"></jsp:include>