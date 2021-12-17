<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Rent Cars Details</h2>   
                        
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
<jsp:getProperty name="s" property="conn"/>'
<jsp:include page="val.jsp"></jsp:include>
<% 
String a=request.getParameter("id");
ResultSet rs=s.stm.executeQuery("select * from rent_cars where rc_id='"+a+"'");
rs.next();
%>
<form id="WFS_Riz" name="form1" method="post" action="rent_cars_update.jsp">
<input name="id" type="hidden" value="<%=a%>">
  <table width="400" border="2" align="center">
   <div><label>Car Name </label>
       <input class="validate[required,custom[onlyLetter]] form-control" style="width:90% " name="cn" value="<%=rs.getString("car_name")%>" type="text" id="cn"> 
     </div></br>
    <div><label>Car Type </label>
       <input class="validate[required] form-control" style="width:90%" name="ct" value="<%=rs.getString("car_type")%>" type="text" id="ct"> 
     </div></br>
    <div><label>Car Number </label>
      <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="no" value="<%=rs.getString("car_number")%>" type="text" id="no"> 
    </div></br>
   
    <div><label>Car Owner </label>
       <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="ow" value="<%=rs.getString("car_owner")%>" type="text" id="ow"> 
     </div></br>
    <div><label>Status </label>
       <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="st" value="<%=rs.getString("car_status")%>" type="text" id="st"> 
     </div></br>
    <div><label>Per KM Price </label>
      <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="km" value="<%=rs.getString("car_kmprice")%>" type="text" id="km"> 
     </div></br>
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