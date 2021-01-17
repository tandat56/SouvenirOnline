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
                                            <form:hidden path="userID"/>
                                            <label  class="col-md-3 col-form-label">Họ tên* :</label>
                                            <div class="col-md-6">

                                                <form:input type="text" path="name" class="form-control" placeholder="Mời nhập họ tên" />
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="email" class="col-md-3 col-form-label">Email</label>
                                            <div class="col-md-6">
                                                <form:input class="form-control" path="email" cols="3"  rows="3" />
                                            </div>
                                        </div>
                                    <div class="form-group row">
                                        <label for="phone" class="col-md-3 col-form-label">Số diện thoại</label>
                                        <div class="col-md-6">
                                            <form:input class="form-control" path="phone" cols="3"  rows="3" />
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="address" class="col-md-3 col-form-label">Địa chỉ</label>
                                        <div class="col-md-6">
                                            <form:input class="form-control" path="address" cols="3"  rows="3" />
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="note" class="col-md-3 col-form-label">Ghi chú</label>
                                        <div class="col-md-6">
                                            <form:input class="form-control" path="note" cols="56"  rows="8" />
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label  class="col-md-3 col-form-label">Tổng tiền</label>
                                        <div class="col-md-6">
                                            <c:if test="${not empty sessionScope.totalPriceCart }">

                                                <c:set var="view2" value="${sessionScope.totalPriceCart }"/>
                                                <form:label type="text" path="total" class="form-control" value="${sessionScope.totalPriceCart }"><fmt:formatNumber type="number" groupingUsed="true" value="${view2}"/>₫</form:label>

                                            </c:if>
                                            <c:if test="${empty sessionScope.totalPriceCart }">

                                                <form:label type="text" path="total" class="form-control">0₫</form:label>

                                            </c:if>

                                        </div>
                                     <%--       <c:set var="view2" value="${sessionScope.totalPriceCart }"/>
                                            <form:label type="text" path="amount" class="form-control" value="${sessionScope.totalPriceCart }"><fmt:formatNumber type="number" groupingUsed="true" value="${view2}"/>₫</form:label>
                                       --%>
                                    </div>
                                        <div class="text-center">
                                            <button type="submit" class="btn theme-btn--dark1 btn--md">Thanh toán</button>
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
</body>
</html>
