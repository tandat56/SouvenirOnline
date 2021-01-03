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

      <%--   thêm dòng này vào đạt --%>
        <c:if test="${param.incorrectAccount != null}">
          <div class="alert alert-danger">
            Tài khoản hoặc mật khẩu không đúng
          </div>
        </c:if>
        <c:if test="${param.accessDenied != null}">
          <div class="alert alert-danger">
            Bạn không có quyền sử dụng chức năng này
          </div>
        </c:if>

        <form action="/j_spring_security_check" id="formLogin" method="post" class="log-in-form">
          <div class="form-group row">
            <label for="staticEmail" class="col-md-3 col-form-label">Tài khoản</label>
            <div class="col-md-6">
              <input type="text" class="form-control" id="staticEmail" name="j_username" placeholder="Tài khoản">
            </div>
          </div>
          <div class="form-group row">
            <label for="inputPassword" class="col-md-3 col-form-label">Mật khẩu</label>
            <div class="col-md-6">
              <div class="input-group mb-2 mr-sm-2">
                <input name="j_password" type="password" class="form-control" id="inputPassword" placeholder="Mật khẩu">
                <div class="input-group-prepend">
                  <button type="button" onclick="myFunction()" class="input-group-text  theme-btn--dark1 btn--md show-password" >Hiển thị</button>
                </div>
              </div>
            </div>
          </div>
          <div class="form-group row pb-3 text-center">
            <div class="col-md-6 offset-md-3">
              <div class="login-form-links">

                <div class="sign-btn">
                 <!-- <a href="#" type="submit" class="btn theme-btn--dark1 btn--md">Sign in</a> -->
                  <button type="submit" class="btn theme-btn--dark1 btn--md">Đăng nhập</button>
                </div>
              </div>
            </div>
          </div>
          <div class="form-group row text-center mb-0">
            <div class="col-12">
              <div class="border-top">
                <a href="<c:url value='/api/registration'/>" class="no-account">Chưa có tài khoản? nhấn vào đây!</a>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<!-- product tab end -->
<script>
  function myFunction() {
    var x = document.getElementById("inputPassword");
    if (x.type === "password") {
      x.type = "text";
    } else {
      x.type = "password";
    }
  }
  </script>
</body>
</html>