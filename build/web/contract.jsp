<%-- 
    Document   : contract
    Created on : Jun 9, 2022, 12:39:54 PM
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
            <title>Câu hỏi thường gặp</title>
            <meta name="description" content="">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

            <!-- CSS here -->
            <link rel="stylesheet" href="assets/css/bootstrap.min.css">
            <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
            <link rel="stylesheet" href="assets/css/slicknav.css">
            <link rel="stylesheet" href="assets/css/price_rangs.css">
            <link rel="stylesheet" href="assets/css/animate.min.css">
            <link rel="stylesheet" href="assets/css/magnific-popup.css">
            <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
            <link rel="stylesheet" href="assets/css/themify-icons.css">
            <link rel="stylesheet" href="assets/css/themify-icons.css">
            <link rel="stylesheet" href="assets/css/slick.css">
            <link rel="stylesheet" href="assets/css/nice-select.css">
            <link rel="stylesheet" href="assets/css/style.css">
            <link rel="stylesheet" href="assets/css/responsive.css">
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
                                                        <li><a href="/demoSWP/home?indexx=1">Tìm công việc</a>
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
                                                <div class="modal-content">
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
            <!-- Hero Area Start-->
            <div class="slider-area ">
                <div class="single-slider section-overly slider-height2 d-flex align-items-center"
                     data-background="assets/img/hero/about.jpg">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="hero-cap text-center">
                                    <h2>Chúng tôi có thể giúp được gì cho bạn</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content">
                <div class="container align-content-center">
                    <div class="row justify-content-center">
                        <div class=" col-10 align-items-center">
                            <div class="accordion" id="accordionExample">
                                <div class="card">
                                    <div class="card-header" id="headingOne">
                                        <h2 class="mb-0">
                                            <button class="btn btn-link btn-block text-left " type="button"
                                                    data-toggle="collapse" data-target="#collapseOne" aria-expanded="true"
                                                    aria-controls="collapseOne">
                                                Ứng tuyển
                                            </button>
                                        </h2>
                                    </div>

                                    <div id="collapseOne" class="collapse" aria-labelledby="headingOne"
                                         data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div id="accordion">
                                                <div class="card">
                                                    <div class="card-header" role="tab" id="peterhead">
                                                        <h3 class="mb-0">
                                                            <a data-toggle="collapse" data-target="#peter">
                                                                Vì sao hồ sơ của tôi có tình trạng Hồ sơ không phù hợp?
                                                            </a>
                                                        </h3>
                                                    </div>
                                                    <div class="collapse " id="peter" data-parent="#accordion">
                                                        <div class="card-body">
                                                            <p class="d-none d-sm-block">Khi bạn ứng tuyển, hệ thống sẽ trả kết quả hồ sơ không phù hợp khi thuộc các trường hợp bên dưới:
                                                                <br>+ Kết quả bài Test online không đạt (Đối với công việc có bài test online )
                                                                <br>+ Khi sàng lọc hồ sơ, hồ sơ của bạn chưa đáp ứng các tiêu chí yêu cầu công việc
                                                                <br>+ Hồ sơ của bạn SPAM ( đăng ký cùng lúc nhiều vị trí )
                                                                <br>+ Công việc bạn ứng tuyển đã tạm ngưng tuyển dụng ( tuyển đủ hoặc đã chọn được hồ sơ phù hợp hơn).

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card">
                                                    <div class="card-header" role="tab" id="dannyhead">
                                                        <h3 class="mb-0">
                                                            <a class="collapsed" data-toggle="collapse"
                                                               data-target="#danny">
                                                                Vì sao hồ sơ của tôi có tình trạng Lưu Hồ Sơ ? 
                                                            </a>
                                                        </h3>
                                                    </div>
                                                    <div class="collapse" id="danny" data-parent="#accordion">
                                                        <div class="card-body">
                                                            <p class="d-none d-sm-block">Khi bạn ứng tuyển, hệ thống sẽ trả kết quả Lưu Hồ Sơ khi thuộc các trường hợp bên dưới:
                                                                <br>+ Khi sàng lọc hồ sơ, hồ sơ của bạn chưa đáp ứng các tiêu chí yêu cầu công việc hiện tại, PNS sẽ lưu hồ sơ cho vị trí phù hợp sau này
                                                                <br>+ Công việc bạn ứng tuyển đã tạm ngưng tuyển dụng, PNS sẽ lưu hồ sơ của bạn nếu sau này có nhu cầu.
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card">
                                                    <div class="card-header" role="tab" id="agumbehead">
                                                        <h3 class="mb-0">
                                                            <a class="collapsed" data-toggle="collapse"
                                                               data-target="#agumbe">
                                                                Làm cách nào để ứng tuyển việc làm tại tập đoàn Thế Giới Di Động ?
                                                            </a>
                                                        </h3>
                                                    </div>
                                                    <div class="collapse" id="agumbe" data-parent="#accordion">
                                                        <div class="card-body">
                                                            <p class="d-none d-sm-block">Để ứng tuyển/ đăng ký các công việc tại tập đoàn Thế Giới Di Động, bạn truy cập website và chọn công việc mong muốn làm việc, sau đó bấm nút ứng tuyển
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card">
                                                    <div class="card-header" role="tab" id="albertohead">
                                                        <h3 class="mb-0">
                                                            <a class="collapsed" data-toggle="collapse"
                                                               data-target="#alberto">
                                                                Sau bao lâu tôi có thể ứng tuyển lại nếu kết quả phỏng vấn hiện tại của tôi là Không Đạt ?
                                                            </a>
                                                        </h3>
                                                    </div>
                                                    <div class="collapse" id="alberto" data-parent="#accordion">
                                                        <div class="card-body">
                                                            <p class="d-none d-sm-block">Bạn có thể ứng tuyển sau tối thiểu 3 tháng nếu cùng một vị trí công việc giống nhau với công việc trước đó
                                                                Bạn có thể ứng tuyển lại ngay nếu đó là công việc khác với vị trí Không Đạt trước đó.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header" id="headingTwo">
                                        <h2 class="mb-0">
                                            <button class="btn btn-link btn-block text-left collapsed" type="button"
                                                    data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false"
                                                    aria-controls="collapseTwo">
                                                Phỏng vấn
                                            </button>
                                        </h2>
                                    </div>
                                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
                                         data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div id="accordion1">
                                                <div class="card">
                                                    <div class="card-header" role="tab" id="peterohead">
                                                        <h3 class="mb-0">
                                                            <a data-toggle="collapse" data-target="#petero">
                                                                Tôi được công ty mời đi phỏng vấn, tuy nhiên vào ngày đó tôi bận đột xuất và không tham gia phỏng vấn được, như vậy có ảnh hưởng gì đến kết quả phỏng vấn không? Và tôi muốn phỏng vấn lại thì làm cách nào?
                                                            </a>
                                                        </h3>
                                                    </div>
                                                    <div class="collapse " id="petero" data-parent="#accordion1">
                                                        <div class="card-body">
                                                            <p class="d-none d-sm-block">Nếu bạn được hẹn phỏng vấn, tuy nhiên bạn không tham gia được vì có việc cá nhân thì bạn có thể đăng ký lại hồ sơ mới tại website để có cơ hội được đi hỏng vấn lần sau.
                                                                Hoặc bạn liên hệ SĐT liên hệ trong thư mời phỏng vấn để được hướng dẫn.

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card">
                                                    <div class="card-header" role="tab" id="dannyohead">
                                                        <h3 class="mb-0">
                                                            <a class="collapsed" data-toggle="collapse"
                                                               data-target="#dannyo">
                                                                Thời gian cần chuẩn bị hồ sơ sau khi trúng tuyển là bao lâu ? 
                                                            </a>
                                                        </h3>
                                                    </div>
                                                    <div class="collapse" id="dannyo" data-parent="#accordion1">
                                                        <div class="card-body">
                                                            <p class="d-none d-sm-block">Thông thường thời gian chuẩn bị hồ sơ là 3 - 5 ngày kể từ khi bạn có Kết quả phỏng vấn ĐẠT.
                                                                Chi tiết hơn bạn sẽ được trao đổi với Chuyên viên Tuyển Dụng khi phỏng vấn.
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card">
                                                    <div class="card-header" role="tab" id="agumbeohead">
                                                        <h3 class="mb-0">
                                                            <a class="collapsed1" data-toggle="collapse"
                                                               data-target="#agumbeo">
                                                                Tôi được mời phỏng vấn tại địa điểm xa nhà nơi tôi đang ở ?
                                                            </a>
                                                        </h3>
                                                    </div>
                                                    <div class="collapse" id="agumbeo" data-parent="#accordion1">
                                                        <div class="card-body">
                                                            <p class="d-none d-sm-block"><br>Công ty thường chọn địa điểm thuận tiện để phù hợp với số đông nhóm ứng viên trong buổi phỏng vấn. Nên sẽ có một số trường hợp ứng viên sẽ có địa điểm phỏng vấn xa nơi đang ở. Bạn nên cố gắng sắp xếp tham dự.
                                                                <br>Trong trường hợp bất khả kháng bạn không có điều kiện di chuyển, bạn có liên hệ lại SĐT có trong thư mời để được PNS hướng dẫn lại.
                                                                <br>Tuy nhiên, dù địa điểm phỏng vấn ở đâu, công ty vẫn sắp xếp địa điểm làm việc thuận tiện gần nhà bạn đang ở. Bạn an tâm nhé !
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card">
                                                    <div class="card-header" role="tab" id="albertoohead">
                                                        <h3 class="mb-0">
                                                            <a class="collapsed" data-toggle="collapse"
                                                               data-target="#albertoo">
                                                                Sau khi ứng tuyển, sau bao lâu sẽ có lịch phỏng vấn ?
                                                            </a>
                                                        </h3>
                                                    </div>
                                                    <div class="collapse" id="albertoo" data-parent="#accordion1">
                                                        <div class="card-body">
                                                            <p class="d-none d-sm-block">Khi bạn ứng tuyển thành công, hồ sơ của bạn sẽ ở tình trạng chờ duyệt ,
                                                                Bạn vui lòng chờ 7-10 ngày để PNS xét duyệt hồ sơ và liên hệ mời phỏng vấn.
                                                                Trong trường hợp, Hồ sơ đã đăng ký nhưng công ty đã chọn được ứng viên phù hợp hơn, trạng thái hồ sơ của bạn sẽ chuyển sang KHÔNG PHÙ HỢP (sau 10 ngày).
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header" id="headingThree">
                                        <h2 class="mb-0">
                                            <button class="btn btn-link btn-block text-left collapsed" type="button"
                                                    data-toggle="collapse" data-target="#collapseThree" aria-expanded="false"
                                                    aria-controls="collapseThree">
                                                Hồ sơ trúng tuyển
                                            </button>
                                        </h2>
                                    </div>
                                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree"
                                         data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div id="accordion2">
                                                <div class="card">
                                                    <div class="card-header" role="tab" id="peterihead">
                                                        <h3 class="mb-0">
                                                            <a data-toggle="collapse" data-target="#peteri">
                                                                Sau khi chuẩn bị hồ sơ xong thì mình cần làm gì ?
                                                            </a>
                                                        </h3>
                                                    </div>
                                                    <div class="collapse " id="peteri" data-parent="#accordion2">
                                                        <div class="card-body">
                                                            <p class="d-none d-sm-block"><br>Bước 1: Bạn truy cập mục Kiểm Tra Kết Quả , tại đây bạn chụp và upload tất cả các hồ sơ của mình theo đúng những mục mà website yêu cầu. Sau đó bấm hoàn tất.
                                                                <br>Bước 2: PNS sẽ chủ động liên hệ hướng dẫn bạn nhân việc sau khi kiểm tra hồ sơ đã upload của bạn
                                                                Hoặc bạn có thể chủ động thông tin cho chuyên viên tuyển dụng ngay khi đã upload hồ sơ xong.

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card">
                                                    <div class="card-header" role="tab" id="dannyihead">
                                                        <h3 class="mb-0">
                                                            <a class="collapsed" data-toggle="collapse"
                                                               data-target="#dannyi">
                                                                Tôi có thể bổ sung giấy tờ sau khi vào làm được không? 
                                                            </a>
                                                        </h3>
                                                    </div>
                                                    <div class="collapse" id="dannyi" data-parent="#accordion2">
                                                        <div class="card-body">
                                                            <p class="d-none d-sm-block">Các vị trí tại công ty đều yêu cầu ứng viên chuẩn bị đầy đủ 100% hồ sơ khi tham dự nhận việc. Ứng viên Đủ hồ sơ mới có thể gia nhập công ty. Trường hợp có khó khăn trong khâu chuẩn bị hồ sơ, ứng viên có thể liên hệ Chuyên viên tuyển dụng để được hướng dẫn.
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card">
                                                    <div class="card-header" role="tab" id="agumbeihead">
                                                        <h3 class="mb-0">
                                                            <a class="collapsed" data-toggle="collapse"
                                                               data-target="#agumbei">
                                                                Thời gian cần chuẩn bị hồ sơ sau khi trúng tuyển là bao lâu ?
                                                            </a>
                                                        </h3>
                                                    </div>
                                                    <div class="collapse" id="agumbei" data-parent="#accordion2">
                                                        <div class="card-body">
                                                            <p class="d-none d-sm-block">Thông thường thời gian chuẩn bị hồ sơ là 3 - 5 ngày kể từ khi bạn có Kết quả phỏng vấn ĐẠT.
                                                                Chi tiết hơn bạn sẽ được trao đổi với Chuyên viên Tuyển Dụng khi phỏng vấn.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card">
                                                    <div class="card-header" role="tab" id="albertoihead">
                                                        <h3 class="mb-0">
                                                            <a class="collapsed" data-toggle="collapse"
                                                               data-target="#albertoi">
                                                                Tôi có thể dùng lý lịch tư pháp thay cho giấy hạnh kiểm được không?
                                                            </a>
                                                        </h3>
                                                    </div>
                                                    <div class="collapse" id="albertoi" data-parent="#accordion2">
                                                        <div class="card-body">
                                                            <p class="d-none d-sm-block">Được. Hai giấy tờ này thay thế được cho nhau
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header" id="headingFour">
                                        <h2 class="mb-0">
                                            <button class="btn btn-link btn-block text-left collapsed" type="button"
                                                    data-toggle="collapse" data-target="#collapseFour" aria-expanded="false"
                                                    aria-controls="collapseFour">
                                                Chính sách nhân sự
                                            </button>
                                        </h2>
                                    </div>
                                    <div id="collapseFour" class="collapse" aria-labelledby="headingThree"
                                         data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div id="accordion3">
                                                <div class="card">
                                                    <div class="card-header" role="tab" id="peteruhead">
                                                        <h3 class="mb-0">
                                                            <a data-toggle="collapse" data-target="#peteru">
                                                                Tôi không có Bằng Cấp, có thể ứng tuyển vào Công ty không ?
                                                            </a>
                                                        </h3>
                                                    </div>
                                                    <div class="collapse " id="peteru" data-parent="#accordion3">
                                                        <div class="card-body">
                                                            <p class="d-none d-sm-block">Có rất nhiều vị trí công việc tại công ty không yêu cầu Bằng Cấp.

                                                                Bạn hãy đọc kỹ mô tả công việc và ứng tuyển nhé

                                                                Xem tất cả việc đang tuyển

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card">
                                                    <div class="card-header" role="tab" id="dannyuhead">
                                                        <h3 class="mb-0">
                                                            <a class="collapsed" data-toggle="collapse"
                                                               data-target="#dannyu">
                                                                Tôi muốn biết về Chính sách Thăng Tiến của công ty ?
                                                            </a>
                                                        </h3>
                                                    </div>
                                                    <div class="collapse" id="dannyu" data-parent="#accordion3">
                                                        <div class="card-body">
                                                            <p class="d-none d-sm-block">Công ty luôn tạo dựng môi trường làm việc Công Bằng- Minh Bạch.
                                                                Tùy từng vị trí sẽ có lộ trình thăng tiến khác nhau. Bạn sẽ có cơ hội Thăng Tiến sau ít nhất 6 tháng làm việc tại công ty.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card">
                                                    <div class="card-header" role="tab" id="agumbeuhead">
                                                        <h3 class="mb-0">
                                                            <a class="collapsed" data-toggle="collapse"
                                                               data-target="#agumbeu">
                                                                Tôi là nhân viên cũ, tôi muốn quay lại làm việc thì phải làm như thế nào ?
                                                            </a>
                                                        </h3>
                                                    </div>
                                                    <div class="collapse" id="agumbeu" data-parent="#accordion3">
                                                        <div class="card-body">
                                                            <p class="d-none d-sm-block">Bạn có thể ứng tuyển vào Công ty như ứng viên bình thường.
                                                                Hồ sơ online ngay tại website để được hẹn lịch phỏng vấn (nếu hồ sơ phù hợp)
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card">
                                                    <div class="card-header" role="tab" id="albertouhead">
                                                        <h3 class="mb-0">
                                                            <a class="collapsed" data-toggle="collapse"
                                                               data-target="#albertou">
                                                                Tôi là nhân viên đang làm việc tại MWG, Điều kiện thuyên chuyển vị trí khác trong công ty là gì ?
                                                            </a>
                                                        </h3>
                                                    </div>
                                                    <div class="collapse" id="albertou" data-parent="#accordion3">
                                                        <div class="card-body">
                                                            <p class="d-none d-sm-block">Điều kiện thuyên chuyển của nhân viên nội bộ đang làm việc là tối thiểu 6 tháng làm việc và không Vi phạm Xử lý kỉ luật trong 3 tháng gần nhất.
                                                                Nếu bạn đáp ứng được điều kiện trên và mong muốn thuyên chuyển, bạn có thể đăng ký hồ sơ online ngay tại website để được liên hệ phỏng vấn từ Phòng Nhân Sự (nếu hồ sơ phù hợp).
                                                                Hoặc bạn gửi Báo cáo nội bộ cho Phòng Nhân Sự ( liên hệ Quản lý để được hướng dẫn).
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>




                                <div class="card">
                                    <div class="card-header" id="headingFive" >
                                        <h2 class="mb-0">
                                            <button class="btn btn-link btn-block text-left collapsed" type="button"
                                                    data-toggle="collapse" data-target="#collapseFive" aria-expanded="false"
                                                    aria-controls="collapseFive">
                                                Tìm việc
                                            </button>
                                        </h2>
                                    </div>
                                    <div id="collapseFive" class="collapse" aria-labelledby="headingFive"
                                         data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div id="accordion4">
                                                <div class="card">
                                                    <div class="card-header" role="tab" id="peterahead">
                                                        <h3 class="mb-0">
                                                            <a  data-toggle="collapse" data-target="#petera">
                                                                Làm thế nào để tìm việc làm theo chuyên ngành của tôi ?
                                                            </a>
                                                        </h3>
                                                    </div>
                                                    <div class="collapse " id="petera" data-parent="#accordion4">
                                                        <div class="card-body">
                                                            <p class="d-none d-sm-block">
                                                                Để tìm việc làm theo chuyên ngành, việc làm theo chuyên môn, bạn truy cập <a href="/demoSWP/home?indexx=1"><u>Tìm công việc</u></a>  tại đây


                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card">
                                                    <div class="card-header" role="tab" id="dannyzhead">
                                                        <h3 class="mb-0">
                                                            <a class="collapsed" data-toggle="collapse"
                                                               data-target="#dannyz">
                                                                Quy trình tuyển dụng tại JobFinder như thế nào ?                                                            </a>
                                                        </h3>
                                                    </div>
                                                    <div class="collapse" id="dannyz" data-parent="#accordion4">
                                                        <div class="card-body">
                                                            <p class="d-none d-sm-block">Xem Quy trình tuyển dụng Thế Giới Di Động
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
        </div>
    </div>
</div>
</div>
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
                                    <p>Heaven frucvitful doesn't cover lesser dvsays appear creeping seasons so
                                        behold.</p>
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

<!-- Scrollup, nice-select, sticky -->
<script src="./assets/js/jquery.scrollUp.min.js"></script>
<script src="./assets/js/jquery.nice-select.min.js"></script>
<script src="./assets/js/jquery.sticky.js"></script>
<script src="./assets/js/jquery.magnific-popup.js"></script>

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