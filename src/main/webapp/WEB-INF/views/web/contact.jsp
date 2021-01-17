<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Liên hệ</title>
</head>
<body>
<nav class="breadcrumb-section theme1 breadcrumb-bg1">
  <div class="container">

    <div class="row">
      <div class="col-12">
        <div class="breadcrumb-title text-center my-20">
          <h2 class="title text-dark text-capitalize">Liên hệ với chúng tôi</h2>
        </div>
      </div>
      <div class="col-12">
        <ol class="breadcrumb bg-transparent m-0 p-0 align-items-center justify-content-center">
          <li class="breadcrumb-item"><a href="<c:url value='/trang-chu'/>">Trang chủ</a></li>
          <li class="breadcrumb-item active" aria-current="page">
            Liên hệ
          </li>
        </ol>
      </div>
    </div>
  </div>
</nav>
<!-- breadcrumb-section end -->

<!-- product tab start -->
<section class="contact-section pt-70 pb-40">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-12 mb-30">
                <!--  contact page side content  -->
                <div class="contact-page-side-content">
                    <h3 class="contact-page-title">Liên hệ với chúng tôi</h3>
                    <p class="contact-page-message mb-30">Đạt đẹp trai</p>
                    <!--  single contact block  -->

                    <div class="single-contact-block">
                        <h4><i class="fa fa-fax"></i> Địa chỉ</h4>
                        <p>4449 Nguyễn Cửu Phú, phường Tân Tạo A, Bình Tân, Hồ Chí Minh</p>
                    </div>

                    <!--  End of single contact block -->

                    <!--  single contact block -->

                    <div class="single-contact-block">
                        <h4><i class="fa fa-phone"></i> Điện thoại</h4>
                        <p>
                            <a href="tel:123456789">Mobile: 036 898 5595</a>
                        </p>
                    </div>

                    <!-- End of single contact block -->

                    <!--  single contact block -->

                    <div class="single-contact-block">
                        <h4><i class="fas fa-envelope"></i> Email</h4>
                        <p>
                            <a href="mailto:datlt.letandat@gmail.com">datlt.letandat@gmail.com</a>
                        </p>
                        <p> <a href="mailto:datltps09246@fpt.edu.vn">datltps09246@fpt.edu.vn</a></p>
                    </div>

                    <!--=======  End of single contact block  =======-->
                </div>

                <!--=======  End of contact page side content  =======-->

            </div>
            <div class="col-lg-6 col-12 mb-30">
                <!--  contact form content -->
                <div class="contact-form-content">
                    <h3 class="contact-page-title">Cho chúng tôi biết thông điệp của bạn</h3>
                    <div class="contact-form">
                        <form id="contact-form" action="assets/php/mail.php" method="post">
                            <div class="form-group">
                                <label>Tên của bạn <span class="required">*</span></label>
                                <input type="text" name="customerName" id="customername" required="">
                            </div>
                            <div class="form-group">
                                <label>Email<span class="required">*</span></label>
                                <input type="email" name="customerEmail" id="customerEmail" required="">
                            </div>
                            <div class="form-group">
                                <label>Tiêu đề</label>
                                <input type="text" name="contactSubject" id="contactSubject" required="">
                            </div>
                            <div class="form-group">
                                <label>Lời nhắn</label>
                                <textarea name="contactMessage" class="pb-10" id="contactMessage" required=""></textarea>
                            </div>
                            <div class="form-group mb-0">
                                <button type="submit" value="submit" id="submit" class="btn theme-btn--dark1 btn--xl" name="submit">Gửi</button>
                            </div>
                        </form>
                    </div>
                    <p class="form-messegemt-10"></p>
                </div>
                <!-- End of contact -->
            </div>
        </div>
    </div>
</section>
<div>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.7645028487154!2d106.58363261462229!3d10.752624492337663!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752c54c5a45679%3A0x95ad6eb0f2830073!2zNDQ0OSBOZ3V54buFbiBD4butdSBQaMO6LCBUw6JuIFThuqFvIEEsIELDrG5oIFTDom4sIFRow6BuaCBwaOG7kSBI4buTIENow60gTWluaCwgVmlldG5hbQ!5e0!3m2!1sen!2s!4v1610867287318!5m2!1sen!2s"
            width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
</div>
</body>
</html>