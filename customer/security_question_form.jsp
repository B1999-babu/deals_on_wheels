<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Security Details</h2>   
                        
                    </div>
                </div>
<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<jsp:include page="val.jsp"></jsp:include>

<%
String un=session.getAttribute("uname").toString();
ResultSet rs=s.stm.executeQuery("select * from login where username='"+un+"'");
rs.next();
String sq=rs.getString("s_question");
%>
<form id="WFS_Riz" name="form1" method="post" action="security_question_update.jsp">
<input type="hidden" value="<%=un%>" name="un"/>
   <div><lable>Security Question <font size="2" color="#993300">(Note: To Change Security Details Select Form the List and Enter New Answer below by errasing old.)</font></lable>
	  <select class="validate[required] form-control" style="width:90%" name="qu" id="qu">
	  <option><%=sq%></option>
	  <option value="">-- Select New Question --</option>
	  <option>Where did you born?</option> <option>Where did your parents meet first time?</option> <option>Which is your Fev.place for travel?</option>
	  <option>What is your first pet name?</option> <option>Which is your Fev. Dish to enjoy with friends?</option>
	  </select>
	  </div></br>
	  
	 <div><lable>Answer</lable>
   <input name="an" class="form-control" style="width:90%" value="<%=rs.getString("s_answer")%>"  type="text" id="an">
     </div></br>
	 
     <div align="center">
        <input type="submit" class="btn btn-primary" name="Submit" value="Submit">
        <input type="reset" class="btn btn-default" name="Reset" value="Reset">
      </div>
</form>
<jsp:include page="footer.jsp"></jsp:include>
