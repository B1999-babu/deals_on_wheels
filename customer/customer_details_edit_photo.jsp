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
<form id="WFS_Riz" name="form1" method="post" action="customer_details_upload_photo_edit.jsp">
<input name="cid" type="hidden" value="<%=a%>">
 
       <div><label>Photo</label>
       <input  class="validate[required] form-control" style="width:90%" name="pt" value="<%=rs.getString("c_photo")%>" type="file" id="pt"> 
    </div><br>
       <div align="center">
        <input type="submit" class="btn btn-success" name="Upload" value="Upload">
        <input type="reset" class="btn btn-primary" name="Reset" value="Reset">
      </div> <br>
     
  
</form>
<%
}
%>
<jsp:include page="footer.jsp"></jsp:include>