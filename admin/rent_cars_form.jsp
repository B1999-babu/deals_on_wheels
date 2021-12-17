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
<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="rent_cars_insert.jsp">
  <table width="400" border="2" align="center">
    <div><label>Car Name</label>
      <input class="validate[required,custom[onlyLetter]] form-control" style="width:90% " name="cn" type="text" id="cn"> 
    </div><br>
      <div><label>Car Type</label>
       <input class="validate[required] form-control" style="width:90%" name="ct" type="text" id="ct"> 
     </div><br>
      <div><label>Car Number</label>
       <input class="validate[required] form-control" style="width:90%" name="no" type="text" id="no"> 
     </div><br>
     
      <div><label>Car Owner</label>
      <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="ow" type="text" id="ow"> 
    </div><br>
      <div><label>Status</label>
       <input class="validate[required] form-control" style="width:90%" name="st" type="text" id="st"> 
     </div><br>
      <div><label>Per KM Price</label>
      <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="km" type="text" id="km"> 
     </div><br>
       <div align="center">
        <input type="submit" class="btn btn-success" name="Submit" value="Submit">
        <input type="reset" class="btn btn-primary" name="Reset" value="Reset">
      </div><br>
    
  </table>
</form>
<jsp:include page="footer.jsp"></jsp:include>