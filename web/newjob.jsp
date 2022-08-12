<%-- 
    Document   : newjob
    Created on : Jul 19, 2022, 4:09:49 PM
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
        <title>Đăng tin tuyển dụng</title>

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
                                <img src="images/icon/logo.png" alt="CoolAdmin" />
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
                        <img src="images/icon/logo.png" alt="Cool Admin" />
                    </a>
                </div>
                <div class="menu-sidebar__content js-scrollbar1 border">
                    <nav class="navbar-sidebar">
                        <ul class="list-unstyled navbar__list">
                            <!--<li>
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
                                            <div class="image">
                                                <img src="images/icon/avatar-01.jpg" alt="Admin" />
                                            </div>
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
                <form action="insertjob" method="POST">
                    <div class="main-content">
                        <div class="section__content section__content--p30">
                            <div class="container-fluid">
                                <div class="row justify-content-center">
                                    <div class="col-8">
                                        <div class="form-group">
                                            <label for="company" class=" form-control-label">Mã tin tuyển dụng</label>
                                            <input name="idJob" type="text" id="company" placeholder="Enter title job" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label for="company" class=" form-control-label">Tên tin tuyển dụng</label>
                                            <input name="nameJob" type="text" id="company" placeholder="Enter title job" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label for="select" class="form-control-label">Nhóm công việc</label>
                                            <select name="cateID" id="select" class="form-control">
                                                <option value="0">--Lựa chọn--</option>
                                                <option value="1">Bán Hàng/ Thu Ngân</option>
                                                <option value="2">Giao Hàng/ Shipper</option>
                                                <option value="3">Kho Vận/ Kho Trung Tâm</option>
                                                <option value="4">Bảo Vệ/ Giữ Xe</option>
                                                <option value="5">Sơ Chế/ Đóng Gói</option>
                                                <option value="6">Marketing/ Media</option>
                                                <option value="7">Kế Toán/ Tài Chính</option>
                                                <option value="8">Thiết Kế/ Phát Triển Sản Phẩm</option>
                                                <option value="9">Công nghệ thông tin/ IT</option>
                                                <option value="10">Sinh viên mới tốt nghiệp</option>
                                                <option value="11">Sinh viên mới tốt nghiệp</option>
                                                <option value="12">Việc làm theo Ca</option>
                                                <option value="13">Bán thời gian</option>
                                                <option value="14">Quản lý/Có kinh nghiệm</option>
                                                <option value="15">Việc làm Giờ Hành Chánh</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="select" class="form-control-label">Nơi làm việc</label>
                                            <select name="workplace" id="select" class="form-control">
                                                <option value="0">--Lựa chọn--</option>
                                                <option value="Hồ Chí Minh">Hồ Chí Minh</option>
                                                <option value="Hà Nội">Hà Nội</option>
                                                <option value="Đà Nẵng">Đà Nẵng</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="select" class="form-control-label">Bằng cấp</label>
                                            <select name="degree" id="select" class="form-control">
                                                <option value="0">--Lựa chọn--</option>
                                                <option value="Không yêu cầu">Không yêu cầu</option>
                                                <option value="THPT">THPT</option>
                                                <option value="Cao Đẳng/Trung Cấp">Cao Đẳng/Trung Cấp</option>
                                                <option value="Đại Học">Đại Học</option>
                                                <option value="Thạc Sĩ">Thạc Sĩ</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="select" class="form-control-label">Kinh nghiệm</label>
                                            <select name="experience" id="select" class="form-control">
                                                <option value="0">--Lựa chọn--</option>
                                                <option value="Không yêu cầu kinh nghiệm">Không yêu cầu kinh nghiệm</option>
                                                <option value="Từ 1 năm trở lên">Từ 1 năm trở lên</option>
                                                <option value="Từ 2 năm trở lên">Từ 2 năm trở lên</option>
                                                <option value="Từ 3 năm trở lên">Từ 3 năm trở lên</option>
                                            </select>
                                        </div>
                                        <!--<div class="form-group">
                                            <label for="select" class="form-control-label">Lương</label>
                                            <input type="text" id="company" placeholder="Nhập lương" class="form-control">
                                        </div>-->
                                        <div class="form-group">
                                            <label for="company" class="form-control-label">Số lượng cần tuyển </label>
                                            <input name="quantity" type="text" id="company" placeholder="Nhập số lượng" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label for="company" class="form-control-label">Thời hạn nhận hồ sơ</label>
                                            <input name="applieddate" type="text" id="company" placeholder="Hạn tuyển" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label for="centered" class="form-control-label">Mô tả công việc</label>
                                            <input name="jobDesciption" type="text" id="company" placeholder="Mô tả" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label for="centered" class="form-control-label">Yêu cầu công việc</label>
                                            <input name="jobRequest" type="text" id="company" placeholder="Yêu cầu công việc" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label for="centered" class="form-control-label">Quyền lợi</label>
                                            <input name="rights" type="text" id="company" placeholder="Quyền lợi" class="form-control">
                                        </div>
                                        <div class="form-group text-center">
                                            <input type="submit" class="btn btn-primary btn-lg active" value="Tạo mới"></br>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </form>
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
        <script src="ckeditor5-build-classic/ckeditor.js"></script>
        <script>
            ClassicEditor
                    .create(document.querySelector('#editor'), {
                        // toolbar: [ 'heading', '|', 'bold', 'italic', 'link' ]
                    })
                    .then(editor => {
                        window.editor = editor;
                    })
                    .catch(err => {
                        console.error(err.stack);
                    });
        </script>

    </body>

</html>
<!-- end document-->