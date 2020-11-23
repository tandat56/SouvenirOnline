<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>

<body>


    <section class="bg-light position-relative">
        <div class="main-slider dots-style theme1">
            <!-- <div class="slider-item bg-img bg-img1">
                <div class="container">
                    <div class="row align-items-center slider-height">
                        <div class="col-12">
                            <div class="slider-content">
                                <p class="text text-dark text-uppercase animated mb-25" data-animation-in="fadeInDown">
                                    Wow skin Science</p>
                                <h4 class="title text-dark animated text-capitalize mb-20"
                                    data-animation-in="fadeInLeft" data-delay-in="1">Charcoal & Keratin</h4>
                                <h2 class="sub-title text-dark animated" data-animation-in="fadeInRight"
                                    data-delay-in="2">
                                    Shampoo 300ml</h2>
                                <a href="<c:url value='/page-shopgrid4'/>"
                                    class="btn theme--btn1 btn--lg text-uppercase  animated mt-45 mt-sm-25"
                                    data-animation-in="zoomIn" data-delay-in="3">Mua ngay</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div> -->

            <!-- slider-item end -->
            <div class="slider-item bg-img">
                <div class="container">
                    <div class="row align-items-center slider-height">
                        <div class="col-12">
                            <div class="slider-content">
                                <p class="text text-dark text-uppercase animated mb-25" data-animation-in="fadeInLeft">
                                    cleanse and refresh</p>
                                <h4 class="title text-dark animated text-capitalize mb-20"
                                    data-animation-in="fadeInRight" data-delay-in="1">Sisley Pre-Shampoo</h4>

                                <h2 class="sub-title text-dark animated" data-animation-in="fadeInUp" data-delay-in="2">
                                    Up
                                    Purifying Mask</h2>
                                    
                                <a href="<c:url value='/page-shopgrid4'/>"
                                    class="btn theme--btn1 btn--lg text-uppercase animated mt-45 mt-sm-25"
                                    data-animation-in="zoomIn" data-delay-in="3">Mua ngay</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- slider-item end -->
        </div>
        <!-- slick-progress -->
        <div class="slick-progress">
            <span></span>
        </div>
        <!-- slick-progress end-->
    </section>
    <!-- main slider end -->

    <!-- common banner  start -->

    <!-- common banner  end -->

    <!-- product tab start -->
    <section class="product-tab bg-white pt-40 pb-70">
        <div class="container">
            <div class="product-tab-nav mb-30">
                <div class="row align-items-center">
                    <div class="col-12">
                        <div class="section-title text-center mb-30">
                            <h2 class="title text-dark text-capitalize mb-20"> MẮT KIẾNG DU LỊCH</h2>
                            <p class="text"> Những mẫu kiếng hot sale và có sẳn tại cửa hàng !</p>
                        </div>
                    </div>
                    <div class="col-12">
                        <nav class="product-tab-menu theme1">

                        </nav>
                    </div>
                </div>
            </div>
            <!-- product-tab-nav end -->
            <div class="row">
                <div class="col-12">
                    <div class="tab-content" id="pills-tabContent">
                        <!-- first tab-pane -->
                        <div class="tab-pane fade show active" id="pills-home" role="tabpanel"
                            aria-labelledby="pills-home-tab">
                            <div class="product-slider-init theme1 slick-nav">
                                <div class="slider-item">
                                    <div class="card product-card">
                                        <div class="card-body p-0">
                                            <div class="media flex-column">
                                                <div class="product-thumbnail w-100 position-relative">
                                                    <span class="badge badge-success top-left">-20%</span>
                                                    <a class="d-block" href="<c:url value='/chi-tiet-san-pham'/>">
                                                        <img class="first-img"
                                                            src="<c:url value='/template/web/assets/img/product/kieng1.png'/>"
                                                            alt="thumbnail">
                                                        <img class="second-img"
                                                            src="<c:url value='template/web/assets/img/product/kieng1.png'/>"
                                                            alt="thumbnail">
                                                    </a>
                                                    <!-- product links -->

                                                    <div class="product-links d-flex d-flex justify-content-between">
                                                        <button class="pro-btn" data-toggle="modal"
                                                            data-target="#add-to-cart">Thêm vào giỏ hàng</button>
                                                        <ul class="d-flex justify-content-center">
                                                            <li>
                                                                <a href="#" data-toggle="modal"
                                                                    data-target="#quick-view">
                                                                    <span data-toggle="tooltip" data-placement="bottom"
                                                                        title="Quick view"
                                                                        class="ion-ios-search-strong"></span>
                                                                </a>
                                                            </li>

                                                            <li>
                                                                <a href="#" data-toggle="modal" data-target="#compare">
                                                                    <span data-toggle="tooltip" data-placement="bottom"
                                                                        title="Add to compare"
                                                                        class="ion-ios-shuffle-strong"></span>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="<c:url value='/page-shopgrid4'/>">
                                                                    <span data-toggle="tooltip" data-placement="bottom"
                                                                        title="add to wishlist"
                                                                        class="ion-android-favorite-outline"> </span>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                        <!-- product links end-->
                                                    </div>

                                                </div>
                                                <div class="media-body">
                                                    <div class="product-desc">
                                                        <div class="star-rating">
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                        </div>
                                                        <h3 class="title my-10"><a
                                                                href="<c:url value='/page-shopgrid4'/>">
                                                                Mắt kiếng mát LEVI'S</a></h3>
                                                        <h6 class="product-price"><del class="del">300.000 VND</del>
                                                            <span class="onsale">270.000 VND</span></h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- slider-item end -->
                                <div class="slider-item">
                                    <div class="card product-card">
                                        <div class="card-body p-0">
                                            <div class="media flex-column">
                                                <div class="product-thumbnail w-100 position-relative">
                                                    <span class="badge badge-success top-left">-20%</span>
                                                    <a class="d-block" href="<c:url value='/chi-tiet-san-pham'/>">
                                                        <img class="first-img"
                                                            src="<c:url value='/template/web/assets/img/product/kieng2.jpg'/>"
                                                            alt="thumbnail">
                                                        <img class="second-img"
                                                            src="<c:url value='/template/web/assets/img/product/kieng2.jpg'/>"
                                                            alt="thumbnail">
                                                    </a>
                                                    <!-- product links -->

                                                    <div class="product-links d-flex d-flex justify-content-between">
                                                        <button class="pro-btn" data-toggle="modal"
                                                            data-target="#add-to-cart">Thêm vào giỏ hàng</button>
                                                        <ul class="d-flex justify-content-center">
                                                            <li>
                                                                <a href="#" data-toggle="modal"
                                                                    data-target="#quick-view">
                                                                    <span data-toggle="tooltip" data-placement="bottom"
                                                                        title="Quick view"
                                                                        class="ion-ios-search-strong"></span>
                                                                </a>
                                                            </li>

                                                            <li>
                                                                <a href="#" data-toggle="modal" data-target="#compare">
                                                                    <span data-toggle="tooltip" data-placement="bottom"
                                                                        title="Add to compare"
                                                                        class="ion-ios-shuffle-strong"></span>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="<c:url value='/danh-sach-yeu-thich'/>">
                                                                    <span data-toggle="tooltip" data-placement="bottom"
                                                                        title="add to wishlist"
                                                                        class="ion-android-favorite-outline"> </span>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                        <!-- product links end-->
                                                    </div>

                                                </div>
                                                <div class="media-body">
                                                    <div class="product-desc">
                                                        <div class="star-rating">
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                        </div>
                                                        <h3 class="title my-10"><a
                                                                href="<c:url value='/page-shopgird4'/>">Mắt Kiếng Mát
                                                                Thường</a></h3>
                                                        <h6 class="product-price"><del class="del">150.000 VND</del>
                                                            <span class="onsale">120.000 VND</span></h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- slider-item end -->
                                <div class="slider-item">
                                    <div class="card product-card">
                                        <div class="card-body p-0">
                                            <div class="media flex-column">
                                                <div class="product-thumbnail w-100 position-relative">
                                                    <span class="badge badge-danger top-left">new</span>
                                                    <a class="d-block" href="<c:url value='/chi-tiet-san-pham'/>">
                                                        <img class="first-img"
                                                            src="<c:url value='/template/web/assets/img/product/kieng3.jpg'/>"
                                                            alt="thumbnail">
                                                    </a>
                                                    <!-- product links -->

                                                    <div class="product-links d-flex d-flex justify-content-between">
                                                        <button class="pro-btn" data-toggle="modal"
                                                            data-target="#add-to-cart">Thêm vào giỏ hàng</button>
                                                        <ul class="d-flex justify-content-center">
                                                            <li>
                                                                <a href="#" data-toggle="modal"
                                                                    data-target="#quick-view">
                                                                    <span data-toggle="tooltip" data-placement="bottom"
                                                                        title="Quick view"
                                                                        class="ion-ios-search-strong"></span>
                                                                </a>
                                                            </li>

                                                            <li>
                                                                <a href="#" data-toggle="modal" data-target="#compare">
                                                                    <span data-toggle="tooltip" data-placement="bottom"
                                                                        title="Add to compare"
                                                                        class="ion-ios-shuffle-strong"></span>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="<c:url value='danh-sach-yeu-thich'/>">
                                                                    <span data-toggle="tooltip" data-placement="bottom"
                                                                        title="add to wishlist"
                                                                        class="ion-android-favorite-outline"> </span>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                        <!-- product links end-->
                                                    </div>

                                                </div>
                                                <div class="media-body">
                                                    <div class="product-desc">
                                                        <div class="star-rating">
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-android-star-half de-selected"></span>
                                                        </div>
                                                        <h3 class="title my-10"><a
                                                                href="<c:url value='/page-shopgird4'/>">Kiếng Mát Thể
                                                                Thao Speed</a></h3>
                                                        <h6 class="product-price">
                                                            <span class="onsale">450.000 VND</span></h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- slider-item end -->
                                <div class="slider-item">
                                    <div class="card product-card">
                                        <div class="card-body p-0">
                                            <div class="media flex-column">
                                                <div class="product-thumbnail w-100 position-relative">
                                                    <span class="badge badge-danger top-left">new</span>
                                                    <a class="d-block" href="<c:url value='/chi-tiet-san-pham'/>">
                                                        <img class="first-img"
                                                            src="<c:url value='/template/web/assets/img/product/kieng4.jpg'/>"
                                                            alt="thumbnail">

                                                        <img class="second-img"
                                                            src="<c:url value='/template/web/assets/img/product/kieng4.jpg'/>"
                                                            alt="thumbnail">
                                                    </a>
                                                    <!-- product links -->

                                                    <div class="product-links d-flex d-flex justify-content-between">
                                                        <button class="pro-btn" data-toggle="modal"
                                                            data-target="#add-to-cart">Thêm vào giỏ hàng</button>
                                                        <ul class="d-flex justify-content-center">
                                                            <li>
                                                                <a href="#" data-toggle="modal"
                                                                    data-target="#quick-view">
                                                                    <span data-toggle="tooltip" data-placement="bottom"
                                                                        title="Quick view"
                                                                        class="ion-ios-search-strong"></span>
                                                                </a>
                                                            </li>

                                                            <li>
                                                                <a href="#" data-toggle="modal" data-target="#compare">
                                                                    <span data-toggle="tooltip" data-placement="bottom"
                                                                        title="Add to compare"
                                                                        class="ion-ios-shuffle-strong"></span>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="<c:url value='/danh-sach-yeu-thich'/>">
                                                                    <span data-toggle="tooltip" data-placement="bottom"
                                                                        title="add to wishlist"
                                                                        class="ion-android-favorite-outline"> </span>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                        <!-- product links end-->
                                                    </div>

                                                </div>
                                                <div class="media-body">
                                                    <div class="product-desc">
                                                        <div class="star-rating">
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-android-star-half"></span>
                                                        </div>
                                                        <h3 class="title my-10"><a
                                                                href="<c:url value='/page-shopgird4'/>">Mắt Kiếng Thể
                                                                Thao Cao Cấp</a></h3>
                                                        <h6 class="product-price">
                                                            <span class="onsale">700.000 VND</span></h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- slider-item end -->
                                <div class="slider-item">
                                    <div class="card product-card">
                                        <div class="card-body p-0">
                                            <div class="media flex-column">
                                                <div class="product-thumbnail w-100 position-relative">
                                                    <span class="badge badge-danger top-left">new</span>
                                                    <a class="d-block" href="<c:url value='/chi-tiet-san-pham'/>">
                                                        <img class="first-img"
                                                            src="<c:url value='/template/web/assets/img/product/non1.jpg'/>"
                                                            alt="thumbnail">
                                                    </a>
                                                    <!-- product links -->

                                                    <div class="product-links d-flex d-flex justify-content-between">
                                                        <button class="pro-btn" data-toggle="modal"
                                                            data-target="#add-to-cart">Thêm vào giỏ hàng</button>
                                                        <ul class="d-flex justify-content-center">
                                                            <li>
                                                                <a href="#" data-toggle="modal"
                                                                    data-target="#quick-view">
                                                                    <span data-toggle="tooltip" data-placement="bottom"
                                                                        title="Quick view"
                                                                        class="ion-ios-search-strong"></span>
                                                                </a>
                                                            </li>

                                                            <li>
                                                                <a href="#" data-toggle="modal" data-target="#compare">
                                                                    <span data-toggle="tooltip" data-placement="bottom"
                                                                        title="Add to compare"
                                                                        class="ion-ios-shuffle-strong"></span>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="<c:url value='/danh-sach-yeu-thich'/>">
                                                                    <span data-toggle="tooltip" data-placement="bottom"
                                                                        title="add to wishlist"
                                                                        class="ion-android-favorite-outline"> </span>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                        <!-- product links end-->
                                                    </div>

                                                </div>
                                                <div class="media-body">
                                                    <div class="product-desc">
                                                        <div class="star-rating">
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-android-star-half"></span>
                                                        </div>
                                                        <h3 class="title my-10"><a
                                                                href="<c:url value='/page-shopgird4'/>">Balo 10kg
                                                                Speed</a></h3>
                                                        <h6 class="product-price">
                                                            <span class="onsale">420.000 VND</span></h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- slider-item end -->
                                <div class="slider-item">
                                    <div class="card product-card">
                                        <div class="card-body p-0">
                                            <div class="media flex-column">
                                                <div class="product-thumbnail w-100 position-relative">
                                                    <span class="badge badge-danger top-left">new</span>
                                                    <a class="d-block" href="<c:url value='/chi-tiet-san-pham'/>">
                                                        <img class="first-img"
                                                            src="<c:url value='/template/web/assets/img/product/non2.jpg'/>"
                                                            alt="thumbnail">
                                                    </a>
                                                    <!-- product links -->

                                                    <div class="product-links d-flex d-flex justify-content-between">
                                                        <button class="pro-btn" data-toggle="modal"
                                                            data-target="#add-to-cart">Thêm vào giỏ hàng</button>
                                                        <ul class="d-flex justify-content-center">
                                                            <li>
                                                                <a href="#" data-toggle="modal"
                                                                    data-target="#quick-view">
                                                                    <span data-toggle="tooltip" data-placement="bottom"
                                                                        title="Quick view"
                                                                        class="ion-ios-search-strong"></span>
                                                                </a>
                                                            </li>

                                                            <li>
                                                                <a href="#" data-toggle="modal" data-target="#compare">
                                                                    <span data-toggle="tooltip" data-placement="bottom"
                                                                        title="Add to compare"
                                                                        class="ion-ios-shuffle-strong"></span>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="<c:url value='/danh-sach-yeu-thich'/>">
                                                                    <span data-toggle="tooltip" data-placement="bottom"
                                                                        title="add to wishlist"
                                                                        class="ion-android-favorite-outline"> </span>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                        <!-- product links end-->
                                                    </div>

                                                </div>
                                                <div class="media-body">
                                                    <div class="product-desc">
                                                        <div class="star-rating">
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-android-star-half"></span>
                                                        </div>
                                                        <h3 class="title my-10"><a
                                                                href="<c:url value='/page-shopgird4'/>">Balo Triump
                                                                021</a></h3>
                                                        <h6 class="product-price">
                                                            <span class="onsale">450.000 VND</span></h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- slider-item end -->
                                <div class="slider-item">
                                    <div class="card product-card">
                                        <div class="card-body p-0">
                                            <div class="media flex-column">
                                                <div class="product-thumbnail w-100 position-relative">
                                                    <span class="badge badge-danger top-left">new</span>
                                                    <a class="d-block" href="<c:url value='/chi-tiet-san-pham'/>">
                                                        <img class="first-img"
                                                            src="<c:url value='/template/web/assets/img/product/non3.jpg'/>"
                                                            alt="thumbnail">
                                                    </a>
                                                    <!-- product links -->

                                                    <div class="product-links d-flex d-flex justify-content-between">
                                                        <button class="pro-btn" data-toggle="modal"
                                                            data-target="#add-to-cart">Thêm vào giỏ hàng</button>
                                                        <ul class="d-flex justify-content-center">
                                                            <li>
                                                                <a href="#" data-toggle="modal"
                                                                    data-target="#quick-view">
                                                                    <span data-toggle="tooltip" data-placement="bottom"
                                                                        title="Quick view"
                                                                        class="ion-ios-search-strong"></span>
                                                                </a>
                                                            </li>

                                                            <li>
                                                                <a href="#" data-toggle="modal" data-target="#compare">
                                                                    <span data-toggle="tooltip" data-placement="bottom"
                                                                        title="Add to compare"
                                                                        class="ion-ios-shuffle-strong"></span>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="<c:url value='/danh-sach-yeu-thich'/>">
                                                                    <span data-toggle="tooltip" data-placement="bottom"
                                                                        title="add to wishlist"
                                                                        class="ion-android-favorite-outline"> </span>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                        <!-- product links end-->
                                                    </div>

                                                </div>
                                                <div class="media-body">
                                                    <div class="product-desc">
                                                        <div class="star-rating">
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-android-star-half"></span>
                                                        </div>
                                                        <h3 class="title my-10"><a
                                                                href="<c:url value='/page-shopgird4'/>">Balo Haft
                                                                Craft</a></h3>
                                                        <h6 class="product-price">
                                                            <span class="onsale">420.000 VND</span></h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- slider-item end -->
                                <div class="slider-item">
                                    <div class="card product-card">
                                        <div class="card-body p-0">
                                            <div class="media flex-column">
                                                <div class="product-thumbnail w-100 position-relative">
                                                    <span class="badge badge-danger top-left">new</span>
                                                    <a class="d-block" href="<c:url value='/chi-tiet-san-pham'/>">
                                                        <img class="first-img"
                                                            src="<c:url value='/template/web/assets/img/product/non4.jpg'/>"
                                                            alt="thumbnail">
                                                    </a>
                                                    <!-- product links -->

                                                    <div class="product-links d-flex d-flex justify-content-between">
                                                        <button class="pro-btn" data-toggle="modal"
                                                            data-target="#add-to-cart">Thêm vào giỏ hàng</button>
                                                        <ul class="d-flex justify-content-center">
                                                            <li>
                                                                <a href="#" data-toggle="modal"
                                                                    data-target="#quick-view">
                                                                    <span data-toggle="tooltip" data-placement="bottom"
                                                                        title="Quick view"
                                                                        class="ion-ios-search-strong"></span>
                                                                </a>
                                                            </li>

                                                            <li>
                                                                <a href="#" data-toggle="modal" data-target="#compare">
                                                                    <span data-toggle="tooltip" data-placement="bottom"
                                                                        title="Add to compare"
                                                                        class="ion-ios-shuffle-strong"></span>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="<c:url value='/danh-sach-yeu-thich'/>">
                                                                    <span data-toggle="tooltip" data-placement="bottom"
                                                                        title="add to wishlist"
                                                                        class="ion-android-favorite-outline"> </span>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                        <!-- product links end-->
                                                    </div>

                                                </div>
                                                <div class="media-body">
                                                    <div class="product-desc">
                                                        <div class="star-rating">
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-android-star-half"></span>
                                                        </div>
                                                        <h3 class="title my-10"><a
                                                                href="<c:url value='/page-shopgird4'/>">Balo Coolkid</a>
                                                        </h3>
                                                        <h6 class="product-price">
                                                            <span class="onsale">420.000 VND</span></h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- slider-item end -->
                            </div>
                        </div>
                        <!-- second tab-pane -->

                        <!-- third tab-pane -->

                        <!-- slider-item end -->
                    </div>
                </div>
            </div>
        </div>
        </div>
        </div>
    </section>
    <!-- product tab end -->

    <!-- new arrival section start -->
    <section class="theme1 bg-white pb-70">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title text-center mb-30">
                        <h2 class="title text-dark text-capitalize mb-20"> BALO PHƯỢT </h2>
                        <p class="text"> Hãy xem qua các mẫu balo của chúng tớ nhé ! </p>
                    </div>
                </div>
                <div class="col-12">
                    <div class="product-slider-init slick-nav">
                        <div class="slider-item">
                            <div class="card product-card">
                                <div class="card-body p-0">
                                    <div class="media flex-column">
                                        <div class="product-thumbnail w-100 position-relative">
                                            <span class="badge badge-danger top-left">Mới</span>
                                            <a class="d-block" href="<c:url value='/chi-tiet-san-pham'/>">
                                                <img class="first-img"
                                                    src="<c:url value='/template/web/assets/img/product/balo1.jpg'/>"
                                                    alt="thumbnail">
                                            </a>
                                            <!-- product links -->

                                            <div class="product-links d-flex d-flex justify-content-between">
                                                <button class="pro-btn" data-toggle="modal"
                                                    data-target="#add-to-cart">Thêm vào giỏ hàng</button>
                                                <ul class="d-flex justify-content-center">
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#quick-view">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="Quick view" class="ion-ios-search-strong"></span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#compare">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="Add to compare"
                                                                class="ion-ios-shuffle-strong"></span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="<c:url value='/danh-sach-yeu-thich'/>">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="add to wishlist"
                                                                class="ion-android-favorite-outline"> </span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <!-- product links end-->
                                            </div>

                                        </div>
                                        <div class="media-body">
                                            <div class="product-desc">
                                                <div class="star-rating">
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-android-star-half"></span>
                                                </div>
                                                <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>">Balo
                                                        01 - Speed</a></h3>
                                                <h6 class="product-price">
                                                    <span class="onsale">400.000</span></h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- slider-item end -->
                        <div class="slider-item">
                            <div class="card product-card">
                                <div class="card-body p-0">
                                    <div class="media flex-column">
                                        <div class="product-thumbnail w-100 position-relative">
                                            <span class="badge badge-success top-left">-20%</span>
                                            <a class="d-block" href="<c:url value='/chi-tiet-san-pham'/>">
                                                <img class="first-img"
                                                    src="<c:url value='/template/web/assets/img/product/balo2.png'/>"
                                                    alt="thumbnail">
                                                <img class="second-img"
                                                    src="<c:url value='/template/web/assets/img/product/balo2.png'/>"
                                                    alt="thumbnail">
                                            </a>
                                            <!-- product links -->

                                            <div class="product-links d-flex d-flex justify-content-between">
                                                <button class="pro-btn" data-toggle="modal"
                                                    data-target="#add-to-cart">Thêm Vào Giỏ Hàng
                                                </button>
                                                <ul class="d-flex justify-content-center">
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#quick-view">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="Quick view" class="ion-ios-search-strong"></span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#compare">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="Add to compare"
                                                                class="ion-ios-shuffle-strong"></span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="<c:url value='/danh-sach-yeu-thich'/>">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="add to wishlist"
                                                                class="ion-android-favorite-outline"> </span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <!-- product links end-->
                                            </div>

                                        </div>
                                        <div class="media-body">
                                            <div class="product-desc">
                                                <div class="star-rating">
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                </div>
                                                <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>">Balo
                                                        01 - Speed</a></h3>
                                                <h6 class="product-price">
                                                    <span class="onsale">400.000</span></h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- slider-item end -->
                        <div class="slider-item">
                            <div class="card product-card">
                                <div class="card-body p-0">
                                    <div class="media flex-column">
                                        <div class="product-thumbnail w-100 position-relative">
                                            <span class="badge badge-danger top-left">new</span>
                                            <a class="d-block" href="<c:url value='/chi-tiet-san-pham'/>">
                                                <img class="first-img"
                                                    src="<c:url value='/template/web/assets/img/product/balo3.jpg'/>"
                                                    alt="thumbnail">
                                            </a>
                                            <!-- product links -->

                                            <div class="product-links d-flex d-flex justify-content-between">
                                                <button class="pro-btn" data-toggle="modal"
                                                    data-target="#add-to-cart">Thêm Vào Giỏ Hàng
                                                </button>
                                                <ul class="d-flex justify-content-center">
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#quick-view">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="Quick view" class="ion-ios-search-strong"></span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#compare">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="Add to compare"
                                                                class="ion-ios-shuffle-strong"></span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="<c:url value='/danh-sach-yeu-thich'/>">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="add to wishlist"
                                                                class="ion-android-favorite-outline"> </span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <!-- product links end-->
                                            </div>

                                        </div>
                                        <div class="media-body">
                                            <div class="product-desc">
                                                <div class="star-rating">
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-android-star-half de-selected"></span>
                                                </div>
                                                <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>">Balo
                                                        01 - Speed</a></h3>
                                                <h6 class="product-price">
                                                    <span class="onsale">400.000</span></h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- slider-item end -->
                        <div class="slider-item">
                            <div class="card product-card">
                                <div class="card-body p-0">
                                    <div class="media flex-column">
                                        <div class="product-thumbnail w-100 position-relative">
                                            <span class="badge badge-success top-left">-20%</span>
                                            <a class="d-block" href="<c:url value='/chi-tiet-san-pham'/>">
                                                <img class="first-img"
                                                    src="<c:url value='/template/web/assets/img/product/balo4.jpg'/>"
                                                    alt="thumbnail">

                                                <img class="second-img"
                                                    src="<c:url value='/template/web/assets/img/product/balo4.jpg'/>"
                                                    alt="thumbnail">
                                            </a>
                                            <!-- product links -->

                                            <div class="product-links d-flex d-flex justify-content-between">
                                                <button class="pro-btn" data-toggle="modal"
                                                    data-target="#add-to-cart">Thêm Vào Giỏ Hàng
                                                </button>
                                                <ul class="d-flex justify-content-center">
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#quick-view">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="Quick view" class="ion-ios-search-strong"></span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#compare">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="Add to compare"
                                                                class="ion-ios-shuffle-strong"></span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="<c:url value='/danh-sach-yeu-thich'/>">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="add to wishlist"
                                                                class="ion-android-favorite-outline"> </span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <!-- product links end-->
                                            </div>

                                        </div>
                                        <div class="media-body">
                                            <div class="product-desc">
                                                <div class="star-rating">
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                </div>
                                                <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>">Balo
                                                        01 - Speed</a></h3>
                                                <h6 class="product-price">
                                                    <span class="onsale">400.000</span></h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- new arrival section end -->

    <!-- testimonial-section start -->
    <section class="testimonial-section pb-70">
        <div class="container">
            <div class="row">
                <!-- slider-item end -->
            </div>
        </div>
        </div>
        </div>
    </section>
    <!-- testimonial-section end -->
    <!-- new arrival section start -->
    <section class="theme1 bg-white pb-70">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title text-center mb-30">
                        <h2 class="title text-dark text-capitalize mb-20">TEE LƯU NIỆM </h2>
                        <p class="text">Những items đang "CHÁY" tại cửa hàng !</p>
                    </div>
                </div>
                <div class="col-12">
                    <div class="popular-slider-init slick-nav">
                        <div class="slider-item">
                            <div class="card product-card">
                                <div class="card-body p-0">
                                    <div class="media flex-column">
                                        <div class="product-thumbnail w-100 position-relative">
                                            <span class="badge badge-danger top-left">Mới</span>
                                            <a class="d-block" href="<c:url value='/chi-tiet-san-pham'/>">
                                                <img class="first-img"
                                                    src="<c:url value='/template/web/assets/img/product/aotrang1.jpg'/>"
                                                    alt="thumbnail">
                                            </a>
                                            <!-- product links -->

                                            <div class="product-links d-flex d-flex justify-content-between">
                                                <button class="pro-btn" data-toggle="modal"
                                                    data-target="#add-to-cart">Thêm Vào Giỏ Hàng
                                                </button>
                                                <ul class="d-flex justify-content-center">
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#quick-view">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="Quick view" class="ion-ios-search-strong"></span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#compare">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="Add to compare"
                                                                class="ion-ios-shuffle-strong"></span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="<c:url value='/danh-sach-yeu-thich'/>">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="add to wishlist"
                                                                class="ion-android-favorite-outline"> </span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <!-- product links end-->
                                            </div>

                                        </div>
                                        <div class="media-body">
                                            <div class="product-desc">
                                                <div class="star-rating">
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-android-star-half"></span>
                                                </div>
                                                <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>"> Áo
                                                        thun lưu niệm 01</a></h3>
                                                <h6 class="product-price">
                                                    <span class="onsale">230.000 VND</span></h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- slider-item end -->
                        <div class="slider-item">
                            <div class="card product-card">
                                <div class="card-body p-0">
                                    <div class="media flex-column">
                                        <div class="product-thumbnail w-100 position-relative">
                                            <span class="badge badge-success top-left">-20%</span>
                                            <a class="d-block" href="<c:url value='/chi-tiet-san-pham'/>">
                                                <img class="first-img"
                                                    src="<c:url value='/template/web/assets/img/product/aotrang2.jpg'/>"
                                                    alt="thumbnail">
                                                <img class="second-img"
                                                    src="<c:url value='/template/web/assets/img/product/aotrang2.jpg'/>"
                                                    alt="thumbnail">
                                            </a>
                                            <!-- product links -->

                                            <div class="product-links d-flex d-flex justify-content-between">
                                                <button class="pro-btn" data-toggle="modal"
                                                    data-target="#add-to-cart">Thêm Vào Giỏ Hàng
                                                </button>
                                                <ul class="d-flex justify-content-center">
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#quick-view">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="Quick view" class="ion-ios-search-strong"></span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#compare">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="Add to compare"
                                                                class="ion-ios-shuffle-strong"></span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="<c:url value='/danh-sach-yeu-thich'/>">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="add to wishlist"
                                                                class="ion-android-favorite-outline"> </span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <!-- product links end-->
                                            </div>

                                        </div>
                                        <div class="media-body">
                                            <div class="product-desc">
                                                <div class="star-rating">
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                </div>
                                                <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>"> Áo
                                                        thun lưu niệm 01</a></h3>
                                                <h6 class="product-price">
                                                    <span class="onsale">230.000 VND</span></h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- slider-item end -->
                        <div class="slider-item">
                            <div class="card product-card">
                                <div class="card-body p-0">
                                    <div class="media flex-column">
                                        <div class="product-thumbnail w-100 position-relative">
                                            <span class="badge badge-danger top-left">new</span>
                                            <a class="d-block" href="<c:url value='/chi-tiet-san-pham'/>">
                                                <img class="first-img"
                                                    src="<c:url value='/template/web/assets/img/product/aotrang3.jpg'/>"
                                                    alt="thumbnail">
                                            </a>
                                            <!-- product links -->

                                            <div class="product-links d-flex d-flex justify-content-between">
                                                <button class="pro-btn" data-toggle="modal"
                                                    data-target="#add-to-cart">Thêm Vào Giỏ Hàng
                                                </button>
                                                <ul class="d-flex justify-content-center">
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#quick-view">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="Quick view" class="ion-ios-search-strong"></span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#compare">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="Add to compare"
                                                                class="ion-ios-shuffle-strong"></span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="<c:url value='/danh-sach-yeu-thich'/>">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="add to wishlist"
                                                                class="ion-android-favorite-outline"> </span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <!-- product links end-->
                                            </div>

                                        </div>
                                        <div class="media-body">
                                            <div class="product-desc">
                                                <div class="star-rating">
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-android-star-half de-selected"></span>
                                                </div>
                                                <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>"> Áo
                                                        thun lưu niệm 01</a></h3>
                                                <h6 class="product-price">
                                                    <span class="onsale">230.000 VND</span></h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- slider-item end -->
                        <div class="slider-item">
                            <div class="card product-card">
                                <div class="card-body p-0">
                                    <div class="media flex-column">
                                        <div class="product-thumbnail w-100 position-relative">
                                            <span class="badge badge-success top-left">-20%</span>
                                            <a class="d-block" href="<c:url value='/chi-tiet-san-pham'/>">
                                                <img class="first-img"
                                                    src="<c:url value='/template/web/assets/img/product/aotrang4.jpg'/>"
                                                    alt="thumbnail">
                                                <img class="second-img"
                                                    src="<c:url value='/template/web/assets/img/product/aotrang4.jpg'/>"
                                                    alt="thumbnail">
                                            </a>
                                            <!-- product links -->

                                            <div class="product-links d-flex d-flex justify-content-between">
                                                <button class="pro-btn" data-toggle="modal"
                                                    data-target="#add-to-cart">Thêm Vào Giỏ Hàng
                                                </button>
                                                <ul class="d-flex justify-content-center">
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#quick-view">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="Quick view" class="ion-ios-search-strong"></span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#compare">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="Add to compare"
                                                                class="ion-ios-shuffle-strong"></span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="<c:url value='/danh-sach-yeu-thich'/>">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="add to wishlist"
                                                                class="ion-android-favorite-outline"> </span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <!-- product links end-->
                                            </div>

                                        </div>
                                        <div class="media-body">
                                            <div class="product-desc">
                                                <div class="star-rating">
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                </div>
                                                <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>"> Áo
                                                        thun lưu niệm 01</a></h3>
                                                <h6 class="product-price">
                                                    <span class="onsale">230.000 VND</span></h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- slider-item end -->
                        <div class="slider-item">
                            <div class="card product-card">
                                <div class="card-body p-0">
                                    <div class="media flex-column">
                                        <div class="product-thumbnail w-100 position-relative">
                                            <span class="badge badge-danger top-left">new</span>
                                            <a class="d-block" href="<c:url value='/chi-tiet-san-pham'/>">
                                                <img class="first-img"
                                                    src="<c:url value='/template/web/assets/img/product/aotrang5.jpg'/>"
                                                    alt="thumbnail">
                                                <img class="second-img"
                                                    src="<c:url value='/template/web/assets/img/product/aotrang5.jpg'/>"
                                                    alt="thumbnail">
                                            </a>
                                            <!-- product links -->

                                            <div class="product-links d-flex d-flex justify-content-between">
                                                <button class="pro-btn" data-toggle="modal"
                                                    data-target="#add-to-cart">Thêm Vào Giỏ Hàng
                                                </button>
                                                <ul class="d-flex justify-content-center">
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#quick-view">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="Quick view" class="ion-ios-search-strong"></span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#compare">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="Add to compare"
                                                                class="ion-ios-shuffle-strong"></span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="<c:url value='/danh-sach-yeu-thich'/>">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="add to wishlist"
                                                                class="ion-android-favorite-outline"> </span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <!-- product links end-->
                                            </div>

                                        </div>
                                        <div class="media-body">
                                            <div class="product-desc">
                                                <div class="star-rating">
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-android-star-half"></span>
                                                </div>
                                                <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>"> Áo
                                                        thun lưu niệm 01</a></h3>
                                                <h6 class="product-price">
                                                    <span class="onsale">230.000 VND</span></h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- slider-item end -->
                        <!-- slider-item end -->
                        <div class="slider-item">
                            <div class="card product-card">
                                <div class="card-body p-0">
                                    <div class="media flex-column">
                                        <div class="product-thumbnail w-100 position-relative">
                                            <span class="badge badge-danger top-left">new</span>
                                            <a class="d-block" href="<c:url value='/chi-tiet-san-pham'/>">
                                                <img class="first-img"
                                                    src="<c:url value='/template/web/assets/img/product/aoden1.jpg'/>"
                                                    alt="thumbnail">
                                                <img class="second-img"
                                                    src="<c:url value='/template/web/assets/img/product/aoden1.jpg'/>"
                                                    alt="thumbnail">
                                            </a>
                                            <!-- product links -->

                                            <div class="product-links d-flex d-flex justify-content-between">
                                                <button class="pro-btn" data-toggle="modal"
                                                    data-target="#add-to-cart">Thêm Vào Giỏ Hàng
                                                </button>
                                                <ul class="d-flex justify-content-center">
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#quick-view">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="Quick view" class="ion-ios-search-strong"></span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#compare">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="Add to compare"
                                                                class="ion-ios-shuffle-strong"></span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="<c:url value='/danh-sach-yeu-thich'/>">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="add to wishlist"
                                                                class="ion-android-favorite-outline"> </span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <!-- product links end-->
                                            </div>

                                        </div>
                                        <div class="media-body">
                                            <div class="product-desc">
                                                <div class="star-rating">
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-android-star-half"></span>
                                                </div>
                                                <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>"> Áo
                                                        thun lưu niệm 01</a></h3>
                                                <h6 class="product-price">
                                                    <span class="onsale">230.000 VND</span></h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- slider-item end -->
                        <!-- slider-item end -->
                        <div class="slider-item">
                            <div class="card product-card">
                                <div class="card-body p-0">
                                    <div class="media flex-column">
                                        <div class="product-thumbnail w-100 position-relative">
                                            <span class="badge badge-danger top-left">new</span>
                                            <a class="d-block" href="<c:url value='/chi-tiet-san-pham'/>">
                                                <img class="first-img"
                                                    src="<c:url value='/template/web/assets/img/product/aoden2.jpg'/>"
                                                    alt="thumbnail">
                                                <img class="second-img"
                                                    src="<c:url value='/template/web/assets/img/product/aoden2.jpg'/>"
                                                    alt="thumbnail">
                                            </a>
                                            <!-- product links -->

                                            <div class="product-links d-flex d-flex justify-content-between">
                                                <button class="pro-btn" data-toggle="modal"
                                                    data-target="#add-to-cart">Thêm Vào Giỏ Hàng
                                                </button>
                                                <ul class="d-flex justify-content-center">
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#quick-view">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="Quick view" class="ion-ios-search-strong"></span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#compare">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="Add to compare"
                                                                class="ion-ios-shuffle-strong"></span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="<c:url value='/danh-sach-yeu-thich'/>">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="add to wishlist"
                                                                class="ion-android-favorite-outline"> </span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <!-- product links end-->
                                            </div>

                                        </div>
                                        <div class="media-body">
                                            <div class="product-desc">
                                                <div class="star-rating">
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-android-star-half"></span>
                                                </div>
                                                <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>"> Áo
                                                        thun lưu niệm 01</a></h3>
                                                <h6 class="product-price">
                                                    <span class="onsale">230.000 VND</span></h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- slider-item end -->
                        <!-- slider-item end -->
                        <div class="slider-item">
                            <div class="card product-card">
                                <div class="card-body p-0">
                                    <div class="media flex-column">
                                        <div class="product-thumbnail w-100 position-relative">
                                            <span class="badge badge-danger top-left">new</span>
                                            <a class="d-block" href="<c:url value='/chi-tiet-san-pham'/>">
                                                <img class="first-img"
                                                    src="<c:url value='/template/web/assets/img/product/aoden3.jpg'/>"
                                                    alt="thumbnail">
                                                <img class="second-img"
                                                    src="<c:url value='/template/web/assets/img/product/aoden3.jpg'/>"
                                                    alt="thumbnail">
                                            </a>
                                            <!-- product links -->

                                            <div class="product-links d-flex d-flex justify-content-between">
                                                <button class="pro-btn" data-toggle="modal"
                                                    data-target="#add-to-cart">Thêm Vào Giỏ Hàng
                                                </button>
                                                <ul class="d-flex justify-content-center">
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#quick-view">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="Quick view" class="ion-ios-search-strong"></span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#compare">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="Add to compare"
                                                                class="ion-ios-shuffle-strong"></span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="<c:url value='/danh-sach-yeu-thich'/>">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="add to wishlist"
                                                                class="ion-android-favorite-outline"> </span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <!-- product links end-->
                                            </div>

                                        </div>
                                        <div class="media-body">
                                            <div class="product-desc">
                                                <div class="star-rating">
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-android-star-half"></span>
                                                </div>
                                                <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>"> Áo
                                                        thun lưu niệm 01</a></h3>
                                                <h6 class="product-price">
                                                    <span class="onsale">230.000 VND</span></h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- slider-item end -->

                        <div class="slider-item">
                            <div class="card product-card">
                                <div class="card-body p-0">
                                    <div class="media flex-column">
                                        <div class="product-thumbnail w-100 position-relative">
                                            <span class="badge badge-danger top-left">Mới</span>
                                            <a class="d-block" href="<c:url value='/chi-tiet-san-pham'/>">
                                                <img class="first-img"
                                                    src="<c:url value='/template/web/assets/img/product/aoden4.jpg'/>"
                                                    alt="thumbnail">
                                                <img class="second-img"
                                                    src="<c:url value='/template/web/assets/img/product/aoden4.jpg'/>"
                                                    alt="thumbnail">
                                            </a>
                                            <!-- product links -->

                                            <div class="product-links d-flex d-flex justify-content-between">
                                                <button class="pro-btn" data-toggle="modal"
                                                    data-target="#add-to-cart">Thêm vào giỏ hàng</button>
                                                <ul class="d-flex justify-content-center">
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#quick-view">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="Quick view" class="ion-ios-search-strong"></span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#compare">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="Add to compare"
                                                                class="ion-ios-shuffle-strong"></span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="<c:url value='/danh-sach-yeu-thich'/>">
                                                            <span data-toggle="tooltip" data-placement="bottom"
                                                                title="add to wishlist"
                                                                class="ion-android-favorite-outline"> </span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <!-- product links end-->
                                            </div>

                                        </div>
                                        <div class="media-body">
                                            <div class="product-desc">
                                                <div class="star-rating">
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-ios-star"></span>
                                                    <span class="ion-android-star-half"></span>
                                                </div>
                                                <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>"> Áo
                                                        thun lưu niệm 01</a></h3>
                                                <h6 class="product-price">
                                                    <span class="onsale">230.000 VND</span></h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- slider-item end -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- new arrival section end -->

    <!-- common-banner start -->
    <div class="common-banner pb-70 bg-white">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="position-relative zoom-in overflow-hidden">
                        <div class="banner-thumb banner-lagre">
                            <img src="<c:url value='/template/web/assets/img/banner/banner3.jpg'/>"
                                alt="banner-thumb-naile">
                        </div>
                        <div class="banner-content banner-content-large">

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- common-banner end -->

    <!-- blog-section start -->
    <section class="blog-section theme1 pb-70">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title text-center mb-30">
                        <h2 class="title text-dark text-capitalize">CỬA HÀNG CHÚNG TỚ</h2>
                        <p class="text mt-20"> Hiện tại cửa hàng chúng tớ luôn đón mời các cậu tới tham quan và mua sắm
                            !
                        </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="blog-init slick-nav">
                        <div class="slider-item">
                            <div class="single-blog">
                                <a class="blog-thumb mb-20 zoom-in d-block overflow-hidden"
                                    href="blog-grid-left-sidebar.html">
                                    <img src="<c:url value='/template/web/assets/img/blog-post/over1.jpg'/>"
                                        alt="blog-thumb-naile">
                                </a>
                                <div class="blog-post-content">
                                    <h3 class="title text-capitalize mb-15"><a
                                            href="<c:url value='/chi-tiet-san-pham'/>">GLASSES </a></h3>
                                </div>
                            </div>
                        </div>
                        <!-- slider-item end -->
                        <div class="slider-item">
                            <div class="single-blog">
                                <a class="blog-thumb mb-20 zoom-in d-block overflow-hidden"
                                    href="blog-grid-left-sidebar.html">
                                    <img src="<c:url value='/template/web/assets/img/blog-post/over2.jpg'/>"
                                        alt="blog-thumb-naile">
                                </a>
                                <div class="blog-post-content">
                                    <h3 class="title text-capitalize mb-15"><a
                                            href="<c:url value='/chi-tiet-san-pham'/>"> BACKPACK</a></h3>
                                </div>
                            </div>
                        </div>
                        <!-- slider-item end -->
                        <div class="slider-item">
                            <div class="single-blog">
                                <a class="blog-thumb mb-20 zoom-in d-block overflow-hidden"
                                    href="blog-grid-left-sidebar.html">
                                    <img src="<c:url value='/template/web/assets/img/blog-post/over3.jpg'/>"
                                        alt="blog-thumb-naile">
                                </a>
                                <div class="blog-post-content">
                                    <h3 class="title text-capitalize mb-15"><a
                                            href="<c:url value='/chi-tiet-san-pham'/>">T-SHIRT</a></h3>
                                </div>
                            </div>
                        </div>
                        <!-- slider-item end -->

                        <!-- slider-item end -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- blog-section end -->

    <!-- news-letter start -->

    <!-- news-letter end -->

    <!-- footer strat -->

    <!-- footer end -->

    <!-- search-box and overlay start -->
    <div class="overlay">
        <div class="scale"></div>
        <form class="search-box" action="#">
            <input type="text" name="search" placeholder="Search products...">
            <button id="close" type="submit"><i class="ion-ios-search-strong"></i></button>
        </form>
        <button class="close"><i class="ion-android-close"></i></button>
    </div>
    <!-- search-box and overlay end -->

    <!-- modals start -->

    <!-- first modal -->
    <div class="modal fade theme1 style1" id="quick-view" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6 mb-5 mb-lg-0">
                            <div class="product-sync-init mb-20">
                                <div class="single-product">
                                    <div class="product-thumb">
                                        <img src="<c:url value='/template/web/assets/img/slider/thumb/kieng1.jpg'/>"
                                            alt="product-thumb">
                                    </div>
                                </div>
                                <!-- single-product end -->
                                <div class="single-product">
                                    <div class="product-thumb">
                                        <img src="<c:url value='/template/web/assets/img/slider/thumb/2.jpg'/>"
                                            alt="product-thumb">
                                    </div>
                                </div>
                                <!-- single-product end -->
                                <div class="single-product">
                                    <div class="product-thumb">
                                        <img src="<c:url value='/template/web/assets/img/slider/thumb/3.jpg'/>"
                                            alt="product-thumb">
                                    </div>
                                </div>
                                <!-- single-product end -->
                                <div class="single-product">
                                    <div class="product-thumb">
                                        <img src="<c:url value='/template/web/assets/img/slider/thumb/4.jpg'/>"
                                            alt="product-thumb">
                                    </div>
                                </div>
                                <!-- single-product end -->
                            </div>

                            <div class="product-sync-nav slick-nav-sync">
                                <div class="single-product">
                                    <div class="product-thumb">
                                        <a href="javascript:void(0)"> <img
                                                src="<c:url value='/template/web/assets/img/slider/thumb/1.1.jpg'/>"
                                                alt="product-thumb"></a>
                                    </div>
                                </div>
                                <!-- single-product end -->
                                <div class="single-product">
                                    <div class="product-thumb">
                                        <a href="javascript:void(0)"> <img
                                                src="<c:url value='/template/web/assets/img/slider/thumb/2.1.jpg'/>"
                                                alt="product-thumb"></a>
                                    </div>
                                </div>
                                <!-- single-product end -->
                                <div class="single-product">
                                    <div class="product-thumb">
                                        <a href="javascript:void(0)"><img
                                                src="<c:url value='/template/web/assets/img/slider/thumb/3.1.jpg'/>"
                                                alt="product-thumb"></a>
                                    </div>
                                </div>
                                <!-- single-product end -->
                                <div class="single-product">
                                    <div class="product-thumb">
                                        <a href="javascript:void(0)"><img
                                                src="<c:url value='/template/web/assets/img/slider/thumb/4.1.jpg'/>"
                                                alt="product-thumb"></a>
                                    </div>
                                </div>
                                <!-- single-product end -->
                                <div class="single-product">
                                    <div class="product-thumb">
                                        <a href="javascript:void(0)"><img
                                                src="<c:url value='/template/web/assets/img/slider/thumb/2.1.jpg'/>"
                                                alt="product-thumb"></a>
                                    </div>
                                </div>
                                <!-- single-product end -->
                            </div>
                        </div>
                        <div class="col-md-6 mt-5 mt-md-0">
                            <div class="modal-product-info">
                                <div class="product-head">
                                    <h2 class="title">Brixton Patrol All Terrain Anorak Jacket</h2>
                                    <h4 class="sub-title">Reference: demo_5</h4>
                                    <div class="star-content mb-20">
                                        <span class="star-on"><i class="ion-ios-star"></i> </span>
                                        <span class="star-on"><i class="ion-ios-star"></i> </span>
                                        <span class="star-on"><i class="ion-ios-star"></i> </span>
                                        <span class="star-on"><i class="ion-ios-star"></i> </span>
                                        <span class="star-on de-selected"><i class="ion-ios-star"></i> </span>
                                    </div>
                                </div>
                                <div class="product-body">
                                    <span class="product-price text-center"> <span class="new-price">$29.00</span>
                                    </span>
                                    <p class="border-top pt-30">Whether you're exploring the woods or the city, the
                                        Brixton™
                                        Patrol All </p>
                                    <ul>
                                        <li>Terrain Anorak Jacket has got you covered.</li>
                                        <li>Camo jacket crafted from 4.5 oz nylon ripstop with two-way stretch, and a
                                            water-repellent coating.</li>
                                        <li>Drawstring hood.</li>
                                    </ul>
                                </div>
                                <div class="product-size d-flex align-items-center mt-30">
                                    <h3 class="title">Dimension</h3>
                                    <select>
                                        <option value="0">40x60cm</option>
                                        <option value="1">60x90cm</option>
                                        <option value="2">80x120cm</option>

                                    </select>
                                </div>
                                <div class="product-footer">
                                    <div class="product-count style d-flex flex-column flex-sm-row my-4">
                                        <div class="count d-flex">
                                            <input type="number" min="1" max="10" step="1" value="1">
                                            <div class="button-group">
                                                <button class="count-btn increment"><i
                                                        class="fas fa-chevron-up"></i></button>
                                                <button class="count-btn decrement"><i
                                                        class="fas fa-chevron-down"></i></button>
                                            </div>
                                        </div>
                                        <div>
                                            <button class="btn theme-btn--dark3 btn--xl mt-30 mt-sm-0">
                                                <span class="mr-2"><i class="ion-bag"></i></span>
                                                Thêm vào giỏ hàng
                                            </button>
                                        </div>
                                    </div>
                                    <div class="addto-whish-list">
                                        <a href="#"><i class="icon-heart"></i> Thêm vào danh sách yêu thích</a>
                                        <a href="#"><i class="icon-shuffle"></i> So sánh</a>
                                    </div>
                                    <div class="pro-social-links mt-10">
                                        <ul class="d-flex align-items-center">
                                            <li class="share">Chia sẻ</li>
                                            <li><a href="#"><i class="ion-social-facebook"></i></a></li>
                                            <li><a href="#"><i class="ion-social-twitter"></i></a></li>
                                            <li><a href="#"><i class="ion-social-google"></i></a></li>
                                            <li><a href="#"><i class="ion-social-pinterest"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- second modal -->
    <div class="modal fade style2" id="compare" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <h5 class="title"><i class="fa fa-check"></i> Sản phẩm đã được thêm vào so sánh</h5>
                </div>
            </div>
        </div>
    </div>
    <!-- second modal -->
    <div class="modal fade style3" id="add-to-cart" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header justify-content-center bg-dark">
                    <h5 class="modal-title" id="add-to-cartCenterTitle"> <span class="ion-checkmark-round"></span>
                        Product successfully added to your shopping cart</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-lg-5 divide-right">
                            <div class="row">
                                <div class="col-md-6">
                                    <img src="<c:url value='/template/web/assets/img/modal/1.jpg'/>" alt="img">
                                </div>
                                <div class="col-md-6 mb-2 mb-md-0">
                                    <h4 class="product-name">New Balance Running Arishi trainers in triple</h4>
                                    <h5 class="price">$$29.00</h5>
                                    <h6 class="color"><strong>Dimension: </strong>: <span class="dmc">40x60cm</span>
                                    </h6>
                                    <h6 class="quantity"><strong>Quantity:</strong>&nbsp;1</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-7">
                            <div class="modal-cart-content">
                                <p class="cart-products-count">There is 1 item in your cart.</p>
                                <p><strong>Total products:</strong>&nbsp;$123.72</p>
                                <p><strong>Total shipping:</strong>&nbsp;$7.00 </p>
                                <p><strong>Taxes</strong>&nbsp;$0.00</p>
                                <p><strong>Total:</strong>&nbsp;$130.72 (tax excl.)</p>
                                <div class="cart-content-btn">
                                    <button type="button" class="btn theme-btn--dark1 btn--md mt-4"
                                        data-dismiss="modal">Continue
                                        shopping</button>
                                    <button class="btn theme-btn--dark1 btn--md mt-4"><i
                                            class="ion-checkmark-round"></i>Proceed to
                                        checkout</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>