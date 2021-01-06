<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiết sản phẩm</title>
</head>
<body>

<!-- breadcrumb-section start -->
<nav class="breadcrumb-section theme1 breadcrumb-bg1">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="breadcrumb-title text-center my-20">
                    <h2 class="title text-dark text-capitalize">blog</h2>
                </div>
            </div>
            <div class="col-12">
                <ol class="breadcrumb bg-transparent m-0 p-0 align-items-center justify-content-center">
                    <li class="breadcrumb-item"><a href="<c:url value='/trang-chu'/> ">Trang chủ</a></li>
                    <li class="breadcrumb-item active" aria-current="page">
                        Bài viết
                    </li>
                </ol>
            </div>
        </div>
    </div>
</nav>
<!-- breadcrumb-section end -->

<!-- product tab start -->
<section class="blog-section pb-40">
    <div class="container grid-wraper">
        <div class="row">
            <div class="col-lg-9">
                <div class="row">

                <c:forEach var="item2" items="${blogs}">


                    <div class="col-12 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-30">
                        <div class="single-blog">
                            <a class="blog-thumb mb-20 zoom-in d-block overflow-hidden" href="blog-grid-left-sidebar.html">


                                <c:set var="image" value="/repository/${item2.thumbnail}"/>
                                <img class="first-img"
                                     src="${image}"
                                     alt="thumbnail" height="300px" width="300px">
                            </a>
                            <div class="blog-post-content">
                                <h3 class="title text-capitalize mb-15"><a href="single-blog.html"> ${item2.title}</a></h3>
                                 <p class="text">
                                    ${item2.shortDescription}
                                </p>
                                <a class="btn read-more text-capitalize mt-20" href="single-blog.html">Đọc thêm</a>
                            </div>
                        </div>
                    </div>

                </c:forEach>



                </div>
            </div>
            <div class="col-lg-3 order-lg-first">
                <aside class="blog-left-sidebar mb-30">
                    <div class="sidebar-widget theme1">
                        <h3 class="post-title">Hair Care</h3>
                    </div>
                    <ul id="offcanvas-menu2" class="blog-ctry-menu">
                        <li><a href="javascript:void(0)">Hot Categories</a>
                            <ul class="category-sub-menu">
                                <li><a href="#">Women Shoes</a></li>
                                <li><a href="#">Men Shoes</a></li>
                                <li><a href="#">Boots</a></li>
                                <li><a href="#">Casual Shoes</a></li>
                                <li><a href="#">Flip Flops</a></li>
                            </ul>

                        </li>
                        <li><a href="javascript:void(0)">Outerwear & Jackets</a>
                            <ul class="category-sub-menu">
                                <li><a href="#">Stylish Backpacks</a></li>
                                <li><a href="#">Shoulder Bags</a></li>
                                <li><a href="#">Crossbody Bags</a></li>
                                <li><a href="#">Briefcases</a></li>
                                <li><a href="#">Luggage &amp; Travel</a></li>
                            </ul>
                        </li>
                        <li><a href="javascript:void(0)">Weddings & Events</a>
                            <ul class="category-sub-menu">
                                <li><a href="#">Cosmetic Bags &amp; Cases</a></li>
                                <li><a href="#">Wallets &amp; Card Holders</a></li>
                                <li><a href="#">Luggage Covers</a></li>
                                <li><a href="#">Passport Covers</a></li>
                                <li><a href="#">Bag Parts &amp; Accessories</a></li>
                            </ul>
                        </li>
                        <li><a href="javascript:void(0)">Bottoms</a>
                            <ul class="category-sub-menu">
                                <li><a href="#">Women Shoes</a></li>
                                <li><a href="#">Men Shoes</a></li>
                                <li><a href="#">Boots</a></li>
                                <li><a href="#">Casual Shoes</a></li>
                                <li><a href="#">Flip Flops</a></li>
                            </ul>

                        </li>
                        <li><a href="javascript:void(0)">Tops & Sets</a>
                            <ul class="category-sub-menu">
                                <li><a href="#">Stylish Backpacks</a></li>
                                <li><a href="#">Shoulder Bags</a></li>
                                <li><a href="#">Crossbody Bags</a></li>
                                <li><a href="#">Briefcases</a></li>
                                <li><a href="#">Luggage &amp; Travel</a></li>
                            </ul>
                        </li>
                        <li><a href="javascript:void(0)">Accessories</a>
                            <ul class="category-sub-menu">
                                <li><a href="#">Cosmetic Bags &amp; Cases</a></li>
                                <li><a href="#">Wallets &amp; Card Holders</a></li>
                                <li><a href="#">Luggage Covers</a></li>
                                <li><a href="#">Passport Covers</a></li>
                                <li><a href="#">Bag Parts &amp; Accessories</a></li>
                            </ul>
                        </li>
                    </ul>

                    <div class="sidebar-widget border-top mt-45 pt-45">
                        <h3 class="post-title">tags :</h3>
                        <ul class="product-tag d-flex flex-wrap">
                            <li><a href="#">Women’s</a></li>
                            <li><a href="#">Accessories</a></li>
                            <li><a href="#">Men’s </a></li>
                            <li><a href="#">Tops & Sets</a></li>
                        </ul>
                    </div>
                    <div class="banner img-width-100 border-top mt-45 pt-45 hover-animation position-relative overflow-hidden">
                        <a href="shop-grid-4-column.html" class="d-block">
                            <img src="assets/img/banner/8.jpg" alt="img">
                        </a>
                    </div>
                </aside>
            </div>
        </div>
    </div>
</section>
<!-- product tab end -->

<!-- news-letter start -->
<section class="news-letter-section theme1 bg-white">
    <div class="container">
        <div class="news-letter-wrapper pt-65 pb-65">
            <div class="row">
                <div class="col-12">
                    <div class="form-title mb-30 text-center">
                        <p class="text mb-10">Special Ofers For Subscribers</p>
                        <h4 class="title text text-capitalize">
                            Ten Percent Member Discount
                        </h4>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <form class="news-letter-form position-relative" action="
                          http://devitems.us11.list-manage.com/subscribe/post?u=6bbb9b6f5827bd842d9640c82&amp;id=05d85f18ef" target="_blank" method="post">
                        <input class="form-control" type="text" placeholder="Your email address">
                        <button class="btn news-letter-btn text-uppercase" type="submit">
                            Subscribe
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- news-letter end -->



</body>
</html>