<%-- 
    Document   : listjob
    Created on : Jul 13, 2022, 1:51:28 PM
    Author     : HI
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

    <head>
        <jsp:useBean id="jo" class="sample.jobcategory.JobcategoryDAO" scope="request"></jsp:useBean>
        <jsp:useBean id="job" class="sample.job.JobDAO" scope="request"></jsp:useBean>
            <!-- Required meta tags-->
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <meta name="description" content="au theme template">
            <meta name="author" content="Hau Nguyen">
            <meta name="keywords" content="au theme template">

            <!-- Title Page-->
            <title>Danh sách tin tuyển dụng</title>

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
                    <div class="menu-sidebar__content js-scrollbar1">
                        <nav class="navbar-sidebar">
                            <ul class="list-unstyled navbar__list">
                                <!--<li>
                                    <a class="js-arrow" href="home.jsp">
                                        <i class="fas fa-tachometer-alt"></i>Tổng quan</a>
                                </li>-->
                                <li class="active has-sub">
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
                                    <div style="width:300px;"></div>
                                    <div>
                                        <a href="newjob.jsp">
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
                                                    <a class="js-acc-btn" >Admin</a>
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
                    <!-- END HEADER DESKTOP-->

                    <!-- MAIN CONTENT-->
                    <div class="main-content">
                        <div class="section__content section__content--p30">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="overview-wrap">
                                            <h2 class="title-1">Tin tuyển dụng</h2>
                                        </div></br>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <!-- USER DATA-->
                                        <!-- END USER DATA-->
                                    </div>
                                    <div class="col-lg-6">
                                    </div>
                                </div>
                                <div class="row">


                                </div>
                                <div class="row">
                                    <!--<button class="au-btn-filter">
                                        <i class="zmdi zmdi-filter-list"></i>filters</button>
                                    <div class="table-data__tool-left">
                                        <div class="rs-select2--light rs-select2--md">
                                            <select class="js-select2" name="property">
                                                <option selected="selected">All categrogy</option>
                                                <option value="">1</option>
                                                <option value="">Option 2</option>
                                            </select>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                        <div class="rs-select2--light rs-select2--md">
                                            <select class="js-select2" name="time">
                                                <option selected="selected">Lọc theo ngày</option>
                                                <option value="">Mới nhất </option>
                                                <option value="">Cũ nhất</option>
                                            </select>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                        <div class="rs-select2--light rs-select2--md">
                                            <select class="js-select2" name="time">
                                                <option selected="selected">Địa điểm</option>
                                                <option value="">HCM</option>
                                                <option value="">Hà Nội</option>
                                            </select>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                    <input class="au-input au-input--w300 " type="text" name="search"
                                           placeholder="Lọc theo tiêu đề" />
                                    <button class="btn btn-primary btn-lg" type="submit">
                                        <i class="zmdi zmdi-search"></i>
                                    </button>-->
                                </div>
                            </div>
                            <div class="row m-t-30">
                                <div class="col-md-12">
                                    <!-- DATA TABLE-->
                                    <div class="table-responsive m-b-40" id="white_table">
                                        <table class="table table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>Tin tuyển dụng</th>
                                                    <th>Bộ phận</th>
                                                    <th>Địa điểm văn phòng</th>
                                                    <th>Trạng thái</th>
                                                    <th>Số lượng</th>
                                                    <th>Thao tác</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${job.listJob}" var="i">
                                                <tr>
                                                    <td>${i.nameJob}</td>
                                                    <td>${i.cateID}</td>
                                                    <td>
                                                        <p>${i.workplace}</p>
                                                    </td>
                                                    <td>
                                                        <!--<div class="rs-select2--light rs-select2--md">
                                                            <select class="js-select2" name="time">
                                                                <option selected="selected">Public</option>
                                                                <option value="">Private</option>
                                                            </select>
                                                            <div class="dropDownSelect2"></div>
                                                        </div>-->
                                                        <div><a href="details?id=${i.idJob}">
                                                                <p>Xem chi tiết trên web tuyển dụng</p>
                                                            </a></div>
                                                    </td>
                                                    <td>${i.quantity}</td>

                                                    <td>
                                                        <div class="table-data-feature justify-content-center">

                                                            <a href="updatejob?id=${i.idJob}">
                                                                <button class="item" data-toggle="tooltip"
                                                                        data-placement="top" title="Edit">
                                                                    <i class="zmdi zmdi-edit"></i>
                                                                </button>
                                                            </a>
                                                            <a href="deletejob?id=${i.idJob}">
                                                                <button class="item" data-toggle="tooltip" data-placement="top"
                                                                        title="Delete">
                                                                    <i class="zmdi zmdi-delete"></i>
                                                                </button>
                                                            </a>
                                                            <!--<td>
                                                            <c:url var="delete" value="DeleteJobController">
                                                                <c:param name="action" value="Delete"></c:param>
                                                                <c:param name="idJob" value="${i.idJob}"></c:param>
                                                            </c:url>
                                                            <a href="${delete}">Delete</a>
                                                        </td>-->
                                                        </div>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- END DATA TABLE-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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