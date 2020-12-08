<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sản phẩm</title>
</head>
<body>

<!-- breadcrumb-section start -->
<nav class="breadcrumb-section theme1 breadcrumb-bg1">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="breadcrumb-title text-center my-20">
                    <h2 class="title text-dark text-capitalize">Sản phẩm</h2>
                </div>
            </div>
            <div class="col-12">
                <ol class="breadcrumb bg-transparent m-0 p-0 align-items-center justify-content-center">
                    <li class="breadcrumb-item"><a href="<c:url value='/trang-chu'/> ">Trang chủ</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Sản phẩm</li>
                </ol>
            </div>
        </div>
    </div>
</nav>
<!-- breadcrumb-section end -->
<!-- product tab start -->
<div class="product-tab pb-40">
    <div class="container grid-wraper">
        <div class="row">
            <div class="col-lg-9 mb-30">
                <div class="grid-nav-wraper mb-30">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-6 mb-3 mb-md-0">
                            <nav class="shop-grid-nav">
                                <ul class="nav nav-pills align-items-center" id="pills-tab" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="pills-home-tab" data-toggle="pill"
                                           href="#pills-home" role="tab" aria-controls="pills-home"
                                           aria-selected="true">
                                            <i class="fa fa-th"></i>

                                        </a>
                                    </li>
                                    <li class="nav-item mr-0">
                                        <a class="nav-link" id="pills-profile-tab" data-toggle="pill"
                                           href="#pills-profile" role="tab" aria-controls="pills-profile"
                                           aria-selected="false"><i class="fa fa-list"></i></a>
                                    </li>
                                    <li><span class="total-products text-capitalize">There are 13 products.</span></li>
                                </ul>
                            </nav>
                        </div>
                        <div class="col-12 col-md-6 position-relative">
                            <div class="shop-grid-button d-flex align-items-center">
                                <span class="sort-by">Sort by:</span>
                                <button class="btn-dropdown d-flex justify-content-between" type="button"
                                        id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                    Relevance <span class="ion-android-arrow-dropdown"></span>
                                </button>
                                <div class="dropdown-menu shop-grid-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="#">Relevance</a>
                                    <a class="dropdown-item" href="#"> Name, A to Z</a>
                                    <a class="dropdown-item" href="#"> Name, Z to A</a>
                                    <a class="dropdown-item" href="#"> Price, low to high</a>
                                    <a class="dropdown-item" href="#"> Price, high to low</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- product-tab-nav end -->
                <div class="tab-content" id="pills-tabContent">
                    <!-- first tab-pane -->
                    <div class="tab-pane fade show active" id="pills-home" role="tabpanel"
                         aria-labelledby="pills-home-tab">


                        <div class="row grid-view theme1">

                            <c:forEach var="item" items="${products}">

                                <div class="col-sm-6 col-md-4 mb-30">
                                    <div class="card product-card">
                                        <div class="card-body p-0">
                                            <div class="product-thumbnail position-relative">
                                                <span class="badge badge-danger top-left">Mới</span>
                                                <a href="<c:url value="/chi-tiet-san-pham" />" />
                                                <c:set var="image" value="/repository/${item.image}"/>
                                                <img class="first-img"
                                                     src="${image}"
                                                     alt="thumbnail" height="300px" width="300px">
                                                </a>
                                                <!-- product links -->
                                                <div class="product-links d-flex d-flex justify-content-between">
                                                    <button class="pro-btn" data-toggle="modal"
                                                            data-target="#add-to-cart" tabindex="0">Thêm vào giỏ hàng
                                                    </button>
                                                    <ul class="d-flex justify-content-center">
                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#quick-view"
                                                               tabindex="0">
                                                                <span data-toggle="tooltip" data-placement="bottom"
                                                                      title="" class="ion-ios-search-strong"
                                                                      data-original-title="Quick view"></span>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#compare"
                                                               tabindex="0">
                                                                <span data-toggle="tooltip" data-placement="bottom"
                                                                      title="" class="ion-ios-shuffle-strong"
                                                                      data-original-title="Add to compare"></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="wishlist.html" tabindex="0">
                                                                <span data-toggle="tooltip" data-placement="bottom"
                                                                      title="" class="ion-android-favorite-outline"
                                                                      data-original-title="add to wishlist"> </span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                    <!-- product links end-->
                                                </div>
                                                <!-- product links end-->
                                            </div>
                                            <div class="product-desc">
                                                <h3 class="title"><a href="shop-grid-4-column.html"> ${item.title}</a></h3>
                                                <div class="star-rating my-10">
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star de-selected"></span>
                                                </div>
                                                <h6 class="product-price"><fmt:formatNumber type="number" groupingUsed="true" value="${item.price}" /> ₫</h6>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- product-list End -->
                                </div>

                            </c:forEach>



                        </div>
                    </div>


                    <!-- second tab-pane -->
                    <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                        <div class="row grid-view-list theme1">
                            <div class="col-12 mb-30">
                                <div class="card product-card">
                                    <div class="card-body p-0">
                                        <div class="media flex-column flex-sm-row">
                                            <div class="product-thumbnail position-relative">
                                                <span class="badge badge-danger top-left">New</span>
                                                <a href="single-product.html">
                                                    <img class="first-img" src="assets/img/product/1.jpg"
                                                         alt="thumbnail">
                                                </a>
                                                <!-- product links -->
                                                <div class="product-links d-flex d-flex justify-content-between">
                                                    <button class="pro-btn" data-toggle="modal"
                                                            data-target="#add-to-cart" tabindex="0">Add
                                                        to cart
                                                    </button>
                                                    <ul class="d-flex justify-content-center">
                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#quick-view"
                                                               tabindex="0">
                                                                <span data-toggle="tooltip" data-placement="bottom"
                                                                      title="" class="ion-ios-search-strong"
                                                                      data-original-title="Quick view"></span>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#compare"
                                                               tabindex="0">
                                                                <span data-toggle="tooltip" data-placement="bottom"
                                                                      title="" class="ion-ios-shuffle-strong"
                                                                      data-original-title="Add to compare"></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="wishlist.html" tabindex="0">
                                                                <span data-toggle="tooltip" data-placement="bottom"
                                                                      title="" class="ion-android-favorite-outline"
                                                                      data-original-title="add to wishlist"> </span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                    <!-- product links end-->
                                                </div>
                                                <!-- product links end-->
                                            </div>
                                            <div class="media-body pl-sm-4 mt-30 mt-sm-0">
                                                <div class="product-desc">
                                                    <h3 class="title"><a href="shop-grid-4-column.html">New Luxury
                                                        Men's Slim Fit Shirt Short Sleeve...</a></h3>
                                                    <div class="star-rating mb-10 mt-10">
                                                        <span class="ion-ios-star"></span>
                                                        <span class="ion-ios-star"></span>
                                                        <span class="ion-ios-star"></span>
                                                        <span class="ion-ios-star"></span>
                                                        <span class="ion-ios-star de-selected"></span>
                                                    </div>
                                                    <h6 class="product-price">$11.90</h6>
                                                </div>
                                                <div class="availability-list pb-30 mt-20 border-bottom">
                                                    <p>Availability: <span>1200 In Stock</span></p>
                                                </div>
                                                <ul class="product-list-des">
                                                    <li>
                                                        Block out the haters with the fresh adidas® Originals Kaval
                                                        Windbreaker
                                                        Jacket.
                                                    </li>
                                                    <li>
                                                        Part of the Kaval Collection.
                                                    </li>
                                                    <li>
                                                        Regular fit is eased, but not sloppy, and perfect for any
                                                        activity.
                                                    </li>
                                                    <li>
                                                        Plain-woven jacket specifically constructed for freedom of
                                                        movement.
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- product-list End -->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <nav class="pagination-section mt-30">
                            <div class="row align-items-center">
                                <div class="col-12">
                                    <ul class="pagination justify-content-center">
                                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                        <li class="page-item">
                                            <a class="page-link" href="#"><i class="ion-chevron-right"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 mb-30 order-lg-first">
                <aside class="left-sidebar theme1">
                    <!-- search-filter start -->
                    <div class="search-filter">
                        <div class="check-box-inner pt-0">
                            <h4 class="title">Sản phẩm</h4>
                        </div>

                    </div>
                    <c:forEach var="item1" items="${categories.listResult}">

                    <ul id="offcanvas-menu2" class="blog-ctry-menu">
                        <li><a href="<c:url value='/san-pham/danh-sach-theo-the-loai/${item1.code}'/>">${item1.name}</a>
                                                            <%--  <ul class="category-sub-menu">
                                                                    <li><a href="#">Sub menu</a></li>

                                                                </ul>--%>

                                                      </ul>

                    </c:forEach>

                            <div class="search-filter border-top mt-45 pt-45">
                                <form action="#">
                                    <div class="check-box-inner pt-0">
                                        <h4 class="title">Sắp xếp theo</h4>
                                        <h4 class="sub-title pt-10">Thể loại</h4>
                                        <div class="filter-check-box">
                                            <input type="checkbox" id="20820">
                                            <label for="20820">Thời trang<span>(13)</span></label>
                                        </div>
                                        <div class="filter-check-box">
                                            <input type="checkbox" id="20821">
                                            <label for="20821">Lưu niệm<span>(20)</span></label>
                                        </div>
                                        <div class="filter-check-box">
                                            <input type="checkbox" id="20822">
                                            <label for="20822">Đồ chơi<span>(13)</span></label>
                                        </div>
                                        <div class="filter-check-box">
                                            <input type="checkbox" id="20823">
                                            <label for="20822">Linh tinh<span>(11)</span></label>
                                        </div>
                                    </div>
                                    <!-- check-box-inner -->
                                    <div class="check-box-inner mt-10">
                                        <h4 class="sub-title">Giá</h4>
                                        <div class="price-filter mt-10">
                                            <div class="price-slider-amount">
                                                <input type="text" id="amount" name="price" readonly=""
                                                       placeholder="Add Your Price">
                                            </div>
                                            <div id="slider-range"></div>
                                        </div>
                                    </div>
                                    <div class="check-box-inner mt-10">
                                        <h4 class="sub-title">Size</h4>
                                        <div class="filter-check-box">
                                            <input type="checkbox" id="test9">
                                            <label for="test9">s <span>(2)</span></label>
                                        </div>
                                        <div class="filter-check-box">
                                            <input type="checkbox" id="test10">
                                            <label for="test10">m <span>(2)</span></label>
                                        </div>
                                        <div class="filter-check-box">
                                            <input type="checkbox" id="test11">
                                            <label for="test11">l <span>(2)</span></label>
                                        </div>
                                        <div class="filter-check-box">
                                            <input type="checkbox" id="test12">
                                            <label for="test12">xl <span>(2)</span></label>
                                        </div>
                                    </div>
                                    <!-- check-box-inner -->
                                    <div class="check-box-inner mt-10">
                                        <h4 class="sub-title">Màu sắc</h4>
                                        <div class="filter-check-box color-grey">
                                            <input type="checkbox" id="20826">
                                            <label for="20826">Xám <span>(4)</span></label>
                                        </div>
                                        <div class="filter-check-box color-white">
                                            <input type="checkbox" id="20827">
                                            <label for="20827">Trắng <span>(3)</span></label>
                                        </div>
                                        <div class="filter-check-box color-black">
                                            <input type="checkbox" id="20828">
                                            <label for="20828">Đen <span>(6)</span></label>
                                        </div>
                                        <div class="filter-check-box color-camel">
                                            <input type="checkbox" id="20829">
                                            <label for="20829">camel <span>(2)</span></label>
                                        </div>
                                    </div>
                                    <!-- check-box-inner -->

                                    <!-- check-box-inner -->
                                </form>
                            </div>
                </aside>
            </div>
        </div>
    </div>
</div>
<!-- product tab end -->


</body>
</html>