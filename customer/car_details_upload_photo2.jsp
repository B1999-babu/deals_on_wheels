<%@page import="java.io.*"%>

<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>

<%
String s1;
s1=request.getParameter("g_photolink");

 String saveFile="";
    String contentType = request.getContentType();
    if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
    DataInputStream in = new DataInputStream(request.getInputStream());
    int formDataLength = request.getContentLength();
    byte dataBytes[] = new byte[formDataLength];
    int byteRead = 0;
    int totalBytesRead = 0;
    while(totalBytesRead < formDataLength){
    byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
    totalBytesRead += byteRead;
   }
    String file = new String(dataBytes);
    saveFile = file.substring(file.indexOf("filename=\"") + 10);
    saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
    saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
    int lastIndex = contentType.lastIndexOf("=");
    String boundary = contentType.substring(lastIndex + 1,contentType.length());
    int pos;
    pos = file.indexOf("filename=\"");
    pos = file.indexOf("\n", pos) + 1;
    pos = file.indexOf("\n", pos) + 1;
    pos = file.indexOf("\n", pos) + 1;
    int boundaryLocation = file.indexOf(boundary, pos) - 4;
    int startPos = ((file.substring(0, pos)).getBytes()).length;
    int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
    File ff = new File(getServletContext().getRealPath("/")+"deals_on_wheels/uploads/"+saveFile);
    FileOutputStream fileOut = new FileOutputStream(ff);
    fileOut.write(dataBytes, startPos, (endPos - startPos));
    fileOut.flush();
	
	String cid=request.getParameter("cid");
	String pt=request.getParameter("pt");
	if(cid==null & pt==null)
	{
	
	ResultSet rs=s.stm.executeQuery("select max(cr_id) as mid from car_details");
    rs.next();
    int id=rs.getInt("mid");

//String r=session.getAttribute("r").toString();
	
	int k=s.stm.executeUpdate("update car_details set cr_photo2='"+saveFile+"' where cr_id='"+id+"'");
   
    fileOut.close();
	}
	else if(pt.equals("up"))
	{
	int k=s.stm.executeUpdate("update car_details set cr_photo2='"+saveFile+"' where cr_id='"+cid+"'");
   
    fileOut.close();
	out.println("<script>alert('Photo Changed Successfully');document.location='car_details_view.jsp';</script>");
    
  }

%>

<script>
alert("Photo Uploaded Successfully.");
document.location="car_details_view.jsp";
</script>
<%
}
%>