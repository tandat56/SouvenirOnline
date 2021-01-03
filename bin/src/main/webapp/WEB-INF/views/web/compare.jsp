<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>So sánh</title>
</head>
<body>
<nav class="breadcrumb-section theme1 breadcrumb-bg1">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="breadcrumb-title text-center my-20">
          <h2 class="title text-dark text-capitalize">So sánh</h2>
        </div>
      </div>
      <div class="col-12">
        <ol class="breadcrumb bg-transparent m-0 p-0 align-items-center justify-content-center">
          <li class="breadcrumb-item"><a href="<c:url value='/trang-chu'/>">Trang chủ</a></li>
          <li class="breadcrumb-item active" aria-current="page">
            Trang so sánh
          </li>
        </ol>
      </div>
    </div>
  </div>
</nav>
<!-- breadcrumb-section end -->

<!-- product tab start -->
<section class="compare-section theme1 pb-70">
    <div class="container grid-wraper">
        <div class="row">
            <div class="col-12">
                <h3 class="title pb-25 text-center text-md-left text-capitalize">So sánh</h3>
                <div class="table-responsive">
                    <table class="table">
                        <thead class="thead-light">
                            <tr>
                                <th scope="col">Thông tin sản phẩm</th>
                                <th scope="col" class="text-center"> <img src="<c:url value='/template/web/assets/img/product/1.jpg'/>" alt="img">
                                    <span class="sub-title d-block">Water and Wind Resistant</span>
                                    <a href="<c:url value='/gio-hang'/>" class="btn  theme-btn--dark1 btn--xl"> thêm vào giỏ hàng</a>
                                </th>
                                <th scope="col" class="text-center"> <img src="<c:url value='/template/web/assets/img/product/2.jpg'/>" alt="img">
                                    <span class="sub-title d-block">Originals Kaval Windbreaker</span>
                                    <a href="<c:url value='/gio-hang'/>" class="btn  theme-btn--dark1 btn--xl"> thêm vào giỏ hàng</a>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">
                                    Gía
                                </th>
                                <td class="text-center">
                                    <span class="whish-list-price">
                                        $38.24
                                    </span>
                                </td>
                                <td class="text-center">
                                    <span class="whish-list-price">
                                        $38.24
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    Mô tả
                                </th>
                                <td class="text-center">
                                    <p>Water and Wind Resistant</p>
                                </td>
                                <td class="text-center">
                                    <p>Originals Kaval Windbreaker</p>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    Khả dụng
                                </th>
                                <td class="text-center">
                                    <span class="badge badge-danger position-static my-badge">In Stock</span>
                                </td>
                                <td class="text-center">
                                    <span class="badge badge-danger position-static my-badge">In Stock</span>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">
                                   Nặng
                                </th>
                                <td class="text-center">
                                    500 ml
                                </td>
                                <td class="text-center">
                                    750 ml
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    Màu sắc
                                </th>
                                <td class="text-center">
                                    pink
                                </td>
                                <td class="text-center">
                                    black
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>