<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Car Details</h2>   
                        
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
<title>Editing....</title>
<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<jsp:include page="val.jsp"></jsp:include>
<%
String a=request.getParameter("id");
ResultSet rs=s.stm.executeQuery("select * from car_details where cr_id='"+a+"'");
rs.next();
%>
<form id="WFS_Riz" name="form1" method="post" action="car_details_update.jsp">
<input name="id" type="hidden" value="<%=a%>">
  <table>
    <div><label>Name</label>
     <input class="validate[required,custom[onlyLetter] form-control" style="width:90%"  name="na" value="<%=rs.getString("cr_name")%>" type="text" id="na">
    </div><br>
       <div><label>Model</label>
      <input class="validate[required] form-control" style="width:90%" name="mo"  value="<%=rs.getString("cr_model")%>"type="text" id="mo">
    </div><br>
       <div><label>Fuel Type</label>
      <input class="validate[required] form-control" style="width:90%" name="ft" value="<%=rs.getString("cr_fueltype")%>"type="text" id="ft">
    </div><br>
       <div><label>Number Of Owners</label>
     <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="no" value="<%=rs.getString("cr_no_of_owners")%>" type="text" id="no">
    </div><br>
       <div><label>Photo1</label>
       <input class="validate[required] form-control" style="width:90%" name="p1" value="<%=rs.getString("cr_photo1")%>"type="text" id="p1">
     </div><br>
       <div><label>Photo2</label>
       <input class="validate[required] form-control" style="width:90%" name="p2" value="<%=rs.getString("cr_photo2")%>" type="text" id="p2">
     </div><br>
       <div><label>Registration No.</label>
      <input class="validate[required] form-control" style="width:90%" name="reg" value="<%=rs.getString("cr_regno")%>" type="text" id="reg">
    </div><br>
       <div><label>Total Running</label>
       <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="tr" value="<%=rs.getString("cr_total_running")%>" type="text" id="tr">
     </div><br>
       <div><label>Price</label>
      <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="pr" value="<%=rs.getString("cr_price")%>" type="text" id="pr">
    </div><br>
       <div><label> Final Price</label>
      <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="fp" value="<%=rs.getString("cr_final_price")%>"type="text" id="fp">
     </div><br>
       <div><label>Status</label>
       <input class="validate[required] form-control" style="width:90%" name="st" value="<%=rs.getString("cr_status")%>" type="text" id="st">
    </div><br>
       <div align="center">
        <input type="submit" name="Submit" value="Submit">
        <input type="reset" name="Reset" value="Reset">
      </div>
    
  </table>
</form>
<%
}
%>
<jsp:include page="footer.jsp"></jsp:include>
