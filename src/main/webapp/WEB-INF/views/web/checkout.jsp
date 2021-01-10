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

<form:form action="/thanh-toan" method="POST" modelAttribute="bill">
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
                                        Thông tin thanh toán
                                    </button>
                                </h5>
                            </div>
                            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne"
                                 data-parent="#accordion">
                                <div class="card-body">
                                        <div class="form-group row">
                                            <label for="userOrder" class="col-md-3 col-form-label">Họ tên* :</label>
                                            <div class="col-md-6">
                                                <form:input type="text" path="userOrder" class="form-control" placeholder="Mời nhập họ tên" />
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="shipAddress" class="col-md-3 col-form-label">Điạ chỉ*</label>
                                            <div class="col-md-6">
                                                <form:textarea class="form-control" path="shipAddress" cols="3"  rows="3" />
                                            </div>
                                        </div>
                                    <div class="form-group row">
                                        <label  class="col-md-3 col-form-label">Tổng tiền</label>
                                        <div class="col-md-6">
                                            <c:forEach var="item5" items="${sessionScope.Shop}">
                                              <%--  <form:textarea class="form-control" id="amount" path="amount" cols="30"  rows="3" value="${item5.value.totalPrice}" />--%>
                                                <td class="text-center"><fmt:formatNumber type="number" groupingUsed="true" value="${item5}"/>₫</td>
                                            </c:forEach>
                                          <%-- <c:set var="lala" value="${sessionScope.totalPriceCart}" />--%>


                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="phoneNumber" class="col-md-3 col-form-label"> Số điện thoại</label>
                                        <div class="col-md-6">
                                            <form:textarea class="form-control" path="phoneNumber" cols="3"  rows="3" />
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="createdDate" class="col-md-3 col-form-label">Ngày đặt</label>
                                        <div class="col-md-6">
                                                <form:textarea class="form-control" path="createdDate" cols="3" rows="3" />
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
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script>
    $( document ).ready(function() {
        var total = $('#amount').val();
        /*     var myJSON = JSON.stringify(se);
            var tl = JSON.stringify(total);
             var bl = parseInt(tl);*/
        console.log(total);
    });

</script>
<%--<<script>
    function amount() {
        var amount = document.getElementById("auntmo").value;
        document.getElementById("amount").setAttribute('amount', amount);
    }
</script>--%>
</body>
</html>
