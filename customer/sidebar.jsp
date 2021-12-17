<%@page import="java.sql.*"%>
<%@page import="wheels.dbconnect"%>
<jsp:useBean id="s" class="wheels.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<jsp:include page="val.jsp"></jsp:include>
<%
String a=session.getAttribute("uname").toString();
ResultSet rs=s.stm.executeQuery("select * from customer_details where c_email='"+a+"'");
rs.next();
%>

           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="../uploads/<%=rs.getString("c_photo")%>" class="user-image img-responsive"/>
					<a href="customer_details_select_photo.jsp">Change Picture</a>
					</li>
				
					
                    <li>
                        <a href="home.jsp"><i class="fa fa-home"></i>Home</a>
                    </li>
					 <li> 
                        <a  href="my_profile.jsp"><i class="fa fa-edit"></i>My Profile</a>
                     </li>
					
					 <li> 
                        <a  href="car_details.jsp"><i class="fa fa-edit"></i>Used Cars</a>
                     </li>
					 
					  <li> 
                        <a  href="rent_cars.jsp"><i class="fa fa-edit"></i>Cars for Rent</a>
                     </li>
					 
					  <li> 
                        <a  href="booking_view.jsp"><i class="fa fa-edit"></i>Booking Request</a>
                     </li>
					<li> 
                        <a  href="rent_booking_view.jsp"><i class="fa fa-edit"></i>Rent Request</a>
                     </li>
					
					 
					  <li> 
                        <a  href="feedback_view.jsp"><i class="fa fa-edit"></i>Feedbacks</a>
                     </li>
					 
					  
					 
					 <li> 
                        <a  href="security_question_form.jsp"><i class="fa fa-lock"></i> Change Security Question?</a>
                     </li>
					 
					 <li> 
                        <a  href="change_pass_form.jsp"><i class="fa fa-key"></i>Change password</a>
                     </li>
					 
					 
					
					 <li> 
                        <a onClick="return confirm('Are you sure?')" href="../logout.jsp"><i class="fa fa-lock"></i>Logout</a>
                     </li>
                                        
					
                   
								
					</ul>
               
            </div>
            
        </nav> 