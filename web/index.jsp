<%-- 
    Document   : index
    Created on : Jun 9, 2022, 12:37:07 PM
    Author     : HI
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

    <head>
        <jsp:useBean id="jo" class="sample.jobcategory.JobcategoryDAO" scope="request"></jsp:useBean>
        <jsp:useBean id="job" class="sample.job.JobDAO" scope="request"></jsp:useBean>

            <meta charset="utf-8">
            <meta http-equiv="x-ua-compatible" content="ie=edge">
            <title>Trang chủ</title>
            <meta name="description" content="">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="manifest" href="site.webmanifest">
            <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

            <!-- CSS here -->
            <link rel="stylesheet" href="assets/css/bootstrap.min.css">
            <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
            <link rel="stylesheet" href="assets/css/flaticon.css">
            <link rel="stylesheet" href="assets/css/price_rangs.css">
            <link rel="stylesheet" href="assets/css/slicknav.css">
            <link rel="stylesheet" href="assets/css/animate.min.css">
            <link rel="stylesheet" href="assets/css/magnific-popup.css">
            <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
            <link rel="stylesheet" href="assets/css/themify-icons.css">
            <link rel="stylesheet" href="assets/css/slick.css">
            <link rel="stylesheet" href="assets/css/nice-select.css">
            <link rel="stylesheet" href="assets/css/style.css">
        </head>

        <body>
            <!-- Preloader Start -->
            <div id="preloader-active">
                <div class="preloader d-flex align-items-center justify-content-center">
                    <div class="preloader-inner position-relative">
                        <div class="preloader-circle"></div>
                        <div class="preloader-img pere-text">
                            <img src="assets/img/logo/logo3.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <!-- Preloader Start -->
            <header>
                <!-- Header Start -->
                <div class="header-area header-transparrent">
                    <div class="headder-top header-sticky">
                        <div class="container">
                            <div class="row align-items-center">
                                <div class="col-lg-3 col-md-2">
                                    <!-- Logo -->
                                    <div class="logo">
                                        <a href="index.jsp"><img src="assets/img/logo/logo3.png" alt=""></a>
                                    </div>
                                </div>
                                <div class="col-lg-9 col-md-9">
                                    <div class="menu-wrapper">
                                        <!-- Main-menu -->
                                        <div class="main-menu">
                                            <nav class="d-none d-lg-block">
                                                <ul id="navigation">
                                                    <li><a href="index.jsp">Trang chủ</a></li>
                                                    <li><a href="/demoSWP/home?indexx=1">Tìm việc theo</a>
                                                        <ul class="submenu nav navbar navbar-left d-flex d-inline-flex" style="width: 700px;">
                                                            <li>
                                                                <strong>Khối văn phòng</strong>
                                                            <c:forEach items="${jo.listJobcate2}" var="y">
                                                                <a id="backa" href="category?idJobcate=${y.idJobcate}&nghe=${y.nameJobcate}">${y.nameJobcate}</a>
                                                            </c:forEach>
                                                        </li>
                                                        <li>
                                                            <strong>Kho, bãi</strong>
                                                            <c:forEach items="${jo.listJobcate1}" var="y">
                                                                <a id="backa" href="category?idJobcate=${y.idJobcate}&nghe=${y.nameJobcate}">${y.nameJobcate}</a>
                                                            </c:forEach>
                                                        </li>
                                                        <li>
                                                            <strong>Việc theo hình thức</strong>
                                                            <c:forEach items="${jo.listJobcate3}" var="y">
                                                                <a id="backa" href="category?idJobcate=${y.idJobcate}&nghe=${y.nameJobcate}">${y.nameJobcate}</a>
                                                            </c:forEach>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li><a href="contract.jsp">Hỗ trợ</a></li>
                                            </ul>
                                        </nav>
                                    </div>
                                    <!-- Header-btn -->
                                    <div class="header-btn d-none f-right d-lg-block">
                                        <a class="btn head-btn2" data-toggle="modal" data-target="#loginModal">Kết
                                            quả ứng tuyển</a>
                                    </div>
                                    <div id="loginModal" class="modal fade" role="dialog">
                                        <div class="modal-dialog modal-lg" role="content">
                                            <!-- Modal content-->
                                            <div class="modal-content" style="width: 70%">
                                                <div class="modal-header">
                                                    <h4 class="modal-title">Vui lòng nhập theo thông tin dưới đây</h4>
                                                    <button type="button" class="close"
                                                            data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <form action="result" method="post">
                                                        <div class="form-row justify-content-between">
                                                            <div class="form-group col-sm-3" style="flex:0 0 70%; max-width: 70%">
                                                                <label class="sr-only" for="exampleInputEmail3">Email</label>
                                                                <input type="text" name="txtemail"
                                                                       class="form-control form-control-sm mr-1"
                                                                       id="exampleInputEmail3" placeholder="Email">
                                                            </div>
                                                            <!--<div class="form-group col-sm-3">
                                                                <label class="sr-only" for="exampleInputPassword3">Số điện
                                                                    thoại</label>
                                                                <input type="text" name="txtphone"
                                                                       class="form-control form-control-sm mr-1"
                                                                       id="exampleInputPassword3" placeholder="Số điện thoại">
                                                            </div>-->
                                                            <button type="submit" class="btn btn-primary btn-sm ml-1">Tra cứu</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Mobile Menu -->
                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Header End -->
        </header>
        <main>

            <!-- slider Area Start-->
            <div class="slider-area ">
                <!-- Mobile Menu -->
                <div class="slider-active">
                    <div class="single-slider slider-height d-flex align-items-center"
                         data-background="assets/img/hero/background.png">
                        <div class="container">
                            <div class="row">
                                <div class="col-xl-6 col-lg-9 col-md-10">
                                    <div class="hero__caption">
                                        <h1>Có ${job.listJob.size()} việc làm đang chờ bạn</h1>
                                    </div>
                                </div>
                            </div>
                            <!-- Search Box -->
                            <div class="row">
                                <div class="col-xl-8">
                                    <!-- form -->
                                    <form action="search" method="post" class="search-box">
                                        <div class="input-form">
                                            <input name="txt" type="text" class="form-control" placeholder="Bạn tìm việc gì">
                                        </div>
                                        <div class="input-group-append">
                                            <button type="submit" class="btn btn-secondary btn-number">
                                                <i class="fa fa-search"></i>
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- slider Area End-->
            <!-- Our Services Start -->
            <div class="our-services section-pad-t30">
                <div class="container">
                    <!-- Section Tittle -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="section-tittle text-center">
                                <h2>Nhóm việc làm nổi nổi bật </h2>
                            </div>
                        </div>
                    </div>

                    <div class="row d-flex justify-contnet-center">
                        <c:forEach items="${jo.listJobcate2}" var="z" begin="4" end="4">
                            <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                                <div class="single-services text-center mb-30">
                                    <div class="services-cap">
                                        <h5><a href="category?idJobcate=${z.idJobcate}">${z.nameJobcate}</a></h5>
                                        <span>(7)</span>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <c:forEach items="${jo.listJobcate2}" var="z" begin="0" end="0">
                            <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                                <div class="single-services text-center mb-30">
                                    <div class="services-cap">
                                        <h5><a href="category?idJobcate=${z.idJobcate}">${z.nameJobcate}</a></h5>
                                        <span>(6)</span>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <c:forEach items="${jo.listJobcate1}" var="z" begin="0" end="0">
                            <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                                <div class="single-services text-center mb-30">
                                    <div class="services-cap">
                                        <h5><a href="category?idJobcate=${z.idJobcate}">${z.nameJobcate}</a></h5>
                                        <span>(5)</span>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <c:forEach items="${jo.listJobcate1}" var="z" begin="1" end="1">
                            <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                                <div class="single-services text-center mb-30">
                                    <div class="services-cap">
                                        <h5><a href="category?idJobcate=${z.idJobcate}">${z.nameJobcate}</a></h5>
                                        <span>(5)</span>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>

                    <!-- More Btn -->
                    <!-- Section Button -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="browse-btn2 text-center mt-50">
                                <a href="/demoSWP/home?indexx=1" class="border-btn2">Xem tất cả</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Our Services End -->
            <!-- Online CV Area Start -->

            <!-- Online CV Area End-->
            <!-- Featured_job_start -->
            <section class="featured-job-area feature-padding">
                <div class="container">
                    <!-- Section Tittle -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="section-tittle text-center">
                                <h2>Công việc nổi bậc</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-xl-10">
                            <!-- single-job-content -->
                            <c:forEach items="${job.listJob}" var="z" begin="0" end="3">
                                <div class="single-job-items mb-30 border">
                                    <div class="job-items">
                                        <div class="job-tittle job-tittle2">
                                            <h5><a id="backa" href="details?id=${z.idJob}"><p>${z.nameJob}</p></a></h5>
                                            <ul> 
                                                <li><i class="fas fa-map-marker-alt"></i>Hồ Chí Minh</li>
                                                <li><i class="fas fa-money-bill-alt"></i>Thỏa thuận</li>
                                                <li>Số lượng: ${z.quantity}</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="items-link items-link2 f-right">
                                        <span>Hạn tuyển: ${z.applieddate}</span>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Featured_job_end -->
            <!-- How  Apply Process Start-->
            <div class="apply-process-area apply-bg pt-150 pb-150" data-background="assets/img/gallery/how-applybg.png">
                <div class="container">
                    <!-- Section Tittle -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="section-tittle white-text text-center">
                                <h2>QUY TRÌNH TUYỂN DỤNG</h2>
                            </div>
                        </div>
                    </div>
                    <!-- Apply Process Caption -->
                    <div class="row">
                        <div class="col-lg-4 col-md-6">
                            <div class="single-process text-center mb-30">
                                <div class="process-ion">
                                    <span class="flaticon-search"></span>
                                </div>
                                <div class="process-cap">
                                    <h5>1.Tìm kiếm công việc</h5>
                                    <p>Ứng viên tìm kiếm công việc phù hợp với mình.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-process text-center mb-30">
                                <div class="process-ion">
                                    <span class="flaticon-curriculum-vitae"></span>
                                </div>
                                <div class="process-cap">
                                    <h5>2.Đăng kí ứng tuyển</h5>
                                    <p>Ứng viên điền hồ sơ tại website duynguyen.com.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-process text-center mb-30">
                                <div class="process-ion">
                                    <span class="flaticon-tour"></span>
                                </div>
                                <div class="process-cap">
                                    <h5>3. Sàng lọc hồ sơ</h5>
                                    <p>Phòng nhân sự tiến hành sàng lọc hồ sơ.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-process text-center mb-30">
                                <div class="process-ion">
                                    <span class="flaticon-tour"></span>
                                </div>
                                <div class="process-cap">
                                    <h5>4.Phỏng vấn</h5>
                                    <p>Phòng nhân sự tiến hành phỏng vấn ứng viên.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-process text-center mb-30">
                                <div class="process-ion">
                                    <span class="flaticon-tour"></span>
                                </div>
                                <div class="process-cap">
                                    <h5>5.Kiểm tra kết quả</h5>
                                    <p>Ứng viên kiểm tra kết quả tại website duynguyen.com.vn</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-process text-center mb-30">
                                <div class="process-ion">
                                    <span class="flaticon-tour"></span>
                                </div>
                                <div class="process-cap">
                                    <h5>6. Nhận việc</h5>
                                    <p>Các ứng viên phỏng vấn đạt tiến hành bổ sung hồ sơ và nhận việc.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- How  Apply Process End-->
            <!-- Testimonial Start -->
            <div class="testimonial-area testimonial-padding">
                <div class="container">
                    <!-- Testimonial contents -->
                    <div class="row d-flex justify-content-center">
                        <div class="col-xl-8 col-lg-8 col-md-10">
                            <div class="h1-testimonial-active dot-style">
                                <!-- Single Testimonial -->
                                <div class="single-testimonial text-center">
                                    <!-- Testimonial Content -->
                                    <div class="testimonial-caption ">
                                        <!-- founder -->
                                        <div class="testimonial-founder  ">
                                            <div class="founder-img mb-30">
                                                <img src="assets/img/testmonial/testimonial-founder.png" alt="">
                                                <span>Duy</span>
                                                <p>Creative Director</p>
                                            </div>
                                        </div>
                                        <div class="testimonial-top-cap">
                                            <p>“Đến với công ty của chúng tôi bạn sẽ được trải nghiệm tốt nhất.”</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--<div class="support-company-area support-padding fix">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-xl-6 col-lg-6">
                            <div class="right-caption">
                                <div class="section-tittle section-tittle2">
                                    <span>What we are doing</span>
                                    <h2>24k Talented people are getting Jobs</h2>
                                </div>
                                <div class="support-caption">
                                    <p class="pera-top">Mollit anim laborum duis au dolor in voluptate velit ess cillum
                                        dolore eu lore dsu quality mollit anim laborumuis au dolor in voluptate velit
                                        cillum.</p>
                                    <p>Mollit anim laborum.Duis aute irufg dhjkolohr in re voluptate velit esscillumlore eu
                                        quife nrulla parihatur. Excghcepteur signjnt occa cupidatat non inulpadeserunt
                                        mollit aboru. temnthp incididbnt ut labore mollit anim laborum suis aute.</p>
                                    <a href="single-blog.jsp" class="btn post-btn">Post a job</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6">
                            <div class="support-location-img">
                                <img src="assets/img/service/support-img.jpg" alt="">
                                <div class="support-img-cap text-center">
                                    <p>Since</p>
                                    <span>1994</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="home-blog-area blog-h-padding">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="section-tittle text-center">
                                <h2>Cuộc sống ở công ty</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6">
                            <div class="home-blog-single mb-30">
                                <div class="blog-img-cap">
                                    <div class="blog-img">
                                        <img src="assets/img/blog/home-blog1.jpg" alt="">
                                        <div class="blog-date text-center">
                                            <span>24</span>
                                            <p>Now</p>
                                        </div>
                                    </div>
                                    <div class="blog-cap">
                                        <p>| Properties</p>
                                        <h3><a href="single-blog.jsp">Footprints in Time is perfect House in Kurashiki</a>
                                        </h3>
                                        <a href="#" class="more-btn">Read more »</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6">
                            <div class="home-blog-single mb-30">
                                <div class="blog-img-cap">
                                    <div class="blog-img">
                                        <img src="assets/img/blog/home-blog2.jpg" alt="">
                                        <div class="blog-date text-center">
                                            <span>24</span>
                                            <p>Now</p>
                                        </div>
                                    </div>
                                    <div class="blog-cap">
                                        <p>| Properties</p>
                                        <h3><a href="single-blog.jsp">Footprints in Time is perfect House in Kurashiki</a>
                                        </h3>
                                        <a href="#" class="more-btn">Read more »</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>-->
            <!-- Blog Area End -->

        </main>
        <footer>
            <!-- Footer Start-->
            <div class="footer-area footer-bg footer-padding">
                <div class="container">
                    <div class="row d-flex justify-content-between">
                        <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                            <div class="single-footer-caption mb-50">
                                <div class="single-footer-caption mb-30">
                                    <div class="footer-tittle">
                                        <h4>About Us</h4>
                                        <div class="footer-pera">
                                            <p>When you come with us, we will give you an experience the best working.</p>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                            <div class="single-footer-caption mb-50">
                                <div class="footer-tittle">
                                    <h4>Contact Info</h4>
                                    <ul>
                                        <li>
                                            <p>Address :Your address goes
                                                here, your demo address.</p>
                                        </li>
                                        <li><a>Phone : +1234 567899</a></li>
                                        <li><a>Email : admin@cdap.com</a></li>
                                    </ul>
                                </div>

                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                            <div class="single-footer-caption mb-50">
                                <div class="footer-tittle">
                                    <h4>Important Link</h4>
                                    <ul>
                                        <li><a href="#"> View Project</a></li>
                                        <li><a href="#">Contact Us</a></li>
                                        <li><a href="#">Testimonial</a></li>
                                        <li><a href="#">Proparties</a></li>
                                        <li><a href="#">Support</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                            <div class="single-footer-caption mb-50">
                                <div class="footer-tittle">
                                    <h4>Newsletter</h4>
                                    <div class="footer-pera footer-pera2">
                                        <p>Heaven fruitful doesn't over lesser in days. Appear creeping.</p>
                                    </div>
                                    <!-- Form -->
                                    <div class="footer-form">
                                        <div id="mc_embed_signup">
                                            <form target="_blank"
                                                  action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                                                  method="get" class="subscribe_form relative mail_part">
                                                <input type="email" name="email" id="newsletter-form-email"
                                                       placeholder="Email Address" class="placeholder hide-on-focus"
                                                       onfocus="this.placeholder = ''"
                                                       onblur="this.placeholder = ' Email Address '">
                                                <div class="form-icon">
                                                    <button type="submit" name="submit" id="newsletter-submit"
                                                            class="email_icon newsletter-submit button-contactForm"><img
                                                            src="assets/img/icon/form.png" alt=""></button>
                                                </div>
                                                <div class="mt-10 info"></div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- footer-bottom area -->
            <div class="footer-bottom-area footer-bg">
                <div class="container">
                    <div class="footer-border">
                        <div class="row d-flex justify-content-between align-items-center">
                            <div class="col-xl-10 col-lg-10 ">
                                <div class="footer-copy-right">
                                    <p>
                                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                        Copyright &copy;
                                        <script>document.write(new Date().getFullYear());</script> All rights reserved 
                                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    </p>
                                </div>
                            </div>
                            <div class="col-xl-2 col-lg-2">
                                <div class="footer-social f-right">
                                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                                    <a href="#"><i class="fab fa-twitter"></i></a>
                                    <a href="#"><i class="fas fa-globe"></i></a>
                                    <a href="#"><i class="fab fa-behance"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer End-->
        </footer>

        <!-- JS here -->

        <!-- All JS Custom Plugins Link Here here -->
        <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
        <!-- Jquery, Popper, Bootstrap -->
        <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="./assets/js/popper.min.js"></script>
        <script src="./assets/js/bootstrap.min.js"></script>
        <!-- Jquery Mobile Menu -->
        <script src="./assets/js/jquery.slicknav.min.js"></script>

        <!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="./assets/js/owl.carousel.min.js"></script>
        <script src="./assets/js/slick.min.js"></script>
        <script src="./assets/js/price_rangs.js"></script>

        <!-- One Page, Animated-HeadLin -->
        <script src="./assets/js/wow.min.js"></script>
        <script src="./assets/js/animated.headline.js"></script>
        <script src="./assets/js/jquery.magnific-popup.js"></script>

        <!-- Scrollup, nice-select, sticky -->
        <script src="./assets/js/jquery.scrollUp.min.js"></script>
        <script src="./assets/js/jquery.nice-select.min.js"></script>
        <script src="./assets/js/jquery.sticky.js"></script>

        <!-- contact js -->
        <script src="./assets/js/contact.js"></script>
        <script src="./assets/js/jquery.form.js"></script>
        <script src="./assets/js/jquery.validate.min.js"></script>
        <script src="./assets/js/mail-script.js"></script>
        <script src="./assets/js/jquery.ajaxchimp.min.js"></script>

        <!-- Jquery Plugins, main Jquery -->
        <script src="./assets/js/plugins.js"></script>
        <script src="./assets/js/main.js"></script>

    </body>

</html>