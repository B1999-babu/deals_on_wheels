 <%@page import="java.sql.*"%>
  <%@page import="wheels.dbconnect"%>
  <jsp:useBean id="s" class="wheels.dbconnect"/>
  <jsp:getProperty name="s" property="conn"/>
  <%
  ResultSet rs=s.stm.executeQuery("select count(b_id) as tr from booking where status='Requested'");
  rs.next();
  int tbr=rs.getInt("tr");
  %>
   <%
  ResultSet rs1=s.stm.executeQuery("select count(rb_id) as rbc from  rent_booking where r_status='Requested'");
  rs1.next();
  int rbc=rs1.getInt("rbc");
  %>
  <%
  ResultSet rs3=s.stm.executeQuery("select count(f_id) as fr from  feedback where status='New'");
  rs3.next();
  int fr=rs3.getInt("fr");
  %> 
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="../wfs_temp/user/assets/img/find_user.png" class="user-image img-responsive"/>
					</li>
				
					
                    <li>
                        <a href="home.jsp"><i class="fa fa-home"></i>Home</a>
                    </li>
					
					
					 <li> 
                        <a  href="car_details_view.jsp"><i class="fa fa-edit"></i>Car Details</a>
                     </li>
					 
					  <li> 
                        <a  href="rent_cars_view.jsp"><i class="fa fa-edit"></i>Rent Car Details</a>
                     </li>
					 
					  <li> 
                        <a  href="booking_view.jsp"><i class="fa fa-edit"></i>Booking Request &nbsp;<font size="4" color="#FFFF00">[ <%=tbr%> ]</font></a>
                     </li>
					 <li> 
                        <a  href="rent_booking_view.jsp"><i class="fa fa-edit"></i>Rent Request &nbsp;<font size="4" color="#FFFF00">[ <%=rbc%> ]</font></a>
                     </li>
				
					 
					  <li> 
                        <a  href="feedback_view.jsp"><i class="fa fa-edit"></i>Feedbacks &nbsp; <font size="4" color="#FFFF00">[ <%=fr%> ]</font></a>
                     </li>
					   <li> 
                        <a  href="security_question_form.jsp"><i class="fa fa-lock"></i>Change Security Question?</a>
                     </li>
					 
					 
					 <li> 
                        <a  href="change_pass.jsp"><i class="fa fa-key"></i>Change password</a>
                     </li>
					 
					
					 
					
					 <li> 
                        <a onClick="return confirm('Are you sure?')" href="../logout.jsp"><i class="fa fa-lock"></i>Logout</a>
                     </li>
                                        
					
                   
								
					</ul>
               
            </div>
            
        </nav> 