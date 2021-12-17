<%
String chk=request.getParameter("Submit");
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
<jsp:getProperty name="s" property="conn"/>
<%
String id=request.getParameter("id");
String a=request.getParameter("cn");
String  b=request.getParameter("ct");
String c=request.getParameter("no");
//String d=request.getParameter("pt");
String e=request.getParameter("ow");
String f=request.getParameter("st");
String g=request.getParameter("km");

int z=s.stm.executeUpdate("update rent_cars set car_name='"+a+"',car_type='"+b+"',car_number='"+c+"',car_photo='noimg.jpg',car_owner='"+e+"',car_status='"+f+"',car_kmprice='"+g+"' where rc_id='"+id+"'");
%>
<script>
alert('data updated');
document.location="rent_cars_view.jsp";


</script>
<%
}
%>