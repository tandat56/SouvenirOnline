<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiết sản phẩm</title>
</head>
<body>
<%--<c:forEach var="item" items="${model.}">--%>
<form method="get" action="<c:url value="/AddCart/${model.id}"/> ">
<nav class="breadcrumb-section theme1 breadcrumb-bg1">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="breadcrumb-title text-center my-20">
          <h2 class="title text-dark text-capitalize">Chi tiết sản phẩm</h2>
        </div>
      </div>
      <div class="col-12">
        <ol class="breadcrumb bg-transparent m-0 p-0 align-items-center justify-content-center">
          <li class="breadcrumb-item"><a href="<c:url value='/san-pham'/>">Cửa hàng</a></li>
          <li class="breadcrumb-item active" aria-current="page">
           ${model.productName}
          </li>
        </ol>
      </div>
    </div>
  </div>
</nav>

<!-- breadcrumb-section end -->
<%--<c:forEach var="item3" items="${model.listResult}">--%>
<!-- product-single start -->
<section class="product-single theme1">
  <div class="container grid-wraper">
    <div class="row">
      <div class="col-md-9 mx-auto col-lg-6 mb-5 mb-lg-0">
        <div class="position-relative">
          <span class="badge badge-danger top-left">Mới</span>
        </div>

        <div class="product-sync-init mb-30">
            <div class="single-product">
                <div class="product-thumb">
                    <c:set var="image" value="/repository/${model.image}"/>
                    <img class="first-img"
                         src="${image}"
                         alt="thumbnail" height="575px" width="500px">
                </div>
            </div>
        </div>
      </div>


        <div class="col-lg-6 mt-5 mt-md-0">
            <div class="single-product-info">
                <div class="single-product-head">
                    <h2 class="title mb-20"><%--${item3.productName}--%></h2>
                    <div class="star-content mb-20">
                        <span class="star-on"><i class="ion-ios-star"></i> </span>
                        <span class="star-on"><i class="ion-ios-star"></i> </span>
                        <span class="star-on"><i class="ion-ios-star"></i> </span>
                        <span class="star-on"><i class="ion-ios-star"></i> </span>
                        <span class="star-on"><i class="ion-ios-star"></i> </span>
                        <a href="#" id="write-comment"><span class="ml-2"><i class="far fa-comment-dots"></i></span>
                            Đọc nhận xét <span>(1)</span></a>
                        <a href="#" data-toggle="modal" data-target="#exampleModalCenter"><span class="edite"><i class="far fa-edit"></i></span> Nhận xét</a>
                    </div>
                </div>
                <div class="product-body mb-40">
                    <div class="d-flex align-items-center mb-30 border-bottom pb-30">
                        <h6 class="product-price mr-20">
                            <%--<del class="del">${model.price}</del>--%> <span class="onsale"><fmt:formatNumber type="number" groupingUsed="true" value="${model.price * (1 - item3.discount / 100 )}"/>₫</span>
                        </h6>
<%--                        <span class="badge my-badge position-static bg-dark">Save ${model.discount}%</span>--%>
                    </div>
                    <p class="font-size">
                    ${model.title}
                    </p>
                </div>
                <div class="product-footer">
                    <div class="product-count style d-flex flex-column flex-sm-row mt-30 mb-30">
                        <div class="count d-flex">
                            <input type="number" min="1" max="10" step="1" value="1" readonly>
                            <div class="button-group">
                                <button class="count-btn increment">
                                    <i class="fas fa-chevron-up"></i>
                                </button>
                                <button class="count-btn decrement">
                                    <i class="fas fa-chevron-down"></i>
                                </button>
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
                        <a href="#"><i class="icon-shuffle"></i> Thêm vào danh sách so sánh</a>
                    </div>
                    <div class="pro-social-links mt-30">
                        <ul class="d-flex align-items-center">
                            <li class="share">Share</li>
                            <li>
                                <a href="#"><i class="ion-social-facebook"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="ion-social-twitter"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="ion-social-google"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="ion-social-pinterest"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="block-reassurance">
                    <ul>
                        <li>
                            <img src="<c:url value='/template/web/assets/img/icon/10.png'/>" alt="img">
                            Chính sách bảo mật
                        </li>
                        <li>
                            <img src="<c:url value='/template/web/assets/img/icon/10.png'/>" alt="img">
                            Chính sách bảo hành
                        </li>
                        <li>
                            <img src="<c:url value='/template/web/assets/img/icon/10.png'/>" alt="img">
                            Chính sách giao hàng
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
  </div>
</section>
<!-- product-single end -->
<!-- product tab start -->
<div class="product-tab theme1 bg-white pt-70 pb-70">
    <div class="container">
        <div class="product-tab-nav">
            <div class="row align-items-center">
                <div class="col-12">
                    <nav class="product-tab-menu single-product">
                        <ul class="nav nav-pills justify-content-center" id="pills-tab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true"><h3>Mô tả</h3></a>
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
                        <div class="single-product-desc">
                            <ul>
                                <li>
                                    ${model.detail}
                                </li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
</form>
<%--</c:forEach>--%>

<!-- product tab end -->
<!-- new arrival section start -->

<section class="theme1 bg-white pb-70">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="section-title text-center mb-30">
          <h2 class="title text-dark text-capitalize">Có thể bạn thích</h2>
          <p class="text mt-10">Thêm các sản phẩm liên quan vào danh sách hàng tuần</p>
        </div>
      </div>
      <div class="col-12">
        <div class="product-slider-init slick-nav">
            <c:forEach var="item4" items="${products}">
          <div class="slider-item">
              <div class="card product-card">
                  <div class="card-body p-0">
                      <div class="media flex-column">
                          <div class="product-thumbnail w-100 position-relative">
                              <span class="badge badge-danger top-left">Mới</span>
                              <a class="d-block" href="<c:url value='/chi-tiet-san-pham/${item4.id}'/>">
                              </a>

                                      <c:set var="image" value="/repository/${item4.image}"/>
                                      <img class="first-img"
                                           src="${image}"
                                           alt="thumbnail" height="300px" width="300px">


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
            </c:forEach>
          <!-- slider-item end -->
      </div>
      </div>
    </div>
  </div>
</section>

<!-- new arrival section end -->
<!-- new arrival section start -->
<section class="theme1 bg-white pb-70">
  <div class="container">
  </div>
</section>

</body>
</html>