<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiết bài viết</title>
</head>
<body>

<!-- breadcrumb-section start -->
<nav class="breadcrumb-section theme1 breadcrumb-bg1">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="breadcrumb-title text-center my-20">
                    <h2 class="title text-dark text-capitalize">Blog</h2>
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
            <div class="col-12">
                <div class="blog-title">
                    <h2 class="title">Những bài viết hay nhất </h2>
                    <p class="text">Chủ đề sản phẩm, giới thiệu, review,....</p>
                </div>
            </div>
        </div>
        <div class="row">

            <c:forEach var="item" items="${blogs}">
                <div class="col-12 col-sm-6  col-md-6 col-lg-4 col-xl-4 mb-30">
                    <div class="single-blog">
                        <a class="blog-thumb mb-20 zoom-in d-block overflow-hidden" href="blog-grid-left-sidebar.html">

                            <c:set var="image" value="/repository/${item.thumbnail}"/>
                            <img src="${image}" id="viewImage" width="300px" height="300px" />
                        </a>
                        <div class="blog-post-content">
                            <h3 class="title text-capitalize mb-15"><a href="<c:url value="/chi-tiet-bai-viet/${item.id}"/> "> ${item.title}</a></h3>
                            <h5 class="sub-title mb-10 text-capitalize"> Đăng bởi<a class="blog-link theme-color d-inline-block mx-1" href="#">${item.createdBy} </a>${item.createdDate} <a class="blog-link theme-color d-inline-block mx-1" href="../../user/hastech.html">Fashion</a></h5>
                            <p class="text">
                               ${item.shortDescription}
                            </p>
                            <a class="btn read-more text-capitalize mt-20" href="<c:url value="/chi-tiet-bai-viet/${item.id}"/> ">Đọc thêm</a>
                        </div>
                    </div>
                </div>


            </c:forEach>



        </div>
    </div>
</section>
<!-- product tab end -->

<!-- news-letter start -->
<section class="news-letter-section theme1 bg-white">
    <div class=" container">
        <div class="news-letter-wrapper pt-65 pb-65">
            <div class="row">
                <div class="col-12">
                    <div class="form-title mb-30 text-center">
                        <p class="text mb-10">Special Ofers For Subscribers</p>
                        <h4 class="title text text-capitalize">Ten Percent Member Discount</h4>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <form class="news-letter-form position-relative" action="
                        http://devitems.us11.list-manage.com/subscribe/post?u=6bbb9b6f5827bd842d9640c82&amp;id=05d85f18ef" target="_blank" method="post">
                        <input class="form-control" type="text" placeholder="Your email address">
                        <button class="btn news-letter-btn text-uppercase" type="submit">Subscribe</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- news-letter end -->



</body>
</html>