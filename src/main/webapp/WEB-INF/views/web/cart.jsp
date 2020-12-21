<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Giỏ hàng</title>
</head>

<body>
<nav class="breadcrumb-section theme1 breadcrumb-bg1">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="breadcrumb-title text-center my-20">
          <h2 class="title text-dark text-capitalize">Giỏ hàng</h2>
        </div>
      </div>
      <div class="col-12">
        <ol class="breadcrumb bg-transparent m-0 p-0 align-items-center justify-content-center">
          <li class="breadcrumb-item"><a href="<c:url value='/trang-chu'/>">Trang chủ</a></li>
          <li class="breadcrumb-item active" aria-current="page">
            Giỏ hàng
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
                <h3 class="title pb-25 text-center text-md-left text-capitalize">Giỏ hàng</h3>
                <div class="table-responsive">
                    <table class="table mb-0">
                        <thead class="thead-light">
                            <tr class="text-center">
                                <th class="text-center" >Tên sản phẩm</th>
                                <th class="text-center" >Giá</th>
                                <th class="text-center" >Số lượng</th>
                                <th class="text-center" >Tổng tiền</th>
                                <th class="text-center" >Chỉnh sửa</th>
                                <th class="text-center" >Xóa</th>
                            </tr>
                        </thead>
                        <tbody>

                        <c:forEach var="item" items="${Shop}">

                            <td class="text-center">${item.value.quantity/2}</td>
                            <td class="text-center">${item.value.totalPrice/2}</td>
                            <td class="text-center">
                                <input type="number" min="1" max="100" class="span1" style="max-width: 34px" placeholder="1">
                            </td>
                            <td class="text-center">tong tien</td>
                            <td class="text-center">
                                <a href="<c:url value="/EditCart/${item.key}"/> " class="btn btn-mini btn-danger text-center" type="button">
                                    <span class="icon-edit"> </span>
                                </a>
                            </td>
                            <td class="text-center">
                                <a href="<c:url value="/DeleteCart/${item.key}"/>" class="btn btn-mini btn-danger text-center" type= "button">
                                    <span class="icon-remove"> </span>
                                </a>
                            </td>


                        </c:forEach>








                        </tbody>
                    </table>
                    <div class="panel-footer">
                        <a onclick="cart.clear()" href="" class="btn btn-danger">
                            <span class="glyphicon glyphicon-trash"></span> Clear
                        </a>
                        <a href="/thanh-toan" class="btn btn-success">
                            <span class="glyphicon glyphicon-check"></span> Checkout
                        </a>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>