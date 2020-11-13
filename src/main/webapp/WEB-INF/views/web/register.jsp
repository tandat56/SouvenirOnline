<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng ký</title>
</head>
<body>
<nav class="breadcrumb-section theme1 breadcrumb-bg1">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="breadcrumb-title text-center my-20">
          <h2 class="title text-dark text-capitalize">Đăng kí</h2>
        </div>
      </div>
      <div class="col-12">
        <ol class="breadcrumb bg-transparent m-0 p-0 align-items-center justify-content-center">
          <li class="breadcrumb-item"><a href="<c:url value='/trang-chu'/>">Trang chủ</a></li>
          <li class="breadcrumb-item active" aria-current="page">
           Đăng kí
          </li>
        </ol>
      </div>
    </div>
  </div>
</nav>
<!-- breadcrumb-section end -->

<!-- product tab start -->
<div class="register pb-70">
    <div class="container grid-wraper">
        <div class="row">
            <div class="col-12">
                <h3 class="title text-capitalize mb-30 pb-25">Tạo một tài khoản</h3>
                <div class="log-in-form">
                    <form action="./assets/php/mail.php" class="personal-information">
                        <div class="order-asguest theme1 mb-3">
                            <span>Bạn đã để tạo một tài khoản?</span>
                            <a class="text-muted hover-color" href="<c:url value='/dang-nhap'/>">	Đăng nhập !</a>
                        </div>
                         <div class="form-group row">
                <label for="name" class="col-md-3 col-form-label">Họ và tên</label>
                <div class="col-md-6">
                  <input type="text" id="name" class="form-control">
                  <span class="haha" id="name-error"></span>
                </div>
              </div>

              <div class="form-group row">
                <label for="email" class="col-md-3 col-form-label">Email</label>
                <div class="col-md-6">
                  <input type="email" id="email" class="form-control">
                  <span class="haha" id="email-error"></span>
                </div>
              </div>

              <div class="form-group row">
                <label for="password" class="col-md-3 col-form-label">Mật khẩu
                </label>
                <div class="col-md-6">
                  <input type="password" id="password" class="form-control">
                  <span class="haha" id="ps-error"></span>
                </div>
              </div>

              <div class="form-group row">
                <label class="col-md-3 col-form-label">
                 GIới tính
                </label>
                <div class="col-md-6">
                  <div class="d-flex flex-wrap">
                    <div class="custom-radio">
                      <input type="radio" id="test1" name="radio-group" value="1">
                      <label for="test1">Mr</label>
                    </div>
                    <div class="custom-radio">
                      <input type="radio" id="test2" name="radio-group" value="2">
                      <label for="test2">Mrs</label>
                    </div>
                    <span class="haha" id="gender-error"></span>
                  </div>
                </div>
              </div>
                        <div class="form-group row">
                            <div class="col-md-3"></div>
                            <div class="col-md-6">
                                <div class="check-box-inner pt-0">
                                    <div class="filter-check-box">
                                        <input type="checkbox" id="20820">
                                        <label for="20820">Nhận ưu đãi từ các đối tác của chúng tôi</label>
                                    </div>
                                    <div class="filter-check-box">
                                        <input type="checkbox" id="20821">
                                        <label for="20821">Đăng ký nhận bản tin của chúng tôi</label>
                                        <p class="pl-25">Bạn có thể hủy đăng ký bất cứ lúc nào. Vì mục đích đó, xin vui lòng
                                            tìm thông tin liên hệ của chúng tôi trong thông báo pháp lý.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="sign-btn text-right">
                                    <a href="#" class="btn theme-btn--dark1 btn--md" onclick="save()">Lưu</a>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">

    var reg_email = /^[A-Za-z0-9]+([_\.\-]?[A-Za-z0-9])*@[A-Za-z0-9]+([\.\-]?[A-Za-z0-9]+)*(\.[A-Za-z]+)+$/;

    function save() {
      var email = document.getElementById('email').value;
      var password = document.getElementById('password').value;
      var name = document.getElementById('name').value;
      var gender = '';

      if (document.getElementById('test1').checked) {
        gender = document.getElementById('test1').value;
      } else if (document.getElementById('test2').checked) {
        gender = document.getElementById('test2').value;
      }

      if (_.isEmpty(name)) {
        name = '';
        document.getElementById('name-error').innerHTML = 'Vui lòng nhập tên';
      } else if (name.trim().length <= 5) {
        name = '';
        document.getElementById('name-error').innerHTML = 'Tên phải ít nhất 5 kí tự';
      } else {

        document.getElementById('name-error').innerHTML = '';
      }

      if (_.isEmpty(email)) {
        email = '';
        document.getElementById('email-error').innerHTML = 'Vui lòng nhập Email';
      } else if (reg_email.test(email) == false) {
        email = '';
        document.getElementById('email-error').innerHTML = 'Không đúng định dạng email';
      } else {

        document.getElementById('email-error').innerHTML = '';
      }

      if (_.isEmpty(password)) {
        password = '';
        document.getElementById('ps-error').innerHTML = 'Vui lòng nhập mật khẩu';
      } else if (password.length <= 5) {
        password = '';
        document.getElementById('ps-error').innerHTML = 'Mật khẩu phải từ 6 tới 16 kí tự';
      } else {

        document.getElementById('ps-error').innerHTML = '';
      }

      if (_.isEmpty(gender)) {
        gender = '';
        document.getElementById('gender-error').innerHTML = 'Vui lòng chọn giới tính';
      } else {

        document.getElementById('gender-error').innerHTML = '';
      }

      if (name && email && password && gender){
        // Lưu vào danh sách tài khoản
        console.log(name,email,password,gender);
      }
    }

  </script>

  <style>
    span.haha {
      color: red;
    }
  </style>
</body>
</html>