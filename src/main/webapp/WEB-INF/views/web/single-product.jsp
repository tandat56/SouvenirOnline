<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiết sản phẩm</title>
</head>
<body>
<c:forEach var="item3" items="${model}">
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
           ${item3.productName}
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
                    <c:set var="image" value="/repository/${item3.image}"/>
                    <img class="first-img"
                         src="${image}"
                         alt="thumbnail" height="575px" width="500px">
                </div>
            </div>
        </div>
<%--        <div class="product-sync-nav slick-nav-sync">
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
        </div>--%>
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
                            <del class="del">${item3.price}</del> <span class="onsale"><fmt:formatNumber type="number" groupingUsed="true" value="${item3.price * (1 - item3.discount / 100 )}"/>₫</span>
                        </h6>
                        <span class="badge my-badge position-static bg-dark">Save ${item3.discount}%</span>
                    </div>
                    <p class="font-size">
                    ${item3.title}
                    </p>
<%--                    <ul class="font-size">
                        <li>Part of the Kaval Collection.</li>
                        <li>
                            Regular fit is eased, but not sloppy, and perfect for any
                            activity.
                        </li>
                        <li>
                            Plain-woven jacket specifically constructed for freedom of
                            movement.
                        </li>
                    </ul>--%>
                </div>
                <div class="product-footer">
                    <div class="product-count style d-flex flex-column flex-sm-row mt-30 mb-30">
                        <div class="count d-flex">
                            <input type="number" min="1" max="10" step="1" value="1">
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
                 <%--           <li class="nav-item">
                                <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">Nhận xét</a>
                            </li>--%>
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
                                    ${item3.detail}
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- second tab-pane -->
                        <%--          <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                                    <div class="single-product-desc">
                                      <div class="studio-thumb">
                                        <a href="#"><img class="mb-30" src="<c:url value='/template/web/assets/img/stodio.jpg'/>" alt="studio-thumb"></a>
                                        <h6 class="mb-2">Tài liệu tham khảo <small>Ví dụ</small></h6>
                                        <h6>Kho <small>300 sản phẩm</small></h6>
                                        <h3>Bảng dữ liệu</h3>
                                      </div>
                                      <div class="product-features">
                                        <ul>
                                          <li><span>Compositions</span></li>
                                          <li><span>Cotton</span></li>
                                          <li><span>Paper Type</span></li>
                                          <li><span>Doted</span></li>
                                          <li><span>Color</span></li>
                                          <li><span>Black</span></li>
                                          <li><span>Size</span></li>
                                          <li><span>L</span></li>
                                          <li><span>Frame Size</span></li>
                                          <li><span>40x60cm</span></li>
                                        </ul>
                                      </div>
                                    </div>
                                  </div>--%>
                    <!-- third tab-pane -->
<%--                    <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
                        <div class="single-product-desc">
                            <div class="grade-content">
                                <span class="grade">Grade </span>
                                <span class="star-on"><i class="ion-ios-star"></i> </span>
                                <span class="star-on"><i class="ion-ios-star"></i> </span>
                                <span class="star-on"><i class="ion-ios-star"></i> </span>
                                <span class="star-on"><i class="ion-ios-star"></i> </span>
                                <span class="star-on"><i class="ion-ios-star"></i> </span>
                                <h6 class="sub-title">Hastheme</h6>
                                <p>14/10/2020</p>
                                <h4 class="title">demo</h4>
                                <p>ok !</p>
                                <a href="#" class="btn theme-btn--dark3 theme-btn--dark3-sm btn--sm rounded-5 mt-15" data-toggle="modal" data-target="#exampleModalCenter">Write your review !</a>
                            </div>
                        </div>
                    </div>--%>
                </div>
            </div>
        </div>
    </div>
</div>

</c:forEach>

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
                              <a class="d-block" href="<c:url value='/chi-tiet-san-pham?id=${item4.id}'/>">
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