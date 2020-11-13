<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách yêu thích</title>
</head>
<body>
<nav class="breadcrumb-section theme1 breadcrumb-bg1">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="breadcrumb-title text-center my-20">
          <h2 class="title text-dark text-capitalize">Danh sách yêu thích</h2>
        </div>
      </div>
      <div class="col-12">
        <ol class="breadcrumb bg-transparent m-0 p-0 align-items-center justify-content-center">
          <li class="breadcrumb-item"><a href="<c:url value='/trang-chu'/>">Trang chủ</a></li>
          <li class="breadcrumb-item active" aria-current="page">
            Trang danh sách yêu thích
          </li>
        </ol>
      </div>
    </div>
  </div>
</nav>
<!-- breadcrumb-section end -->

<!-- product tab start -->
<section class="whish-list-section theme1 pb-70">
    <div class="container grid-wraper">
        <div class="row">
            <div class="col-12">
                <h3 class="title pb-30 text-center text-md-left text-capitalize">Danh sách yêu thích</h3>
                <div class="table-responsive">
                    <table class="table mb-0">
                        <thead class="thead-light">
                            <tr>
                                <th class="text-center" scope="col">Hình ảnh </th>
                                <th class="text-center" scope="col">Tên sản phẩm</th>
                                <th class="text-center" scope="col">Tình trạng kho</th>
                                <th class="text-center" scope="col">Qty</th>
                                <th class="text-center" scope="col">Gía</th>
                                <th class="text-center" scope="col">Hành động</th>
                                <th class="text-center" scope="col">Thanh toán</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th class="text-center" scope="row">
                                    <img src="<c:url value='/template/web/assets/img/product/2.jpg'/>" alt="img">
                                </th>
                                <td class="text-center">
                                    <span class="whish-title">Chống nước và gió</span>
                                </td>
                                <td class="text-center">
                                    <span class="badge badge-danger position-static my-badge">Kho</span>
                                </td>
                                <td class="text-center">
                                    <div class="product-count style">
                                        <div class="count d-flex justify-content-center">
                                            <input type="number" min="1" max="10" step="1" value="1">
                                            <div class="button-group">
                                                <button class="count-btn increment"><i class="fas fa-chevron-up"></i></button>
                                                <button class="count-btn decrement"><i class="fas fa-chevron-down"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td class="text-center">
                                    <span class="whish-list-price">
                                        $38.24
                                    </span></td>

                                <td class="text-center">
                                    <a href="#"> <span class="trash"><i class="fas fa-trash-alt"></i> </span></a>
                                </td>
                                <td class="text-center">
                                    <a href="#" class="btn theme-btn--dark1 btn--xl text-uppercase">Mua ngay</a>
                                </td>
                            </tr>
                            <tr>
                                <th class="text-center" scope="row">
                                    <img src="<c:url value='/template/web/assets/img/product/4.jpg'/>" alt="img">
                                </th>
                                <td class="text-center">
                                    <span class="whish-title">Originals Kaval Windbreaker</span>
                                </td>
                                <td class="text-center">
                                    <span class="badge badge-danger position-static my-badge">kho</span>
                                </td>
                                <td class="text-center">
                                    <div class="product-count style">
                                        <div class="count d-flex justify-content-center">
                                            <input type="number" min="1" max="10" step="1" value="1">
                                            <div class="button-group">
                                                <button class="count-btn increment"><i class="fas fa-chevron-up"></i></button>
                                                <button class="count-btn decrement"><i class="fas fa-chevron-down"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td class="text-center">
                                    <span class="whish-list-price">
                                        $38.24
                                    </span>
                                </td>

                                <td class="text-center">
                                    <a href="#"> <span class="trash"><i class="fas fa-trash-alt"></i> </span></a>
                                </td>
                                <td class="text-center">
                                    <a href="#" class="btn theme-btn--dark1 btn--xl text-uppercase">Mua ngay</a>
                                </td>
                            </tr>
                            <tr>
                                <th class="text-center" scope="row">
                                    <img src="<c:url value='/template/web/assets/img/product/6.jpg'/>" alt="img">

                                </th>
                                <td class="text-center">
                                    <span class="whish-title">New Balance Arishi</span>
                                </td>
                                <td class="text-center">
                                    <span class="badge badge-danger position-static my-badge">kho</span>
                                </td>
                                <td class="text-center">
                                    <div class="product-count style">
                                        <div class="count d-flex justify-content-center">
                                            <input type="number" min="1" max="10" step="1" value="1">
                                            <div class="button-group">
                                                <button class="count-btn increment"><i class="fas fa-chevron-up"></i></button>
                                                <button class="count-btn decrement"><i class="fas fa-chevron-down"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td class="text-center">
                                    <span class="whish-list-price">
                                        $38.24
                                    </span></td>

                                <td class="text-center">
                                    <a href="#"> <span class="trash"><i class="fas fa-trash-alt"></i> </span></a>
                                </td>
                                <td class="text-center">
                                    <a href="#" class="btn theme-btn--dark1 btn--xl text-uppercase">Mua ngay</a>
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