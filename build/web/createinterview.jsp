<%-- 
    Document   : createinterview
    Created on : Jul 18, 2022, 8:00:35 PM
    Author     : HI
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

    <head>
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
                <header class="header-desktop border">
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
                                <div class="col-lg-12">
                                    <div class="col-md-12">
                                        <ul class="nav nav-pills nav-justified align-items-center">
                                            <li class="nav-item">
                                                <a class="nav-link" href="applicant?id=${sessionScope.id.idApplicant}">Thông tin cá nhân</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="screencv?id=${sessionScope.id.idApplicant}">CV</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="history?id=${sessionScope.id.idApplicant}">Lịch sử ứng tuyển</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link active" href="createinterview?id=${sessionScope.id.idApplicant}">Phỏng vấn</a>
                                            </li>
                                        </ul></br>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="row" style="margin-bottom: 50px;">
                                            <div class="col-6">
                                                <div class="align-items-center" style="display:flex ;">
                                                    <div>
                                                        <h5>${createinterview.nameApplicant}</h5>
                                                        <p>${createinterview.email}</p>
                                                        <p>${createinterview.phone}</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="f-right">
                                                    <div
                                                        style="background-color: rgb(240, 100, 100); width: 100px; text-align: center;">
                                                        <p>9:23</p>
                                                    </div>
                                                    <div>
                                                        <p style="color: green; text-align: center;">Chủ nhật</p>
                                                        <p style="text-align:center ;">13/9/2020</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-6 justify-content-around border">
                                                <div class="justify-content-between" style="display: flex;">
                                                    <div>
                                                        <p>Người phỏng vấn:</p>
                                                        <p> &ensp; Duy Nguyễn</p>
                                                    </div>
                                                    <a href="#" data-toggle="modal" data-target="#staticModal">Thêm sửa</a>
                                                </div>
                                                <div style=" padding-top: 30px; display: flex;"
                                                     class="justify-content-between">
                                                    <p>Trạng thái phỏng vấn</p>
                                                    <div class="rs-select2--light rs-select2--md">
                                                        <select class="js-select2" name="property">
                                                            <option selected="selected">Chưa bắt đầu</option>
                                                            <option value="">Đã bắt đầu</option>
                                                            <option value="">Hủy phỏng vấn</option>
                                                        </select>
                                                        <div class="dropDownSelect2"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="justify-content-between" style="display:flex;">
                                                    <p>Chi tiết phỏng vấn</p>
                                                    </br>
                                                    <p
                                                <div class="dropdown">
                                                    <button class="btn btn-secondary dropdown-toggle" type="button"
                                                            id="dropdownMenuButton" data-toggle="dropdown"
                                                            aria-expanded="false">
                                                        Cài đặt
                                                    </button>
                                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                        <a class="dropdown-item" href="#" data-toggle="modal"
                                                           data-target="#staticModal_2">Thay đổi giờ phỏng vấn</a>
                                                        <a class="dropdown-item" href="#" data-toggle="modal"
                                                           data-target="#staticModal_3">Xóa phỏng vấn</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div style="padding-top:40px ;">
                                                <p>Vị trí apply: ${createinterview.nameJob}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="row">
                                    <div class="col-8">
                                        <h4>${createinterview.nameApplicant}</h4>
                                        <p>Gia đoạn hiện tại: CV Apply(1/5 )</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-4">
                                        <button type="button" class="btn btn-danger" disabled="">Disquality</button>
                                    </div>
                                    <div class="col-4">
                                        <button type="button" class="btn btn-success" disabled="">Chuyển tiếp</button>
                                    </div>
                                    <div class="col-4">
                                        <select class="form-control" id="myselect">
                                            <option value="">Lựa chọn</option>
                                            <option value="1">CV Apply</option>
                                            <option value="2">Screen CV</option>
                                            <option value="secondoption">Interview</option>
                                            <option value="5">Offferred</option>
                                            <option value="5">Reject</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="staticModal" tabindex="-1" role="dialog" aria-labelledby="staticModalLabel"
             aria-hidden="true" data-backdrop="static">
            <div class="modal-dialog modal-sm" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticModalLabel">Thêm, bớt người phỏng vấn</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <input type="text" id="exampleInputName2" placeholder="Nhập tên" required=""
                               class="form-control">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary">Confirm</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="staticModal_2" tabindex="-1" role="dialog" aria-labelledby="staticModalLabel"
             aria-hidden="true" data-backdrop="static">
            <div class="modal-dialog modal-sm" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticModalLabel">Thay đổi ngày giờ phỏng vấn</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <input type="date" id="exampleInputName2" placeholder="Nhập tên" required=""
                               class="form-control">
                        <input type="time" id="exampleInputName2" placeholder="Nhập tên" required=""
                               class="form-control">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary">Confirm</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="staticModal_3" tabindex="-1" role="dialog" aria-labelledby="staticModalLabel"
             aria-hidden="true" data-backdrop="static">
            <div class="modal-dialog modal-sm" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticModalLabel">Thay đổi ngày giờ phỏng vấn</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        Bạn chắc chắn muốn xóa lịch ?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary">Confirm</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="scrollmodal" tabindex="-1" role="dialog" aria-labelledby="scrollmodalLabel"
             aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="scrollmodalLabel">Scrolling Long Content Modal</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="row form-group">
                            <div class="col col-md-3">
                                <label for="text-input" class=" form-control-label">Người phỏng vấn</label>
                            </div>
                            <div class="col-12 col-md-9">
                                <input type="text" id="text-input" name="text-input" placeholder="Text"
                                       class="form-control">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3">
                                <label for="text-input" class=" form-control-label">Thời gian phỏng vấn</label>
                            </div>
                            <div class="col-12 col-md-5">
                                <input type="date" id="text-input" name="text-input" placeholder="Text"
                                       class="form-control">
                            </div>
                            <div class="col-12 col-md-4">
                                <input type="time" id="text-input" name="text-input" placeholder="Text"
                                       class="form-control">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3">
                                <label for="text-input" class=" form-control-label">Thời gian dự kiến</label>
                            </div>
                            <div class="col-12 col-md-9">
                                <input type="time" id="text-input" name="text-input" placeholder="Text"
                                       class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary">Confirm</button>
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
<script>
    $(document).ready(function () { //Make script DOM ready
        $('#myselect').change(function () { //jQuery Change Function
            var opval = $(this).val(); //Get value from select element
            if (opval == "secondoption") { //Compare it and if true
                $('#scrollmodal').modal("show"); //Open Modal
            }
        });
    });
</script>
<!-- Main JS-->
<script src="js/main.js"></script>

</body>

</html>
<!-- end document-->