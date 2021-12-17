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
<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="car_details_inserrt.jsp">
  
      
      <div><label> Name </label>
      <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="na" type="text" id="na">
    </div></br>
       <div><label>Model </label>
      <input class="validate[required] form-control" style="width:90%" name="mo" type="text" id="mo">
   </div></br>
    
      <div><label> Fuel Type </label>
     <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="ft" type="text" id="ft">
     </div></br>
       <div><label>Number of owners </label>
      <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="no" type="text" id="no">
     </div></br>
       
       <div><label>Registration No.</label>
      <input class="validate[required] form-control" style="width:90%" name="reg" type="text" id="reg">
     </div></br>
       <div><label>Total Running </label>
      <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="tr" type="text" id="tr">
     </div></br>
       <div><label>Price</label>
     <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="pr" type="text" id="pr">
     </div></br>
       <div><label>Final Price</label>
     <input class="validate[required,custom[onlyNumber]]  form-control" style="width:90%" name="fp" type="text" id="fp">
    </div></br>
       <div><label>Status </label>
      <input class="validate[required] form-control" style="width:90%" name="st" type="text" id="st">
     </div></br>
     <div align="center">
        <input type="submit" class="btn btn-primary" name="Submit" value="Submit">
        <input type="reset" class="btn btn-default" name="Reset" value="Reset">
      </div>

</form>
<jsp:include page="footer.jsp"></jsp:include>