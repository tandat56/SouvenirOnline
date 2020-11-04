<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
              Trang đăng nhập
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
          <h3 class="title text-capitalize pb-30"> Đăng nhập vào tài khoản của bạn</h3>
          
          <form class="log-in-form">
             <div class="form-group row">
              <label for="staticEmail" class="col-md-3 col-form-label">Email</label>
              <div class="col-md-6 ">
                <input type="text" class="form-control" placeholder="abc@gmail.com" id="staticEmail">
              
                <span class="haha" id="email-error"></span>
              </div>
            </div>

            <div class="form-group row">
              <label for="inputPassword" class="col-md-3 col-form-label">Mật khẩu</label>
              <div class="col-md-6">
                <input type="password" class="form-control" placeholder="Nhập mật khẩu" id="inputPassword">
                <span class="haha" id="ps-error"></span>    
              </div>
            </div>

            </div>
            <div class="form-group row pb-3 text-center">
              <div class="col-md-6 offset-md-3">
                <div class="login-form-links">
                  <a href="#" class="for-get">Quên mật khẩu?</a>
                  <div class="sign-btn">
                    <a href="#" class="btn theme-btn--dark1 btn--md" onclick="save()">Đăng nhập</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="form-group row text-center mb-0">
              <div class="col-12">
                <div class="border-top">
                  <a href="<c:url value='/page-register'/>" class="no-account">Không tài khoản? Tạo một cái ở đây</a>
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  <script type="text/javascript">

    var reg_email = /^[A-Za-z0-9]+([_\.\-]?[A-Za-z0-9])*@[A-Za-z0-9]+([\.\-]?[A-Za-z0-9]+)*(\.[A-Za-z]+)+$/;

    function save() {
      var email = document.getElementById('staticEmail').value;
      var password = document.getElementById('inputPassword').value;

      if (_.isEmpty(email)) {
        document.getElementById('email-error').innerHTML = 'Vui lòng nhập Email';
      } else if (reg_email.test(email) == false) {
        document.getElementById('email-error').innerHTML = 'Không đúng định dạng email';
      } else {
        document.getElementById('email-error').innerHTML = '';
      }

      if (_.isEmpty(password)) {
        document.getElementById('ps-error').innerHTML = 'Vui lòng nhập mật khẩu';
      } else if (password.length <= 5) {
        document.getElementById('ps-error').innerHTML = 'Mật khẩu phải từ 6 tới 16 kí tự';
      } else {
        document.getElementById('ps-error').innerHTML = '';
      }
    }
    function setErrorFor(input, message) {
    const formControl = input.parentElement;
    const span = formControl.querySelector("span");
    formControl.className = "form-control error";
    span.innerText = message;
}

function setSuccessFor(input) {
    const formControl = input.parentElement;
    formControl.className = "form-control success";
}
  </script>

<style>
  span.haha{
    color: red;
  }
</style>
</body>
</html>