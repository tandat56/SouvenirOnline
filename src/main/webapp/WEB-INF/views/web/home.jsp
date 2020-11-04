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
        <div class="slider-item bg-img bg-img1">
            <div class="container">
                <div class="row align-items-center slider-height">
                    <div class="col-12">
                        <div class="slider-content">
                            <p class="text text-dark text-uppercase animated mb-25" data-animation-in="fadeInDown">
                                Wow skin Science</p>
                            <h4 class="title text-dark animated text-capitalize mb-20" data-animation-in="fadeInLeft" data-delay-in="1">Charcoal & Keratin</h4>
                            <h2 class="sub-title text-dark animated" data-animation-in="fadeInRight" data-delay-in="2">
                                Shampoo 300ml</h2>
                            <a href="<c:url value='/page-shopgrid4'/>" class="btn theme--btn1 btn--lg text-uppercase  animated mt-45 mt-sm-25" data-animation-in="zoomIn" data-delay-in="3">Mua ngay</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- slider-item end -->
        <div class="slider-item bg-img bg-img2">
            <div class="container">
                <div class="row align-items-center slider-height">
                    <div class="col-12">
                        <div class="slider-content">
                            <p class="text text-dark text-uppercase animated mb-25" data-animation-in="fadeInLeft">
                                cleanse and refresh</p>
                            <h4 class="title text-dark animated text-capitalize mb-20" data-animation-in="fadeInRight" data-delay-in="1">Sisley Pre-Shampoo</h4>
                            <h2 class="sub-title text-dark animated" data-animation-in="fadeInUp" data-delay-in="2">Up
                                Purifying Mask</h2>
                            <a href="<c:url value='/page-shopgrid4'/>" class="btn theme--btn1 btn--lg text-uppercase animated mt-45 mt-sm-25" data-animation-in="zoomIn" data-delay-in="3">Mua ngay</a>
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
<div class="common-banner pt-70 bg-white">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mb-30">
                <div class="position-relative zoom-in overflow-hidden">
                    <div class="banner-thumb">
                        <img src="<c:url value='/template/web/assets/img/banner/1.jpg'/>" alt="banner-thumb-naile">
                    </div>
                    <div class="banner-content">
                        <p class="text text-capitalize text-dark mb-10">Cyber Monday</p>
                        <h4 class="title text-capitalize text-dark">Ưu đãi lên đến 50%</h4>
                        <a class="view-link text-capitalize mt-20" href="<c:url value='/page-shopgrid4'/>">Xem bộ sưu tập
                            <span class="ion-android-arrow-dropright-circle theme-color"></span></a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 mb-30">
                <div class="position-relative zoom-in overflow-hidden">
                    <div class="banner-thumb">
                        <img src="<c:url value='/template/web/assets/img/banner/2.jpg'/>" alt="banner-thumb-naile">
                    </div>
                    <div class="banner-content">
                        <p class="text text-capitalize text-dark mb-10">Black Fridays</p>
                        <h4 class="title text-capitalize text-dark">Ưu đãi lên đến 70%
                        </h4>
                        <a class="view-link text-capitalize mt-20" href="<c:url value='/page-shopgrid4'/>">Xem bộ sưu tập
                            <span class="ion-android-arrow-dropright-circle theme-color"></span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- common banner  end -->

