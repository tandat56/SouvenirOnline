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
          <h2 class="title text-dark text-capitalize">Tài khoản của tôi</h2>
        </div>
      </div>
      <div class="col-12">
        <ol class="breadcrumb bg-transparent m-0 p-0 align-items-center justify-content-center">
          <li class="breadcrumb-item"><a href="<c:url value='/trang-chu'/>">Trang chủ</a></li>
          <li class="breadcrumb-item active" aria-current="page">
           Tài khoản của tôi
          </li>
        </ol>
      </div>
    </div>
  </div>
</nav>
<!-- breadcrumb-section end -->

<!-- product tab start -->

<div class="my-account pb-40">
    <div class="container grid-wraper">
        <div class="row">
            <div class="col-12">
                <h3 class="title text-capitalize">Tài khoản của tôi</h3>
            </div>
            <!-- My Account Tab Menu Start -->
            <div class="col-lg-3 col-12 mb-30">
                <div class="myaccount-tab-menu nav" role="tablist">
                    <a href="#dashboad" data-toggle="tab"><i class="fas fa-tachometer-alt"></i>
                        Bảng điều khiển</a>

                    <a href="#orders" data-toggle="tab"><i class="fa fa-cart-arrow-down"></i>
                        Đơn hàng</a>

                    <a href="#download" data-toggle="tab"><i class="fas fa-cloud-download-alt"></i>
                        Tải xuống</a>

                    <a href="#payment-method" data-toggle="tab"><i class="fa fa-credit-card"></i>
                        Thanh toán
                        phương pháp</a>

                    <a href="#address-edit" data-toggle="tab"><i class="fa fa-map-marker"></i>
                        Địa chỉ</a>

                    <a href="#account-info" data-toggle="tab" class="active"><i class="fa fa-user"></i> 
                        Chi tiết tài khoản</a>

                    <a href="login.html"> <i class="fas fa-sign-out-alt"></i>Đăng xuất</a>
                </div>
            </div>
            <!-- My Account Tab Menu End -->

            <!-- My Account Tab Content Start -->
            <div class="col-lg-9 col-12 mb-30">
                <div class="tab-content" id="myaccountContent">
                    <!-- Single Tab Content Start -->
                    <div class="tab-pane fade" id="dashboad" role="tabpanel">
                        <div class="myaccount-content">
                            <h3>Bảng điều khiển</h3>

                            <div class="welcome mb-20">
                                <p>Hello, <strong>Alex Tuntuni</strong> (If Not <strong>Tuntuni !</strong><a href="login-register.html" class="logout"> Logout</a>)</p>
                            </div>

                            <p class="mb-0">From your account dashboard. you can easily check &amp; view your
                                recent orders, manage your shipping and billing addresses and edit your
                                password and account details.</p>
                        </div>
                    </div>
                    <!-- Single Tab Content End -->

                    <!-- Single Tab Content Start -->
                    <div class="tab-pane fade" id="orders" role="tabpanel">
                        <div class="myaccount-content">
                            <h3>Orders</h3>

                            <div class="myaccount-table table-responsive text-center">
                                <table class="table table-bordered">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>No</th>
                                            <th>Name</th>
                                            <th>Date</th>
                                            <th>Status</th>
                                            <th>Total</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Mostarizing Oil</td>
                                            <td>Aug 22, 2018</td>
                                            <td>Pending</td>
                                            <td>$45</td>
                                            <td><a href="shopping-cart.html" class="ht-btn black-btn">View</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Katopeno Altuni</td>
                                            <td>July 22, 2018</td>
                                            <td>Approved</td>
                                            <td>$100</td>
                                            <td><a href="shopping-cart.html" class="ht-btn black-btn">View</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Murikhete Paris</td>
                                            <td>June 12, 2017</td>
                                            <td>On Hold</td>
                                            <td>$99</td>
                                            <td><a href="shopping-cart.html" class="ht-btn black-btn">View</a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- Single Tab Content End -->

                    <!-- Single Tab Content Start -->
                    <div class="tab-pane fade" id="download" role="tabpanel">
                        <div class="myaccount-content">
                            <h3>Tải xuống</h3>

                            <div class="myaccount-table table-responsive text-center">
                                <table class="table table-bordered">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>Sản phẩm</th>
                                            <th>Ngày</th>
                                            <th>Hạn ngày</th>
                                            <th>Tải xuống</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <tr>
                                            <td>Mostarizing Oil</td>
                                            <td>Aug 22, 2018</td>
                                            <td>Yes</td>
                                            <td><a href="#" class="ht-btn black-btn">Tải xuống tệp tin</a></td>
                                        </tr>
                                        <tr>
                                            <td>Katopeno Altuni</td>
                                            <td>Sep 12, 2018</td>
                                            <td>Never</td>
                                            <td><a href="#" class="ht-btn black-btn">Tải xuống tệp tin</a></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- Single Tab Content End -->

                    <!-- Single Tab Content Start -->
                    <div class="tab-pane fade" id="payment-method" role="tabpanel">
                        <div class="myaccount-content">
                            <h3>Phương thức thanh toán</h3>

                            <p class="saved-message">Bạn chưa thể lưu Phương thức thanh toán của mình.</p>
                        </div>
                    </div>
                    <!-- Single Tab Content End -->

                    <!-- Single Tab Content Start -->
                    <div class="tab-pane fade" id="address-edit" role="tabpanel">
                        <div class="myaccount-content">
                            <h3>Billing Address</h3>

                            <address>
                                <p><strong>Alex Tuntuni</strong></p>
                                <p>1355 Market St, Suite 900 <br>
                                    San Francisco, CA 94103</p>
                                <p>Mobile: (123) 456-7890</p>
                            </address>

                            <a href="#" class="ht-btn black-btn d-inline-block edit-address-btn"><i class="fa fa-edit"></i>Edit Address</a>
                        </div>
                    </div>
                    <!-- Single Tab Content End -->

                    <!-- Single Tab Content Start -->
                    <div class="tab-pane fade active show" id="account-info" role="tabpanel">
                        <div class="myaccount-content">
                            <h3>Chi tiết tài khoản</h3>

                            <div class="account-details-form">
                                <form action="#">
                                    <div class="row">
                                        <div class="col-lg-6 col-12 mb-30">
                                            <input id="first-name" placeholder="Họ" type="text">
                                        </div>

                                        <div class="col-lg-6 col-12 mb-30">
                                            <input id="last-name" placeholder="Tên" type="text">
                                        </div>

                                        <div class="col-12 mb-30">
                                            <input id="display-name" placeholder="Tên hiển thị" type="text">
                                        </div>

                                        <div class="col-12 mb-30">
                                            <input id="email" placeholder="Email" type="email">
                                        </div>

                                        <div class="col-12 mb-30">
                                            <h4>Đổi mật khẩu</h4>
                                        </div>

                                        <div class="col-12 mb-30">
                                            <input id="current-pwd" placeholder="Mật khẩu hiện tại" type="password">
                                        </div>

                                        <div class="col-lg-6 col-12 mb-30">
                                            <input id="new-pwd" placeholder="Mật khẩu mới" type="password">
                                        </div>

                                        <div class="col-lg-6 col-12 mb-30">
                                            <input id="confirm-pwd" placeholder="Nhập lại mật khẩu mới" type="password">
                                        </div>

                                        <div class="col-12">
                                            <button class="btn theme-btn--dark1 btn--md">Lưu</button>
                                        </div>

                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Single Tab Content End -->
                </div>
            </div>
            <!-- My Account Tab Content End -->
        </div>
    </div>
</div>
</body>
</html>