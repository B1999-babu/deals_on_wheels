<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Change Profile Picture</h2>   
                        
                    </div>
                </div>
<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" enctype="multipart/form-data" action="customer_details_upload_photo.jsp">
  
      <div><label>Photo </label>
      <input class="validate[required] form-control" style="width:90% " name="pt" type="file" id="pt"> 
   </div><br>
       <div align="center">
         <input name="submit" class="btn btn-success"  type="submit" value="Upload">
        <input type="reset" class="btn btn-primary" name="Reset" value="Reset">
      </div> <br>
     
 
</form>
<jsp:include page="footer.jsp"></jsp:include>