<!-- product tab start -->
<section class="product-tab bg-white pt-40 pb-70">
    <div class="container">
        <div class="product-tab-nav mb-30">
            <div class="row align-items-center">
                <div class="col-12">
                    <div class="section-title text-center mb-30">
                        <h2 class="title text-dark text-capitalize mb-20">Bán chạy nhất</h2>
                        <p class="text">Xem qua bộ sưu tập các sản phẩm mới của chúng tôi.</p>
                    </div>
                </div>
                <div class="col-12">
                    <nav class="product-tab-menu theme1">
                        <ul class="nav nav-pills justify-content-center" id="pills-tab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Sản phẩm HOT</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Tops & Sets</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">Phụ kiện</a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <!-- product-tab-nav end -->
        <div class="row">
            <div class="col-12">
                <div class="tab-content" id="pills-tabContent">
                    <!-- first tab-pane -->
                    <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                        <div class="product-slider-init theme1 slick-nav">
                            <div class="slider-item">
                                <div class="card product-card">
                                    <div class="card-body p-0">
                                        <div class="media flex-column">
                                            <div class="product-thumbnail w-100 position-relative">
                                                <span class="badge badge-success top-left">-20%</span>
                                                <a class="d-block" href="<c:url value='/page-singleP'/>">
                                                    <img class="first-img" src="<c:url value='/template/web/assets/img/product/1.jpg'/>" alt="thumbnail">
                                                    <img class="second-img" src="<c:url value='template/web/assets/img/product/1.1.jpg'/>" alt="thumbnail">
                                                </a>
                                                <!-- product links -->

                                                <div class="product-links d-flex d-flex justify-content-between">
                                                    <button class="pro-btn" data-toggle="modal" data-target="#add-to-cart">Thêm vào giỏ hàng</button>
                                                    <ul class="d-flex justify-content-center">
                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#quick-view">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Quick view" class="ion-ios-search-strong"></span>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#compare">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Add to compare" class="ion-ios-shuffle-strong"></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="<c:url value='/page-shopgrid4'/>">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="add to wishlist" class="ion-android-favorite-outline"> </span>
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
                                                    <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>">Juicy
                                                            Couture
                                                            Juicy Quilted Terry Track Jacket</a></h3>
                                                    <h6 class="product-price"><del class="del">$23.90</del>
                                                        <span class="onsale">$21.51</span></h6>
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
                                                <a class="d-block" href="<c:url value='/page-singleP'/>">
                                                    <img class="first-img" src="<c:url value='/template/web/assets/img/product/2.jpg'/>" alt="thumbnail">
                                                    <img class="second-img" src="<c:url value='/template/web/assets/img/product/2.1.jpg'/>" alt="thumbnail">
                                                </a>
                                                <!-- product links -->

                                                <div class="product-links d-flex d-flex justify-content-between">
                                                    <button class="pro-btn" data-toggle="modal" data-target="#add-to-cart">Thêm vào giỏ hàng</button>
                                                    <ul class="d-flex justify-content-center">
                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#quick-view">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Quick view" class="ion-ios-search-strong"></span>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#compare">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Add to compare" class="ion-ios-shuffle-strong"></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="<c:url value='/page-wishtlist'/>">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="add to wishlist" class="ion-android-favorite-outline"> </span>
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
                                                    <h3 class="title my-10"><a href="<c:url value='/page-shopgird4'/>">Originals
                                                            Kaval Windbreaker Winter Jacket</a></h3>
                                                    <h6 class="product-price"><del class="del">$23.90</del>
                                                        <span class="onsale">$21.51</span></h6>
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
                                                <a class="d-block" href="<c:url value='/page-singleP'/>">
                                                    <img class="first-img" src="<c:url value='/template/web/assets/img/product/3.jpg'/>" alt="thumbnail">
                                                </a>
                                                <!-- product links -->

                                                <div class="product-links d-flex d-flex justify-content-between">
                                                    <button class="pro-btn" data-toggle="modal" data-target="#add-to-cart">Thêm vào giỏ hàng</button>
                                                    <ul class="d-flex justify-content-center">
                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#quick-view">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Quick view" class="ion-ios-search-strong"></span>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#compare">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Add to compare" class="ion-ios-shuffle-strong"></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="<c:url value='page-wishtlist'/>">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="add to wishlist" class="ion-android-favorite-outline"> </span>
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
                                                    <h3 class="title my-10"><a href="<c:url value='/page-shopgird4'/>">Trans-Weight Hooded Wind and
                                                            Water Resistant Shell</a></h3>
                                                    <h6 class="product-price">
                                                        <span class="onsale">$21.51</span></h6>
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
                                                <a class="d-block" href="<c:url value='/page-singleP'/>">
                                                    <img class="first-img"  src="<c:url value='/template/web/assets/img/product/4.jpg'/>" alt="thumbnail">
                                                   
                                                    <img class="second-img" src="<c:url value='/template/web/assets/img/product/4.1.jpg'/>" alt="thumbnail">
                                                </a>
                                                <!-- product links -->

                                                <div class="product-links d-flex d-flex justify-content-between">
                                                    <button class="pro-btn" data-toggle="modal" data-target="#add-to-cart">Thêm vào giỏ hàng</button>
                                                    <ul class="d-flex justify-content-center">
                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#quick-view">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Quick view" class="ion-ios-search-strong"></span>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#compare">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Add to compare" class="ion-ios-shuffle-strong"></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                        <a href="<c:url value='/page-wishtlist'/>">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="add to wishlist" class="ion-android-favorite-outline"> </span>
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
                                                    <h3 class="title my-10"><a href="<c:url value='/page-shopgird4'/>">New
                                                            Balance Fresh Foam Kaymin</a></h3>
                                                    <h6 class="product-price">
                                                        <span class="onsale">$21.51</span></h6>
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
                                                <a class="d-block" href="<c:url value='/page-singleP'/>">
                                                    <img class="first-img" src="<c:url value='/template/web/assets/img/product/5.jpg'/>" alt="thumbnail">
                                                </a>
                                                <!-- product links -->

                                                <div class="product-links d-flex d-flex justify-content-between">
                                                    <button class="pro-btn" data-toggle="modal" data-target="#add-to-cart">Thêm vào giỏ hàng</button>
                                                    <ul class="d-flex justify-content-center">
                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#quick-view">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Quick view" class="ion-ios-search-strong"></span>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#compare">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Add to compare" class="ion-ios-shuffle-strong"></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="<c:url value='/page-wishtlist'/>">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="add to wishlist" class="ion-android-favorite-outline"> </span>
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
                                                    <h3 class="title my-10"><a href="<c:url value='/page-shopgird4'/>">New
                                                            Balance Fresh Foam Kaymin</a></h3>
                                                    <h6 class="product-price">
                                                        <span class="onsale">$21.51</span></h6>
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
                    <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                        <div class="product-slider-init theme1 slick-nav">
                            <div class="slider-item">
                                <div class="card product-card">
                                    <div class="card-body p-0">
                                        <div class="media flex-column">
                                            <div class="product-thumbnail w-100 position-relative">
                                                <span class="badge badge-success top-left">-20%</span>
                                                <a class="d-block" href="<c:url value='/page-singleP'/>">
                                                    <img class="first-img" src="<c:url value='/template/web/assets/img/product/1.jpg'/>" alt="thumbnail">
                                                    
                                                    <img class="second-img" src="<c:url value='/template/web/assets/img/product/1.1.jpg'/>" alt="thumbnail">
                                                </a>
                                                <!-- product links -->

                                                <div class="product-links d-flex d-flex justify-content-between">
                                                    <button class="pro-btn" data-toggle="modal" data-target="#add-to-cart">Thêm vào giỏ hàng</button>
                                                    <ul class="d-flex justify-content-center">
                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#quick-view">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Quick view" class="ion-ios-search-strong"></span>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#compare">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Add to compare" class="ion-ios-shuffle-strong"></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="<c:url value='/page-wishtlist'/>">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="add to wishlist" class="ion-android-favorite-outline"> </span>
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
                                                    <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>">Juicy
                                                            Couture
                                                            Juicy Quilted Terry Track Jacket</a></h3>
                                                    <h6 class="product-price"><del class="del">$23.90</del>
                                                        <span class="onsale">$21.51</span></h6>
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
                                                <a class="d-block" href="<c:url value='/page-singleP'/>">
                                                    <img class="first-img" src="<c:url value='/template/web/assets/img/product/2.jpg'/>" alt="thumbnail">
                                                    
                                                    <img class="second-img"  src="<c:url value='/template/web/assets/img/product/2.1.jpg'/>" alt="thumbnail">
                                                   
                                                </a>
                                                <!-- product links -->

                                                <div class="product-links d-flex d-flex justify-content-between">
                                                    <button class="pro-btn" data-toggle="modal" data-target="#add-to-cart">Thêm vào giỏ hàng</button>
                                                    <ul class="d-flex justify-content-center">
                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#quick-view">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Quick view" class="ion-ios-search-strong"></span>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#compare">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Add to compare" class="ion-ios-shuffle-strong"></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="<c:url value='/page-wishtlist'/>">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="add to wishlist" class="ion-android-favorite-outline"> </span>
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
                                                    <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>">Originals
                                                            Kaval Windbreaker Winter Jacket</a></h3>
                                                    <h6 class="product-price"><del class="del">$23.90</del>
                                                        <span class="onsale">$21.51</span></h6>
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
                                                <a class="d-block" href="<c:url value='/page-singleP'/>">
                                                    <img class="first-img" src="<c:url value='/template/web/assets/img/product/3.jpg'/>" alt="thumbnail">
                                                </a>
                                                <!-- product links -->

                                                <div class="product-links d-flex d-flex justify-content-between">
                                                    <button class="pro-btn" data-toggle="modal" data-target="#add-to-cart">Thêm vào giỏ hàng</button>
                                                    <ul class="d-flex justify-content-center">
                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#quick-view">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Quick view" class="ion-ios-search-strong"></span>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#compare">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Add to compare" class="ion-ios-shuffle-strong"></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="<c:url value='/page-wishtlist'/>">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="add to wishlist" class="ion-android-favorite-outline"> </span>
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
                                                    <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>">Trans-Weight Hooded Wind and
                                                            Water Resistant Shell</a></h3>
                                                    <h6 class="product-price">
                                                        <span class="onsale">$21.51</span></h6>
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
                                                <a class="d-block" href="<c:url value='/page-singleP'/>">
                                                    <img class="first-img" src="<c:url value='/template/web/assets/img/product/4.jpg'/>" alt="thumbnail">
                                                   <img class="first-img" src="<c:url value='/template/web/assets/img/product/4.1.jpg'/>" alt="thumbnail">
                                                </a>
                                                <!-- product links -->

                                                <div class="product-links d-flex d-flex justify-content-between">
                                                    <button class="pro-btn" data-toggle="modal" data-target="#add-to-cart">Thêm vào giỏ hàng</button>
                                                    <ul class="d-flex justify-content-center">
                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#quick-view">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Quick view" class="ion-ios-search-strong"></span>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#compare">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Add to compare" class="ion-ios-shuffle-strong"></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="<c:url value='/page-wishtlist'/>">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="add to wishlist" class="ion-android-favorite-outline"> </span>
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
                                                    <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>">New
                                                            Balance Fresh Foam Kaymin</a></h3>
                                                    <h6 class="product-price">
                                                        <span class="onsale">$21.51</span></h6>
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
                                                <a class="d-block" href="<c:url value='/page-singleP'/>">
                                                    <img class="first-img" src="<c:url value='/template/web/assets/img/product/5.jpg'/>" alt="thumbnail">
                                                </a>
                                                <!-- product links -->

                                                <div class="product-links d-flex d-flex justify-content-between">
                                                    <button class="pro-btn" data-toggle="modal" data-target="#add-to-cart">Thêm vào giỏ hàng</button>
                                                    <ul class="d-flex justify-content-center">
                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#quick-view">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Quick view" class="ion-ios-search-strong"></span>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#compare">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Add to compare" class="ion-ios-shuffle-strong"></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="<c:url value='/page-wishtlist'/>">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="add to wishlist" class="ion-android-favorite-outline"> </span>
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
                                                    <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>">New
                                                            Balance Fresh Foam Kaymin</a></h3>
                                                    <h6 class="product-price">
                                                        <span class="onsale">$21.51</span></h6>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- slider-item end -->
                        </div>
                    </div>
                    <!-- third tab-pane -->
                    <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
                        <div class="product-slider-init theme1 slick-nav">
                            <div class="slider-item">
                                <div class="card product-card">
                                    <div class="card-body p-0">
                                        <div class="media flex-column">
                                            <div class="product-thumbnail w-100 position-relative">
                                                <span class="badge badge-success top-left">-20%</span>
                                                <a class="d-block" href="<c:url value='/page-singleP'/>">
                                                    <img class="first-img" src="<c:url value='/template/web/assets/img/product/1.jpg'/>" alt="thumbnail">
                                                    <img class="second-img" src="<c:url value='/template/web/assets/img/product/1.1.jpg'/>" alt="thumbnail">
                                                </a>
                                                <!-- product links -->

                                                <div class="product-links d-flex d-flex justify-content-between">
                                                    <button class="pro-btn" data-toggle="modal" data-target="#add-to-cart">Thêm vào giỏ hàng</button>
                                                    <ul class="d-flex justify-content-center">
                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#quick-view">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Quick view" class="ion-ios-search-strong"></span>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#compare">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Add to compare" class="ion-ios-shuffle-strong"></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="<c:url value='/page-wishtlist'/>">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="add to wishlist" class="ion-android-favorite-outline"> </span>
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
                                                    <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>">Juicy
                                                            Couture
                                                            Juicy Quilted Terry Track Jacket</a></h3>
                                                    <h6 class="product-price"><del class="del">$23.90</del>
                                                        <span class="onsale">$21.51</span></h6>
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
                                                <a class="d-block" href="<c:url value='/page-singleP'/>">
                                                    <img class="first-img" src="<c:url value='/template/web/assets/img/product/2.jpg'/>" alt="thumbnail">
                                                    <img class="second-img" src="<c:url value='/template/web/assets/img/product/2.1.jpg'/>" alt="thumbnail">
                                                </a>
                                                <!-- product links -->

                                                <div class="product-links d-flex d-flex justify-content-between">
                                                    <button class="pro-btn" data-toggle="modal" data-target="#add-to-cart">Thêm vào giỏ hàng</button>
                                                    <ul class="d-flex justify-content-center">
                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#quick-view">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Quick view" class="ion-ios-search-strong"></span>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#compare">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Add to compare" class="ion-ios-shuffle-strong"></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="<c:url value='/page-wishtlist'/>">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="add to wishlist" class="ion-android-favorite-outline"> </span>
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
                                                    <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>">Originals
                                                            Kaval Windbreaker Winter Jacket</a></h3>
                                                    <h6 class="product-price"><del class="del">$23.90</del>
                                                        <span class="onsale">$21.51</span></h6>
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
                                                <a class="d-block" href="<c:url value='/page-singleP'/>">
                                                    <img class="first-img" src="<c:url value='/template/web/assets/img/product/3.jpg'/>" alt="thumbnail">
                                                </a>
                                                <!-- product links -->

                                                <div class="product-links d-flex d-flex justify-content-between">
                                                    <button class="pro-btn" data-toggle="modal" data-target="#add-to-cart">Thêm vào giỏ hàng</button>
                                                    <ul class="d-flex justify-content-center">
                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#quick-view">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Quick view" class="ion-ios-search-strong"></span>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#compare">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Add to compare" class="ion-ios-shuffle-strong"></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="<c:url value='/page-wishtlist'/>">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="add to wishlist" class="ion-android-favorite-outline"> </span>
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
                                                    <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>">Trans-Weight Hooded Wind and
                                                            Water Resistant Shell</a></h3>
                                                    <h6 class="product-price">
                                                        <span class="onsale">$21.51</span></h6>
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
                                                <a class="d-block" href="<c:url value='/page-singleP'/>">
                                                    <img class="first-img" src="<c:url value='/template/web/assets/img/product/4.jpg'/>" alt="thumbnail">
                                                    <img class="second-img" src="<c:url value='/template/web/assets/img/product/4.1.jpg'/>" alt="thumbnail">
                                                </a>
                                                <!-- product links -->

                                                <div class="product-links d-flex d-flex justify-content-between">
                                                    <button class="pro-btn" data-toggle="modal" data-target="#add-to-cart">Thêm vào giỏ hàng</button>
                                                    <ul class="d-flex justify-content-center">
                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#quick-view">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Quick view" class="ion-ios-search-strong"></span>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#compare">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Add to compare" class="ion-ios-shuffle-strong"></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="<c:url value='/page-wishtlist'/>">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="add to wishlist" class="ion-android-favorite-outline"> </span>
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
                                                    <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>">New
                                                            Balance Fresh Foam Kaymin</a></h3>
                                                    <h6 class="product-price">
                                                        <span class="onsale">$21.51</span></h6>
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
                                                <a class="d-block" href="<c:url value='/page-singleP'/>">
                                                    <img class="first-img" src="<c:url value='/template/web/assets/img/product/5.jpg'/>" alt="thumbnail">
                                                </a>
                                                <!-- product links -->

                                                <div class="product-links d-flex d-flex justify-content-between">
                                                    <button class="pro-btn" data-toggle="modal" data-target="#add-to-cart">Thêm vào giỏ hàng</button>
                                                    <ul class="d-flex justify-content-center">
                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#quick-view">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Quick view" class="ion-ios-search-strong"></span>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#" data-toggle="modal" data-target="#compare">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="Add to compare" class="ion-ios-shuffle-strong"></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="<c:url value='/page-wishtlist'/>">
                                                                <span data-toggle="tooltip" data-placement="bottom" title="add to wishlist" class="ion-android-favorite-outline"> </span>
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
                                                    <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>">New
                                                            Balance Fresh Foam Kaymin</a></h3>
                                                    <h6 class="product-price">
                                                        <span class="onsale">$21.51</span></h6>
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
                    <h2 class="title text-dark text-capitalize mb-20">Sản phẩm nổi bật </h2>
                    <p class="text">Xem qua bộ sưu tập các sản phẩm nổi bật của chúng tôi. </p>
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
                                        <a class="d-block" href="<c:url value='/page-singleP'/>">
                                            <img class="first-img" src="<c:url value='/template/web/assets/img/product/5.jpg'/>" alt="thumbnail">
                                        </a>
                                        <!-- product links -->

                                        <div class="product-links d-flex d-flex justify-content-between">
                                            <button class="pro-btn" data-toggle="modal" data-target="#add-to-cart">Thêm vào giỏ hàng</button>
                                            <ul class="d-flex justify-content-center">
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#quick-view">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="Quick view" class="ion-ios-search-strong"></span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#compare">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="Add to compare" class="ion-ios-shuffle-strong"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="<c:url value='/page-wishtlist'/>">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="add to wishlist" class="ion-android-favorite-outline"> </span>
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
                                            <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>">New
                                                    Balance Fresh Foam Kaymin</a></h3>
                                            <h6 class="product-price">
                                                <span class="onsale">$21.51</span></h6>
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
                                        <a class="d-block" href="<c:url value='/page-singleP'/>">
                                            <img class="first-img" src="<c:url value='/template/web/assets/img/product/1.jpg'/>" alt="thumbnail">
                                            <img class="second-img" src="<c:url value='/template/web/assets/img/product/1.1.jpg'/>" alt="thumbnail">
                                        </a>
                                        <!-- product links -->

                                        <div class="product-links d-flex d-flex justify-content-between">
                                            <button class="pro-btn" data-toggle="modal" data-target="#add-to-cart">Add
                                                to cart</button>
                                            <ul class="d-flex justify-content-center">
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#quick-view">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="Quick view" class="ion-ios-search-strong"></span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#compare">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="Add to compare" class="ion-ios-shuffle-strong"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="<c:url value='/page-wishtlist'/>">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="add to wishlist" class="ion-android-favorite-outline"> </span>
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
                                            <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>">Juicy
                                                    Couture
                                                    Juicy Quilted Terry Track Jacket</a></h3>
                                            <h6 class="product-price"><del class="del">$23.90</del>
                                                <span class="onsale">$21.51</span></h6>
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
                                        <a class="d-block" href="<c:url value='/page-singleP'/>">
                                            <img class="first-img" src="<c:url value='/template/web/assets/img/product/3.jpg'/>" alt="thumbnail">
                                        </a>
                                        <!-- product links -->

                                        <div class="product-links d-flex d-flex justify-content-between">
                                            <button class="pro-btn" data-toggle="modal" data-target="#add-to-cart">Add
                                                to cart</button>
                                            <ul class="d-flex justify-content-center">
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#quick-view">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="Quick view" class="ion-ios-search-strong"></span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#compare">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="Add to compare" class="ion-ios-shuffle-strong"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="<c:url value='/page-wishtlist'/>">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="add to wishlist" class="ion-android-favorite-outline"> </span>
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
                                            <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>">Trans-Weight
                                                    Hooded Wind and
                                                    Water Resistant Shell</a></h3>
                                            <h6 class="product-price">
                                                <span class="onsale">$21.51</span></h6>
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
                                        <a class="d-block" href="<c:url value='/page-singleP'/>">
                                            <img class="first-img" src="<c:url value='/template/web/assets/img/product/2.jpg'/>" alt="thumbnail">
                                            
                                            <img class="second-img" src="<c:url value='/template/web/assets/img/product/2..1jpg'/>" alt="thumbnail">
                                        </a>
                                        <!-- product links -->

                                        <div class="product-links d-flex d-flex justify-content-between">
                                            <button class="pro-btn" data-toggle="modal" data-target="#add-to-cart">Add
                                                to cart</button>
                                            <ul class="d-flex justify-content-center">
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#quick-view">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="Quick view" class="ion-ios-search-strong"></span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#compare">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="Add to compare" class="ion-ios-shuffle-strong"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="<c:url value='/page-wishtlist'/>">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="add to wishlist" class="ion-android-favorite-outline"> </span>
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
                                            <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>">Originals
                                                    Kaval Windbreaker Winter Jacket</a></h3>
                                            <h6 class="product-price"><del class="del">$23.90</del>
                                                <span class="onsale">$21.51</span></h6>
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
                                        <a class="d-block" href="<c:url value='/page-singleP'/>">
                                            <img class="first-img" src="<c:url value='/template/web/assets/img/product/4.jpg'/>" alt="thumbnail">
                                            <img class="second-img" src="<c:url value='/template/web/assets/img/product/4.1.jpg'/>" alt="thumbnail">
                                        </a>
                                        <!-- product links -->

                                        <div class="product-links d-flex d-flex justify-content-between">
                                            <button class="pro-btn" data-toggle="modal" data-target="#add-to-cart">Add
                                                to cart</button>
                                            <ul class="d-flex justify-content-center">
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#quick-view">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="Quick view" class="ion-ios-search-strong"></span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#compare">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="Add to compare" class="ion-ios-shuffle-strong"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="<c:url value='/page-wishtlist'/>">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="add to wishlist" class="ion-android-favorite-outline"> </span>
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
                                            <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>">New
                                                    Balance Fresh Foam Kaymin</a></h3>
                                            <h6 class="product-price">
                                                <span class="onsale">$21.51</span></h6>
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

