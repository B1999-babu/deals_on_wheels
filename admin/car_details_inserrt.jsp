<%
String chk=request.getParameter("Submit");
if(chk==null)
{
out.println("<script>history.back();</script>");
}
else
{
%>
<title>Inserting...</title>
<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%

String a=request.getParameter("na");
String b=request.getParameter("mo");
String c=request.getParameter("ft");
String d=request.getParameter("no");
//String e=request.getParameter("p1");
//String f=request.getParameter("p2");
String g=request.getParameter("reg");
String h=request.getParameter("tr");
String i=request.getParameter("pr");
String j=request.getParameter("fp");
String k=request.getParameter("st");

int z=s.stm.executeUpdate("insert into car_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','noimg.jpg','noimg.jpg','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"')");
%>
<script>
alert('Car details inserted');
document.location="car_details_select_photo.jsp";
</script>
<%
}
%>