

<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("fn");
String b=request.getParameter("ln");
String c=request.getParameter("mn");
String d=request.getParameter("ei");
String e=request.getParameter("ct");
//String f=request.getParameter("pt");

ResultSet rs=s.stm.executeQuery("select * from customer_details where c_mobile='"+c+"' or c_email='"+d+"'");
if(rs.next())
{
out.println("<script>alert('Mobile No. & Email already exists');document.location='cust_regf.jsp';</script>");

}
else
{
int z=s.stm.executeUpdate("insert into customer_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','usr.png')");
int z1=s.stm.executeUpdate("insert into login values('"+d+"','"+c+"','customer','-','-','active')");
%>
<script>
alert("You've Registred Successfully");
alert("Username: <%=d%> & Password: Reg. Mobile No.");
document.location="index.jsp";
</script>
<%
}

%>