<%-- 
    Document   : interview
    Created on : Jul 14, 2022, 4:30:32 PM
    Author     : HI
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

    <head>
        <jsp:useBean id="jo" class="sample.jobcategory.JobcategoryDAO" scope="request"></jsp:useBean>
        <jsp:useBean id="job" class="sample.job.JobDAO" scope="request"></jsp:useBean>
        <jsp:useBean id="itv" class="sample.interview.InterviewDAO" scope="request"></jsp:useBean>
            <!-- Required meta tags-->
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <meta name="description" content="au theme template">
            <meta name="author" content="Hau Nguyen">
            <meta name="keywords" content="au theme template">

            <!-- Title Page-->
            <title>Lịch phỏng vấn</title>

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

                <!-- HEADER DESKTOP-->
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
                            </div>
                        </div>
                    </div>
                </div>
                <!-- MAIN CONTENT-->
                <div class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="overview-wrap">
                                        <h2 class="title-1">Kết quả ứng tuyển</h2>
                                    </div></br>
                                </div>
                            </div>
                            <!--<div class="row justify-content-between ">
                                <div class="">
                                    <input class="au-input au-input--w200 " type="text" name="search"
                                           placeholder="Lọc theo tên" />

                                </div>
                                <div class="">
                                    <input class="au-input au-input--w200 " type="text" name="search"
                                           placeholder="Lọc theo tin tuyển dụng" />

                                </div>
                                <div class="">
                                    <input class="au-input au-input--w200 " type="text" name="search"
                                           placeholder="Lọc theo email" />

                                </div>
                                <div class="">
                                    <input class="au-input au-input--w200 " type="text" name="search"
                                           placeholder="Số điện thoại" />

                                </div>
                                <div class="">
                                    <input class="au-input au-input--w200 " type="date" name="search"
                                           placeholder="Lọc theo ngày" />

                                </div>
                                <div class="">
                                    <input class="au-input au-input--w200 " type="text  " name="search"
                                           placeholder="Đã diễn ra chưa" /> 
                                </div>

                            </div>-->
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="table-responsive m-b-40" id="white_table">
                                    <table class="table table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Ứng viên</th>
                                                <th>Vị trí apply</th>
                                                <th>Email</th>
                                                <th>Số điện thoại</th>
                                                <th>Ngày phỏng vấn</th>
                                                <th>Giờ</th>
                                                <th>Người tham gia</th>
                                                <th>Địa điểm</th>
                                                <!--<th>Trạng thái</th>
                                                <th>CV</th>-->

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>${listE.nameApplicant}</td>
                                            <td>${listE.nameJob}</td>
                                            <td>${listE.email}</td>
                                            <td>${listE.phone}</td>
                                            <td>${listE.interviewDate}</td>
                                            <td>${listE.interviewTime}</td>
                                            <td>${listE.interviewer}</td>
                                            <td>${listE.address}</td>
                                            <!--<td>
                                                <div class="rs-select2--light rs-select2--md">
                                                    <select class="js-select2" name="time">
                                                        <option selected="selected">Chưa bắt đầu</option>
                                                        <option value="">Đã diên ra</option>
                                                        <div class="dropDownSelect2"></div>
                                                </div>
                                            </td>
                                            <td><a href="">Xem cv</a></td>-->
                                        </tr>
                                    </tbody>
                                </table>
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