<!-- testimonial-section start -->
<section class="testimonial-section pb-70">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="testimonial-init dots-style">
                    <div class="slider-item">
                        <div class="testimonial-content text-center">
                            <img class="mb-30 mx-auto" src="<c:url value='/template/web/assets/img/profile/1.png'/>" alt="user">
                            <p> Đây là mô tả của  </p>
                            <span class="ion-quote mt-15 mb-30"></span>
                            <h4 class="text-uppercase mb-15">John Doe</h4>
                            <a class="text-capitalize" href="mailto:demo@hasthemes.com">demo@hasthemes.com</a>
                        </div>
                    </div>
                    <!-- slider-item end -->
                    <div class="slider-item">
                        <div class="testimonial-content text-center">
                            <img class="mb-30 mx-auto" src="<c:url value='/template/web/assets/img/profile/2.png'/>" alt="user">
                            <p> Đây là mô tả của </p>
                            <span class="ion-quote mt-15 mb-30"></span>
                            <h4 class="text-uppercase mb-15">John Doe</h4>
                            <a class="text-capitalize" href="mailto:demo@hasthemes.com">demo@hasthemes.com</a>
                        </div>
                    </div>
                    <!-- slider-item end -->
                    <div class="slider-item">
                        <div class="testimonial-content text-center">
                            <img class="mb-30 mx-auto" src="<c:url value='/template/web/assets/img/profile/3.png'/>" alt="user">
                            <p> Đây là mô tả của </p>
                            <span class="ion-quote mt-15 mb-30"></span>
                            <h4 class="text-uppercase mb-15">John Doe</h4>
                            <a class="text-capitalize" href="mailto:demo@hasthemes.com">demo@hasthemes.com</a>
                        </div>
                    </div>
                    <!-- slider-item end -->
                    <div class="slider-item">
                        <div class="testimonial-content text-center">
                            <img class="mb-30 mx-auto" src="<c:url value='/template/web/assets/img/profile/4.png'/>" alt="user">
                            <p> Đây là mô tả của </p>
                            <span class="ion-quote mt-15 mb-30"></span>
                            <h4 class="text-uppercase mb-15">John Doe</h4>
                            <a class="text-capitalize" href="mailto:demo@hasthemes.com">demo@hasthemes.com</a>
                        </div>
                    </div>
                    <!-- slider-item end -->
                    <div class="slider-item">
                        <div class="testimonial-content text-center">
                            <img class="mb-30 mx-auto" src="assets/img/profile/1.png" alt="user">
                            <p> Đây là mô tả của </p>
                            <span class="ion-quote mt-15 mb-30"></span>
                            <h4 class="text-uppercase mb-15">John Doe</h4>
                            <a class="text-capitalize" href="mailto:demo@hasthemes.com">demo@hasthemes.com</a>
                        </div>
                    </div>
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
                    <h2 class="title text-dark text-capitalize mb-20">Sản phẩm mới </h2>
                    <p class="text">Xem qua bộ sưu tập các sản phẩm mới của chúng tôi.</p>
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
                                        <a class="d-block" href="<c:url value='/page-singleP'/>">
                                            <img class="first-img" src="<c:url value='/template/web/assets/img/product/5.jpg'/>" alt="thumbnail">
                                        </a>
                                        <!-- product links -->

                                        <div class="product-links d-flex d-flex justify-content-between">
                                            <button class="pro-btn" data-toggle="modal" data-target="#add-to-cart">Thêm
                                               vào giỏ hàng</button>
                                            <ul class="d-flex justify-content-center">
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#quick-view">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="Quick view" class="ion-ios-search-strong"></span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#compare">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="Add to compare" class="ion-ios-shuffle-strong"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="<c:url value='/page-wishtlist'/>">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="add to wishlist" class="ion-android-favorite-outline"> </span>
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
                                            <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>">New
                                                    Balance Fresh Foam Kaymin</a></h3>
                                            <h6 class="product-price">
                                                <span class="onsale">$21.51</span></h6>
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
                                        <a class="d-block" href="<c:url value='/page-singleP'/>">
                                            <img class="first-img" src="<c:url value='/template/web/assets/img/product/1.jpg'/>" alt="thumbnail">
                                            <img class="second-img" src="<c:url value='/template/web/assets/img/product/1.1.jpg'/>" alt="thumbnail">
                                        </a>
                                        <!-- product links -->

                                        <div class="product-links d-flex d-flex justify-content-between">
                                            <button class="pro-btn" data-toggle="modal" data-target="#add-to-cart">Add
                                                to cart</button>
                                            <ul class="d-flex justify-content-center">
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#quick-view">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="Quick view" class="ion-ios-search-strong"></span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#compare">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="Add to compare" class="ion-ios-shuffle-strong"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="<c:url value='/page-wishtlist'/>">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="add to wishlist" class="ion-android-favorite-outline"> </span>
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
                                            <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>">Juicy
                                                    Couture
                                                    Juicy Quilted Terry Track Jacket</a></h3>
                                            <h6 class="product-price"><del class="del">$23.90</del>
                                                <span class="onsale">$21.51</span></h6>
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
                                        <a class="d-block" href="<c:url value='/page-singleP'/>">
                                            <img class="first-img" src="<c:url value='/template/web/assets/img/product/6.jpg'/>" alt="thumbnail">
                                        </a>
                                        <!-- product links -->

                                        <div class="product-links d-flex d-flex justify-content-between">
                                            <button class="pro-btn" data-toggle="modal" data-target="#add-to-cart">Add
                                                to cart</button>
                                            <ul class="d-flex justify-content-center">
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#quick-view">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="Quick view" class="ion-ios-search-strong"></span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#compare">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="Add to compare" class="ion-ios-shuffle-strong"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="<c:url value='/page-wishtlist'/>">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="add to wishlist" class="ion-android-favorite-outline"> </span>
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
                                            <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>">Trans-Weight
                                                    Hooded Wind and
                                                    Water Resistant Shell</a></h3>
                                            <h6 class="product-price">
                                                <span class="onsale">$21.51</span></h6>
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
                                        <a class="d-block" href="<c:url value='/page-singleP'/>">
                                            <img class="first-img" src="<c:url value='/template/web/assets/img/product/2.jpg'/>" alt="thumbnail">
                                            <img class="second-img" src="<c:url value='/template/web/assets/img/product/2.1.jpg'/>" alt="thumbnail">
                                        </a>
                                        <!-- product links -->

                                        <div class="product-links d-flex d-flex justify-content-between">
                                            <button class="pro-btn" data-toggle="modal" data-target="#add-to-cart">Add
                                                to cart</button>
                                            <ul class="d-flex justify-content-center">
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#quick-view">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="Quick view" class="ion-ios-search-strong"></span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#compare">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="Add to compare" class="ion-ios-shuffle-strong"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="<c:url value='/page-wishtlist'/>">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="add to wishlist" class="ion-android-favorite-outline"> </span>
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
                                            <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>">Originals
                                                    Kaval Windbreaker Winter Jacket</a></h3>
                                            <h6 class="product-price"><del class="del">$23.90</del>
                                                <span class="onsale">$21.51</span></h6>
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
                                        <a class="d-block" href="<c:url value='/page-singleP'/>">
                                            <img class="first-img" src="<c:url value='/template/web/assets/img/product/4.jpg'/>" alt="thumbnail">
                                            <img class="second-img" src="<c:url value='/template/web/assets/img/product/4.1.jpg'/>" alt="thumbnail">
                                        </a>
                                        <!-- product links -->

                                        <div class="product-links d-flex d-flex justify-content-between">
                                            <button class="pro-btn" data-toggle="modal" data-target="#add-to-cart">Add
                                                to cart</button>
                                            <ul class="d-flex justify-content-center">
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#quick-view">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="Quick view" class="ion-ios-search-strong"></span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#compare">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="Add to compare" class="ion-ios-shuffle-strong"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="<c:url value='/page-wishtlist'/>">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="add to wishlist" class="ion-android-favorite-outline"> </span>
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
                                            <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>">New
                                                    Balance Fresh Foam Kaymin</a></h3>
                                            <h6 class="product-price">
                                                <span class="onsale">$21.51</span></h6>
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
                                        <a class="d-block" href="<c:url value='/page-singleP'/>">
                                            <img class="first-img" src="<c:url value='/template/web/assets/img/product/6.jpg'/>" alt="thumbnail">
                                            <img class="second-img" src="<c:url value='/template/web/assets/img/product/8.jpg'/>" alt="thumbnail">
                                        </a>
                                        <!-- product links -->

                                        <div class="product-links d-flex d-flex justify-content-between">
                                            <button class="pro-btn" data-toggle="modal" data-target="#add-to-cart">Thêm vào giỏ hàng</button>
                                            <ul class="d-flex justify-content-center">
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#quick-view">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="Quick view" class="ion-ios-search-strong"></span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#compare">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="Add to compare" class="ion-ios-shuffle-strong"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="<c:url value='/page-wishtlist'/>">
                                                        <span data-toggle="tooltip" data-placement="bottom" title="add to wishlist" class="ion-android-favorite-outline"> </span>
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
                                            <h3 class="title my-10"><a href="<c:url value='/page-shopgrid4'/>">New
                                                    Balance Fresh Foam Kaymin</a></h3>
                                            <h6 class="product-price">
                                                <span class="onsale">$21.51</span></h6>
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
                        <img src="<c:url value='/template/web/assets/img/banner/3.jpg'/>" alt="banner-thumb-naile">
                    </div>
                    <div class="banner-content banner-content-large">
                        <p class="text text-uppercase text-dark mb-10">Black Friday</p>
                        <h4 class="title text-capitalize text-dark">Ưu đãi lên đến
                            <span class="d-block d-inline-sm-block mt-10 mt-md-20">50% </span> </h4>
                        <a class="view-link text-capitalize mt-25" href="<c:url value='/page-shopgrid4'/>">Xem bộ sưu tập
                            <span class="ion-android-arrow-dropright-circle theme-color"></span></a>
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
                    <h2 class="title text-dark text-capitalize">Blog mới nhất</h2>
                    <p class="text mt-20">Trình bày bài viết theo cách tốt nhất để làm nổi bật những khoảnh khắc thú vị trên blog của bạn.
                    </p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="blog-init slick-nav">
                    <div class="slider-item">
                        <div class="single-blog">
                            <a class="blog-thumb mb-20 zoom-in d-block overflow-hidden" href="blog-grid-left-sidebar.html">
                                <img src="<c:url value='/template/web/assets/img/blog-post/1.jpg'/>" alt="blog-thumb-naile">
                            </a>
                            <div class="blog-post-content">
                                <h3 class="title text-capitalize mb-15"><a href="single-blog.html">Đây là lần đầu
                                        Post For XipBlog</a></h3>
                                <h5 class="sub-title mb-30 text-capitalize"> Đăng bởi <a class="blog-link theme-color d-inline-block mx-1" href="../../user/hastech.html">HasTech</a>Oct 4TH, 2020 <a class="blog-link theme-color d-inline-block mx-1" href="../../user/hastech.html">Fashion</a></h5>
                                <a class="btn read-more text-capitalize" href="single-blog.html">Xem thêm</a>
                            </div>
                        </div>
                    </div>
                    <!-- slider-item end -->
                    <div class="slider-item">
                        <div class="single-blog">
                            <a class="blog-thumb mb-20 zoom-in d-block overflow-hidden" href="blog-grid-left-sidebar.html">
                                <img src="<c:url value='/template/web/assets/img/blog-post/2.jpg'/>" alt="blog-thumb-naile">
                            </a>
                            <div class="blog-post-content">
                                <h3 class="title text-capitalize mb-15"><a href="single-blog.html">Đây là lần đầu
                                        Post For XipBlog</a></h3>
                                <h5 class="sub-title mb-30 text-capitalize"> Đăng bởi <a class="blog-link theme-color d-inline-block mx-1" href="../../user/hastech.html">HasTech</a>Oct 4TH, 2020 <a class="blog-link theme-color d-inline-block mx-1" href="../../user/hastech.html">Fashion</a></h5>
                                <a class="btn read-more text-capitalize" href="single-blog.html">Xem thêm</a>
                            </div>
                        </div>
                    </div>
                    <!-- slider-item end -->
                    <div class="slider-item">
                        <div class="single-blog">
                            <a class="blog-thumb mb-20 zoom-in d-block overflow-hidden" href="blog-grid-left-sidebar.html">
                                <img src="<c:url value='/template/web/assets/img/blog-post/3.jpg'/>" alt="blog-thumb-naile">
                            </a>
                            <div class="blog-post-content">
                                <h3 class="title text-capitalize mb-15"><a href="single-blog.html">Đây là lần đầu
                                        Post For XipBlog</a></h3>
                                <h5 class="sub-title mb-30 text-capitalize"> Đăng bởi <a class="blog-link theme-color d-inline-block mx-1" href="../../user/hastech.html">HasTech</a>Oct 4TH, 2020 <a class="blog-link theme-color d-inline-block mx-1" href="../../user/hastech.html">Fashion</a></h5>
                                <a class="btn read-more text-capitalize" href="single-blog.html">Xem thêm</a>
                            </div>
                        </div>
                    </div>
                    <!-- slider-item end -->
                    <div class="slider-item">
                        <div class="single-blog">
                            <a class="blog-thumb mb-20 zoom-in d-block overflow-hidden" href="blog-grid-left-sidebar.html">
                                <img src="<c:url value='/template/web/assets/img/blog-post/4.jpg'/>" alt="blog-thumb-naile">
                            </a>
                            <div class="blog-post-content">
                                <h3 class="title text-capitalize mb-15"><a href="single-blog.html">Đây là lần đầu
                                        Post For XipBlog</a></h3>
                                <h5 class="sub-title mb-30 text-capitalize"> Đăng bởi <a class="blog-link theme-color d-inline-block mx-1" href="../../user/hastech.html">HasTech</a>Oct 4TH, 2020 <a class="blog-link theme-color d-inline-block mx-1" href="../../user/hastech.html">Fashion</a></h5>
                                <a class="btn read-more text-capitalize" href="single-blog.html">Xem thêm</a>
                            </div>
                        </div>
                    </div>
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
                                    <img src="<c:url value='/template/web/assets/img/slider/thumb/1.jpg'/>" alt="product-thumb">
                                </div>
                            </div>
                            <!-- single-product end -->
                            <div class="single-product">
                                <div class="product-thumb">
                                    <img src="<c:url value='/template/web/assets/img/slider/thumb/2.jpg'/>" alt="product-thumb">
                                </div>
                            </div>
                            <!-- single-product end -->
                            <div class="single-product">
                                <div class="product-thumb">
                                    <img src="<c:url value='/template/web/assets/img/slider/thumb/3.jpg'/>" alt="product-thumb">
                                </div>
                            </div>
                            <!-- single-product end -->
                            <div class="single-product">
                                <div class="product-thumb">
                                    <img src="<c:url value='/template/web/assets/img/slider/thumb/4.jpg'/>" alt="product-thumb">
                                </div>
                            </div>
                            <!-- single-product end -->
                        </div>

                        <div class="product-sync-nav slick-nav-sync">
                            <div class="single-product">
                                <div class="product-thumb">
                                    <a href="javascript:void(0)"> <img src="<c:url value='/template/web/assets/img/slider/thumb/1.1.jpg'/>" alt="product-thumb"></a>
                                </div>
                            </div>
                            <!-- single-product end -->
                            <div class="single-product">
                                <div class="product-thumb">
                                    <a href="javascript:void(0)"> <img src="<c:url value='/template/web/assets/img/slider/thumb/2.1.jpg'/>" alt="product-thumb"></a>
                                </div>
                            </div>
                            <!-- single-product end -->
                            <div class="single-product">
                                <div class="product-thumb">
                                    <a href="javascript:void(0)"><img src="<c:url value='/template/web/assets/img/slider/thumb/3.1.jpg'/>" alt="product-thumb"></a>
                                </div>
                            </div>
                            <!-- single-product end -->
                            <div class="single-product">
                                <div class="product-thumb">
                                    <a href="javascript:void(0)"><img src="<c:url value='/template/web/assets/img/slider/thumb/4.1.jpg'/>" alt="product-thumb"></a>
                                </div>
                            </div>
                            <!-- single-product end -->
                            <div class="single-product">
                                <div class="product-thumb">
                                    <a href="javascript:void(0)"><img src="<c:url value='/template/web/assets/img/slider/thumb/2.1.jpg'/>" alt="product-thumb"></a>
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
                                <p class="border-top pt-30">Whether you're exploring the woods or the city, the Brixton™
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
                                            <button class="count-btn increment"><i class="fas fa-chevron-up"></i></button>
                                            <button class="count-btn decrement"><i class="fas fa-chevron-down"></i></button>
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
                                <h6 class="color"><strong>Dimension: </strong>: <span class="dmc">40x60cm</span> </h6>
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
                                <button type="button" class="btn theme-btn--dark1 btn--md mt-4" data-dismiss="modal">Continue
                                    shopping</button>
                                <button class="btn theme-btn--dark1 btn--md mt-4"><i class="ion-checkmark-round"></i>Proceed to
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