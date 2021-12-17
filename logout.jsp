<title>Loggingout...</title>
<%
session.removeAttribute("uname");
session.removeAttribute("utp");
session.invalidate();
%>
<script>
alert("Loggedout Successfully");
document.location="index.jsp";
</script>