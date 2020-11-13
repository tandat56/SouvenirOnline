<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
</head>
<body>

<!-- breadcrumb-section start -->
<nav class="breadcrumb-section theme1 breadcrumb-bg1">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="breadcrumb-title text-center my-20">
          <h2 class="title text-dark text-capitalize">Đăng nhập</h2>
        </div>
      </div>
      <div class="col-12">
        <ol class="breadcrumb bg-transparent m-0 p-0 align-items-center justify-content-center">
          <li class="breadcrumb-item"><a href="<c:url value='/trang-chu'/>">Trang chủ</a></li>
          <li class="breadcrumb-item active" aria-current="page">
            login page
          </li>
        </ol>
      </div>
    </div>
  </div>
</nav>
<!-- breadcrumb-section end -->

<!-- product tab start -->
<div class="my-account pb-70">
  <div class="container grid-wraper">
    <div class="row">
      <div class="col-12">
        <h3 class="title text-capitalize pb-30"> Đăng nhập với tài khoản của bạn</h3>

        <form action="/j_spring_security_check" id="formLogin" method="post" class="log-in-form">
          <div class="form-group row">
            <label for="staticEmail" class="col-md-3 col-form-label">Tài khoản</label>
            <div class="col-md-6">
              <input type="text" class="form-control" id="staticEmail" name="j_username" placeholder="Email Address or User Name">
            </div>
          </div>
          <div class="form-group row">
            <label for="inputPassword" class="col-md-3 col-form-label">Mật khẩu</label>
            <div class="col-md-6">
              <div class="input-group mb-2 mr-sm-2">
                <input name="j_password" type="password" class="form-control" id="inputPassword" placeholder="Password">
                <div class="input-group-prepend">
                  <button type="button" class="input-group-text  theme-btn--dark1 btn--md show-password">hiển thị</button>
                </div>
              </div>

            </div>

          </div>
          <div class="form-group row pb-3 text-center">
            <div class="col-md-6 offset-md-3">
              <div class="login-form-links">
                <a href="#" class="for-get">Quên mật khẩu?</a>
                <div class="sign-btn">
                 <!-- <a href="#" type="submit" class="btn theme-btn--dark1 btn--md">Sign in</a> -->
                  <button type="submit" class="btn theme-btn--dark1 btn--md">Đăng ký</button>
                </div>
              </div>
            </div>
          </div>
          <div class="form-group row text-center mb-0">
            <div class="col-12">
              <div class="border-top">
                <a href="<c:url value='/dang-ky'/>" class="no-account">Chưa có tài khoản? nhấn vào đây!</a>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<!-- product tab end -->

<!-- news-letter start -->
<section class="news-letter-section theme1 bg-white">
  <div class="container">
    <div class="news-letter-wrapper pt-65 pb-65">
      <div class="row">
        <div class="col-12">
          <div class="form-title mb-30 text-center">
            <p class="text mb-10">Special Ofers For Subscribers</p>
            <h4 class="title text text-capitalize">
              Ten Percent Member Discount
            </h4>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-12">
        </div>
      </div>
    </div>
  </div>
</section>
<!-- news-letter end -->


</body>
</html>