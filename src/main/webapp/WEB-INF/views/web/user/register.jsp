<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng Kí</title>
</head>
<body>

<!-- breadcrumb-section start -->
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
                        Register Page
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
                <h3 class="title text-capitalize pb-30"> Đăng kí</h3>
                <c:if test="${not empty message}">
                    <div class="alert alert-${alert}">
                            ${message}
                    </div>
                </c:if>
                <form:form action="/api/registration" modelAttribute="userDTO" method="POST" class="log-in-form">
                    <div class="form-group row">
                        <label class="col-md-3 col-form-label">Họ tên</label>
                        <div class="col-md-6">
                            <form:input type="text" class="form-control" path="fullName" placeholder="Nhập họ và tên"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="userName" class="col-md-3 col-form-label">Tài khoản</label>
                        <div class="col-md-6">
                            <form:input type="text" class="form-control" path="userName" placeholder="Tài khoản"/>
                        </div>
                    </div>
                    <form:hidden path="status" value="1"/>
                    <div class="form-group row">
                        <label class="col-md-3 col-form-label">Mật khẩu</label>
                        <div class="col-md-6">
                            <div class="input-group mb-2 mr-sm-2">
                                <form:input type="password" class="form-control" path="password"
                                            placeholder="Mật khẩu"/>
                                <div class="input-group-prepend">
                                    <button type="button" onclick="myFunction()"
                                            class="input-group-text  theme-btn--dark1 btn--md show-password">Hiển thị
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group row pb-3 text-center">
                        <div class="col-md-6 offset-md-3">
                            <div class="login-form-links">

                                <div class="sign-btn">
                                    <!-- <a href="#" type="submit" class="btn theme-btn--dark1 btn--md">Sign in</a> -->
                                    <button type="submit" class="btn theme-btn--dark1 btn--md">Đăng kí</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form:form>
                <div class="col-12">
                    <div class="border-top text-center">
                        <a href="<c:url value='/dang-nhap'/>" class="no-account">Đã có tài khoản? Đăng nhập! </a>
                    </div>
                </div>
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