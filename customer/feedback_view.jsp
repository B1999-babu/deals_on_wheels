<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2> Feedbacks</h2>   
                       
                    </div>
                </div>
				<div class="row">
                <div class="col-md-12">
<%@page import="java.sql.*"%>
  <%@page import="wheels.dbconnect"%>
  <jsp:useBean id="s" class="wheels.dbconnect"/>
  <jsp:getProperty name="s" property="conn"/>
  <%
  String un=session.getAttribute("uname").toString();
  ResultSet rs1=s.stm.executeQuery("select * from feedback where f_from='"+un+"'");
  %>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Feedbacks <% if(rs1.next()) { } else { %> | <a class="btn btn-success" href="feedback_form.jsp"><i class="fa fa-plus"></i> Send New</a> <% } %>
                        </div>
	<div class="panel-body">
	<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
	<thead>
  <tr>
    <th width="102" height="26"><div align="center"><strong>Sl No.</strong></div></th>
    <th width="133"><div align="center"><strong>Feedback From </strong></div></th>
    <th width="127"><div align="center"><strong>Feedback</strong></div></th>
    <th width="126"><div align="center"><strong>Sent Date </strong></div></th>
    <th width="127"><div align="center"><strong>Status</strong></div></th>
  
  </tr>
  </thead>
  <tbody>
  <%
  int sl=0;
  ResultSet rs=s.stm.executeQuery("select * from feedback f,customer_details c where f.f_from=c.c_email");
  while(rs.next())
  {
  sl++;
  int fid=rs.getInt("f_id");
  %>
  <tr>
    <td><div align="center"><%=sl%></div></td>
    <td><div align="center"><%=rs.getString("c_fname")+" "+rs.getString("c_lname")%></div></td>
    <td><div align="center"><%=rs.getString("feedback")%></div></td>
    <td><div align="center"><%=rs.getString("s_date")%></div></td>
    <td><div align="center"><%=rs.getString("status")%></div></td>
    
  </tr>
  <%
  }
  %>
</tbody>
                </table>
              </div>
                      </div>
                    </div>
                     <!-- End  Kitchen Sink -->
				  </div>
   
    </div>
<jsp:include page="footer.jsp"></jsp:include>

