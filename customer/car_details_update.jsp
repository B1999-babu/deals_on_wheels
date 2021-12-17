<%
String chk=request.getParameter("Submit");
if(chk==null)
{
out.println("<script>history.back();</script>");
}
else
{
%>
<title>Updating...</title>
<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String cid=request.getParameter("id");
String a=request.getParameter("na");
String b=request.getParameter("mo");
String c=request.getParameter("ft");
String d=request.getParameter("no");
String e=request.getParameter("p1");
String f=request.getParameter("p2");
String g=request.getParameter("reg");
String h=request.getParameter("tr");
String i=request.getParameter("pr");
String j=request.getParameter("fp");
String k=request.getParameter("st");

int z=s.stm.executeUpdate("update car_details set cr_name='"+a+"',cr_model='"+b+"',cr_fueltype='"+c+"',cr_no_of_owners='"+d+"',cr_photo1='"+e+"',cr_photo2='"+f+"',cr_regno='"+g+"',cr_total_running='"+h+"',cr_price='"+i+"',cr_final_price='"+j+"',cr_status='"+k+"' where cr_id='"+cid+"'");

%>
<script>
alert(' Car details updated');
document.location="car_details_view.jsp";
</script>
<%
}
%>