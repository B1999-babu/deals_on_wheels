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

<%
String cid=request.getParameter("cid");
String pt=request.getParameter("pt");
if(cid==null && cid==null)
{
%>
<form id="WFS_Riz" name="form1" method="post" enctype="multipart/form-data" action="car_details_upload_photo2.jsp">
<%
}
else
{
%>
<form id="WFS_Riz" name="form1" method="post" enctype="multipart/form-data" action="car_details_upload_photo2.jsp?cid=<%=cid%>&pt=up">
<%
}
%>
 
      
       <div><label>Photo2 </label>
     <input class="validate[required] form-control" style="width:90%" name="p2" type="file" id="p2">
     </div></br>
       
     <div align="center">
        <input type="submit" class="btn btn-primary" name="Upload" value="Upload">
        <input type="reset" class="btn btn-default" name="Reset" value="Reset">
      </div>
 
</form>
<jsp:include page="footer.jsp"></jsp:include>