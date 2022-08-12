<%-- 
    Document   : history
    Created on : Jul 17, 2022, 9:05:04 PM
    Author     : HI
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

    <head>
        <jsp:useBean id="Alc" class="sample.applicant.ApplicantDAO" scope="request"></jsp:useBean>
            <!-- Required meta tags-->
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <meta name="description" content="au theme template">
            <meta name="author" content="Hau Nguyen">
            <meta name="keywords" content="au theme template">

            <!-- Title Page-->
            <title>Thông tin ứng viên</title>

            <!-- Fontfaces CSS-->
            <link href="css/font-face.css" rel="stylesheet" media="all">
            <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
            <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
            <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

            <!-- Bootstrap CSS-->
            <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

            <!-- Vendor CSS-->
            <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
            <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
            <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
            <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
            <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
            <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
            <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

            <!-- Main CSS-->
            <link href="css/theme.css" rel="stylesheet" media="all">

        </head>

        <body class="animsition">
            <div class="page-wrapper">
                <!-- HEADER MOBILE-->
                <header class="header-mobile d-block d-lg-none">
                    <div class="header-mobile__bar">
                        <div class="container-fluid">
                            <div class="header-mobile-inner">
                                <a class="logo" href="listjob.jsp">
                                    <img src="images/icon/123.jpg" alt="CoolAdmin" />
                                </a>
                                <button class="hamburger hamburger--slider" type="button">
                                    <span class="hamburger-box">
                                        <span class="hamburger-inner"></span>
                                    </span>
                                </button>
                            </div>
                        </div>
                    </div>
                </header>
                <!-- END HEADER MOBILE-->

                <!-- MENU SIDEBAR-->
                <aside class="menu-sidebar d-none d-lg-block">
                    <div class="logo">
                        <a href="listjob.jsp">
                            <img style="width: 300px;height: 75px;max-width: 100%" src="images/icon/123.jpg" alt="Cool Admin" />
                        </a>
                    </div>
                    <div class="menu-sidebar__content js-scrollbar1 border">
                        <nav class="navbar-sidebar">
                            <ul class="list-unstyled navbar__list">
                                <!--<li class="active has-sub">
                                    <a class="js-arrow" href="home.jsp">
                                        <i class="fas fa-tachometer-alt"></i>Tổng quan</a>
                                </li>-->
                                <li>
                                    <a href="listjob.jsp">
                                        <i class="fas fa-chart-bar"></i>Tin tuyển dụng</a>
                                </li>
                                <li>
                                    <a href="listapply.jsp">
                                        <i class="fas fa-table"></i>Danh sách ứng viên</a>
                                </li>
                                <li>
                                    <a href="interview.jsp">
                                        <i class="fas fa-table"></i>Lịch phỏng vấn</a>
                                </li>
                                <!--<li>
                                    <a href="newmail.jsp">
                                        <i class="fas fa-mail-reply-all"></i>Template email</a>
                                </li>-->
                            </ul>
                        </nav>  
                    </div>
                </aside>
                <!-- END MENU SIDEBAR-->

                <!-- PAGE CONTAINER-->
                <div class="page-container">
                    <!-- HEADER DESKTOP-->
                    <header class="header-desktop">
                        <div class="section__content section__content--p30">
                            <div class="container-fluid">
                                <div class="header-wrap">
                                    <!--<form class="form-header" action="" method="POST">
                                        <input class="au-input au-input--w300" type="text" name="search"
                                               placeholder="Search for datas &amp; reports..." />
                                        <button class="au-btn--submit" type="submit">
                                            <i class="zmdi zmdi-search"></i>
                                        </button>

                                    </form>-->
                                    <div style="width:300px;"></div>
                                    <div>
                                        <a href="listjob.jsp">
                                            Đăng tin tuyển dụng</a>
                                    </div>
                                    <div>
                                        <a href="index.jsp">
                                            Website tuyển dụng</a>
                                    </div>
                                    <div class="header-button">
                                        <div class="noti-wrap">

                                            <!--<div class="noti__item js-item-menu">
                                                <i class="zmdi zmdi-notifications"></i>
                                                <span class="quantity">3</span>
                                                <div class="notifi-dropdown js-dropdown">
                                                    <div class="notifi__title">
                                                        <p>You have 3 Notifications</p>
                                                    </div>
                                                    <div class="notifi__item">
                                                        <div class="bg-c1 img-cir img-40">
                                                            <i class="zmdi zmdi-email-open"></i>
                                                        </div>
                                                        <div class="content">
                                                            <p>You got a email notification</p>
                                                            <span class="date">April 12, 2018 06:50</span>
                                                        </div>
                                                    </div>
                                                    <div class="notifi__item">
                                                        <div class="bg-c2 img-cir img-40">
                                                            <i class="zmdi zmdi-account-box"></i>
                                                        </div>
                                                        <div class="content">
                                                            <p>Your account has been blocked</p>
                                                            <span class="date">April 12, 2018 06:50</span>
                                                        </div>
                                                    </div>
                                                    <div class="notifi__item">
                                                        <div class="bg-c3 img-cir img-40">
                                                            <i class="zmdi zmdi-file-text"></i>
                                                        </div>
                                                        <div class="content">
                                                            <p>You got a new file</p>
                                                            <span class="date">April 12, 2018 06:50</span>
                                                        </div>
                                                    </div>
                                                    <div class="notifi__footer">
                                                        <a href="#">All notifications</a>
                                                    </div>
                                                </div>
                                            </div>-->
                                        </div>
                                        <div class="account-wrap">
                                            <div class="account-item clearfix js-item-menu">
                                                <div class="content">
                                                    <a class="js-acc-btn" href="#">Admin</a>
                                                </div>
                                                <!--<div class="account-dropdown js-dropdown">
                                                    <div class="info clearfix">
                                                        <div class="image">
                                                            <a href="#">
                                                                <img src="images/icon/avatar-01.jpg" alt="John Doe" />
                                                            </a>
                                                        </div>
                                                        <div class="content">
                                                            <h5 class="name">
                                                                <a href="#">john doe</a>
                                                            </h5>
                                                            <span class="email">johndoe@example.com</span>
                                                        </div>
                                                    </div>
                                                    <div class="account-dropdown__body">
                                                        <div class="account-dropdown__item">
                                                            <a href="#">
                                                                <i class="zmdi zmdi-account"></i>Account</a>
                                                        </div>
                                                        <div class="account-dropdown__item">
                                                            <a href="#">
                                                                <i class="zmdi zmdi-settings"></i>Setting</a>
                                                        </div>
                                                        <div class="account-dropdown__item">
                                                            <a href="#">
                                                                <i class="zmdi zmdi-money-box"></i>Billing</a>
                                                        </div>
                                                    </div>
                                                    <div class="account-dropdown__footer">
                                                        <a href="#">
                                                            <i class="zmdi zmdi-power"></i>Logout</a>
                                                    </div>
                                                </div>-->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- HEADER DESKTOP-->

                    <!-- MAIN CONTENT-->
                    <div class="main-content">
                        <div class="section__content section__content--p30">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="col-lg-12">
                                            <div class="col-md-12">
                                                <ul class="nav nav-pills nav-justified">
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="applicant?id=${sessionScope.id.idApplicant}">Thông tin cá nhân</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="screencv?id=${sessionScope.id.idApplicant}">CV</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link active" href="history?id=${sessionScope.id.idApplicant}">Lịch sử ứng tuyển</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="createinterview?id=${sessionScope.id.idApplicant}">Phỏng vấn</a>
                                                </li>
                                            </ul>
                                        </div>

                                    </div></br>
                                    <div class="row">
                                        <div class="col-md-12" style="padding-left: 0px;">
                                            <div class="single-job-items mb-30" id="border-item-2">
                                                <div class="job-items">
                                                    <div class="job-tittle job-tittle2">
                                                        <a>
                                                            <h5>${history.nameJob}</h5>
                                                        </a>
                                                        <!--<ul>
                                                            <li><i class="fas fa-map-marker-alt"></i>Hồ Chí Minh</li>
                                                            <li><i class="fas fa-money-bill-alt"></i>Thỏa thuận</li>
                                                        </ul>-->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!-- END MAIN CONTENT-->
        <!-- END PAGE CONTAINER-->
    </div>

</div>

<!-- Jquery JS-->
<script src="vendor/jquery-3.2.1.min.js"></script>
<!-- Bootstrap JS-->
<script src="vendor/bootstrap-4.1/popper.min.js"></script>
<script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
<!-- Vendor JS       -->
<script src="vendor/slick/slick.min.js">
</script>
<script src="vendor/wow/wow.min.js"></script>
<script src="vendor/animsition/animsition.min.js"></script>
<script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
</script>
<script src="vendor/counter-up/jquery.waypoints.min.js"></script>
<script src="vendor/counter-up/jquery.counterup.min.js">
</script>
<script src="vendor/circle-progress/circle-progress.min.js"></script>
<script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="vendor/chartjs/Chart.bundle.min.js"></script>
<script src="vendor/select2/select2.min.js">
</script>

<!-- Main JS-->
<script src="js/main.js"></script>

</body>

</html>
<!-- end document-->