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
String a=request.getParameter("rc");

String b=request.getParameter("ci");
String c=request.getParameter("rb");
String d=request.getParameter("pl");
String e=request.getParameter("km");

ResultSet rs=s.stm.executeQuery("select car_kmprice as tprc from rent_cars where rc_id='"+a+"'");
rs.next();
int prc=rs.getInt("tprc"); // Price per KM

int tkm=Integer.parseInt(e); // Total KM

int rent_price=prc*tkm;

int z=s.stm.executeUpdate("insert into rent_booking values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+rent_price+"','requested')");
%>
<script>
alert('Rent Booking Request Sent');
document.location="rent_booking_view.jsp";
</script>
<%
}
%>