<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
                        <tr>
                            <th class="text-center">ID</th>
                            <th class="text-center">Tên sản phẩm</th>
                            <th class="text-center">Giá</th>
                            <th class="text-center">Số lượng</th>
                            <th class="text-center">Tổng tiền</th>
                            <th class="text-center"></th>
                        </tr>
                        </thead>
                        <tbody class="cart-items"></tbody>
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
    &nbsp;
</section>

<form:form action="/order/checkout" modelAttribute="bill">
    <section class="check-out-section pb-40">
        <div class="container grid-wraper">
            <div class="row">
                <div class="col-lg-12 mb-30">
                    <div id="accordion">
                        <div class="card">
                            <div class="card-header" id="headingOne">
                                <h5 class="mb-0">
                                    <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne"
                                            aria-expanded="true" aria-controls="collapseOne">
                                        Thông tin
                                    </button>
                                </h5>
                            </div>
                            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne"
                                 data-parent="#accordion">
                                <div class="card-body">
                                        <div class="form-group row">
                                            <label for="fullName" class="col-md-3 col-form-label">Họ và tên :</label>
                                            <div class="col-md-6">
                                                <input type="text" id="fullName" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-md-3 col-form-label">Ngày đặt :</label>
                                            <div class="col-md-6">
                                                    <%--                                            <form:input path="setCreatedDate" class="form-control" readonly="true"/>--%>
                                                <input type="text" id="Ordate" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-md-3 col-form-label">Total :</label>
                                            <div class="col-md-6">
                                                    <%--<form:input path="unitPrice"  class="form-control" readonly="true"/>--%>
                                                <input type="text" id="Ordate" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="notice2" class="col-md-3 col-form-label">Địa chỉ giao hàng
                                                :</label>
                                            <div class="col-md-6">
                                                <textarea class="form-control" name="notice2" id="notice2" cols="56"
                                                          rows="3"></textarea>
                                            </div>
                                        </div>
                                        <input name="details" type="hidden">
                                        <div class="text-center">
                                            <button class="btn theme-btn--dark1 btn--md ">Thanh toán</button>
                                        </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</form:form>
<script>
    $(function () {
        cart.show_all();
        $("[name=amount]").val(cart.amount);
        $("[name=details]").val(cart.details); // lấy id và số lượng gán vào name = details
    })
</script>
</body>
</html>
