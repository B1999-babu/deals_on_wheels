<jsp:include page="metatag.jsp"></jsp:include>
<jsp:include page="headertag.jsp"></jsp:include>
<!--/main-banner-->
    <div class="w3l-main-slider position-relative" id="home">
        <div class="w3l-bannerhny-content">
            <div class="container">
                <div class="w3l-bannerhny-info">
                    <h3 class="mb-md-5 mb-4">
                        Secured Login</h3>
                    <div class="banner-form-w3">
                        <!--/Request-a-call-form -->
                        <form action="logchk.jsp" method="post">
                            <div class="form-style-w3ls">
                                <div class="form-gd">
                                    <label for="input_from">Username</label>
                                    <input type="text" name="uname" placeholder="Enter Username" required="required">
                                </div>
                                <div class="form-gd">
                                    <label for="input_from">Password</label>
                                    <input type="password" name="pass" placeholder="Enter Password" required="required">
                                </div>
                                <div class="form-gd" style="margin-top:15%;">
                                    <!-- <label for="input_from">Submit</label> -->
                                    <button class="btn btn-style btn-primary"> Login</button>
                                </div>
                            </div>
                        </form>
                        <div class="form-footer mt-3">
                            <span class="info">
                                <b>
                                    <a class="scroll" href="#contact">New Registration</a>
                                </b>
                                | <a href="fpass1.jsp">Forgot Password</a>
                            </span>
                        </div>
                        <!-- //Request-a-call-form -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--//main-banner-->



    <!--/contact-->
    <section id="contact" class="contact">
        <div class="container">
            <div class="section-title">
			</br></br>
                <h6 class="title-subw3hny mb-2"><span>Customer Registration</span></h6>
                <h3 class="title-w3l mb-2">Create a free account today</h3>
            </div>
           

                <div class="col-lg-12 mt-lg-0 mt-5" data-aos="fade-up"
     data-aos-duration="3000">
	 <jsp:include page="val.jsp"></jsp:include>
                    <form id="WFS_Riz" action="cust_reg.jsp" method="post" role="form" class="php-email-form">
                        <div class="row">
                            <div class="col form-group">
                                <input type="text" class="validate[required,custom[onlyLetter]] form-control" name="fn"  placeholder="First Name" >
                            </div>
                            <div class="col form-group">
                                <input type="text" class="validate[required,custom[onlyLetter]] form-control" name="ln"  placeholder="Last Name" >
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="text" class="validate[required,custom[onlyNumber]] form-control" name="mn"  placeholder="Mobile">
                        </div>
						 <div class="form-group">
                            <input type="text" class="validate[required,custom[email]] form-control" name="ei"   placeholder="Email" >
                        </div>
                        <div class="form-group">
                            <textarea name="ct" class="validate[required] form-control"   placeholder="City / Address" ></textarea>
                        </div>
                        <div class="w3lhny-submit text-right">
                            <button type="submit" class="btn btn-primary btn-style ">Register</button>
                        </div>

                    </form>
                </div>

            </div>
           
        </div>
    </section>
    <!--//contact-->

<jsp:include page="footertag.jsp"></jsp:include>