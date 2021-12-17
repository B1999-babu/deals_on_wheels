<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Customer Registration</h2>   
                        
                    </div>
                </div>
<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="cust_reg.jsp">
 
    
    <div><label>First Name</label>
       <input class="validate[required,custom[onlyLetter]] form-control" style="width:90% " name="fn" type="text" id="fn"> 
   </div><br>
      <div><label>Last Name </label>
       <input  class="validate[required,custom[onlyLetter]] form-control" style="width:90% " name="ln" type="text" id="ln"> 
    </div><br>
      <div><label>Mobile No. </label>
       <input class="validate[required,custom[mobile]] form-control" style="width:90% " name="mn" type="text" id="mn" maxlength="10"> 
   </div><br>
      <div><label>Email ID</label>
       <input class="validate[required,custom[email]] form-control" style="width:90% " name="ei" type="text" id="ei"> 
    </div><br>
      <div><label>City</label>
      <input class="validate[required,custom[onlyLetter]] form-control" style="width:90% " name="ct" type="text" id="ct"> 
       </div></br>
       <div align="center">
        <input type="submit" class="btn btn-success" name="Submit" value="Submit">
        <input type="reset" class="btn btn-primary" name="Reset" value="Reset">
      </div> <br>
     
 
</form>
<jsp:include page="footer.jsp"></jsp:include>
