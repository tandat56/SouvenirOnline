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
                                <th class="text-center" >Hình ảnh</th>
                                <th class="text-center" >Giá</th>
                                <th class="text-center" >Số lượng</th>
                                <th class="text-center" >Tổng tiền</th>
                                <th class="text-center" >Chỉnh sửa</th>
                                <th class="text-center" >Xóa</th>
                            </tr>
                        </thead>
                        <tbody>

                        <c:forEach var="item" items="${Shop}">
                            <tr>
                                <td class="text-center">${item.value.product.productName}</td>
                                <td class="text-center">
                                    <c:set var="image" value="/repository/${item.value.product.image}"/>
                                    <img class="first-img" src="${image}" alt="thumbnail" height="100px" width="100px">
                                </td>
                                <td class="text-center"><fmt:formatNumber type="number" groupingUsed="true" value="${item.value.product.price}"/>₫</td>
                            <td class="text-center">
                              <%--  <input type="number" min="1" max="100" class="span1" id="quantity-cart-${item.key}" value="${item.value.quantity/2}" />--%>
                                  <div class="product-count style">
                                      <div class="count d-flex justify-content-center">
                                          <input type="number" min="1" max="10" step="1" class="span1" id="quantity-cart-${item.key}" value="${item.value.quantity/2}">
                                          <div class="button-group">
                                              <button class="count-btn increment"><i class="fas fa-chevron-up"></i></button>
                                              <button class="count-btn decrement"><i class="fas fa-chevron-down"></i></button>
                                          </div>
                                      </input>
                                  </div>
                                  </div>
                            </td>
                                <td class="text-center"><fmt:formatNumber type="number" groupingUsed="true" value="${item.value.totalPrice/2}"/>₫</td>
                            <td class="text-center ">
                                <button data-id="${item.key}" href="<c:url value="/EditCart/${item.key}"/> " class="btn btn-mini btn-danger edit-cart text-center" type="button">
                                    <span class="icon-edit"> </span>
                                </button>
                            </td>

                            <td class="text-center">
                                <a href="<c:url value="/DeleteCart/${item.key}"/>" class="btn btn-mini btn-danger text-center" type= "button">
                                    <span class="icon-remove"> </span>
                                </a>
                            </td>
                            </tr>
                        </c:forEach>


                        </tbody>
                    </table>
                    <div class="panel-footer mt-5">
                        <a href="/san-pham" class="btn btn-danger mr-4" style="min-height: 30px" >
                            <span class="glyphicon glyphicon-trash"></span> Tiếp tục mua sắm
                        </a>
                        <a href="/thanh-toan" class="btn btn-success" style="min-height: 30px">
                            <span class="glyphicon glyphicon-check"></span> Thanh toán
                        </a>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>
</section>
<content tag="script">
    <script>
        $(".edit-cart").on("click", function (){
            var id = $(this).data("id");
            var quantity = $("#quantity-cart-"+id).val();
            window.location = "EditCart/"+id+"/"+quantity;
        });
    </script>
</content>
</body>
</html>