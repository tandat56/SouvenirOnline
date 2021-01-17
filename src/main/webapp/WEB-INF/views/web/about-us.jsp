<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thông tin</title>
</head>
<body>
<nav class="breadcrumb-section theme1 breadcrumb-bg1">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="breadcrumb-title text-center my-20">
          <h2 class="title text-dark text-capitalize">Về chúng tôi</h2>
        </div>
      </div>
      <div class="col-12">
        <ol class="breadcrumb bg-transparent m-0 p-0 align-items-center justify-content-center">
          <li class="breadcrumb-item"><a href="<c:url value='/trang-chu'/>">Trang chủ</a></li>
          <li class="breadcrumb-item active" aria-current="page">
            about us
          </li>
        </ol>
      </div>
    </div>
  </div>
</nav>
<!-- breadcrumb-section end -->

<!-- product tab start -->
<section class="about-section pb-40">
    <div class="container grid-wraper">
        <div class="row">
            <div class="col-lg-6 mb-30">
                <div class="about-content">
                    <h2 class="title mb-20">Chào mừng đến với Souvenir Online</h2>
                    <p class="mb-20">
                        Các sản phẩm luôn được kiểm soát chất lượng gắt gao. 
                        Chế độ đổi mới sản phẩm lỗi hay hoàn tiền dễ dàng trong vòng 3 ngày sau bán hàng nếu sản phẩm lỗi sản xuất. 
                        Bảo hành đường may, khóa kéo của sản phẩm 12 tháng sau khi bán. 
                        Bảo hành sản phẩm điện tử, phụ kiện công nghệ tùy loại tối thiểu từ 1->24 tháng sau khi bán.
                    </p>
                    <p>
                        Website tích hợp cổng vận chuyển với các hãng VNPost, Viettel, GHN, GHTK, Ecotrans, J&T ...
                        Nhanh chóng giao đi khắp mọi miền Việt Nam với phí vận chuyển cực thấp cùng nhiều chương trình miễn phí vận chuyển.
                    </p>
                </div>
            </div>
            <div class="col-lg-6 mb-30">
                <div class="about-left-image mb-30">
                    <img src="<c:url value='/template/web/assets/img/blog-post/about.jpg'/>" alt="img" width="665" height="355" class="img-responsive">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 mb-30">
                <div class="about-info">
                    <h4 class="title mb-20">Đặt hàng trực tuyến</h4>
                    <p>
                        Đặt hàng trực tuyến dễ dàng, thanh toán tiện lợi bằng thẻ ATM/ Visa/ Master trong nước... hoặc COD - Thanh toán khi nhận hàng
                    </p>
                </div>
            </div>
            <div class="col-md-4 mb-30">
                <div class="about-info">
                    <h4 class="title mb-20">Sản phẩm được cập nhật liên tục</h4>
                    <p>
                        Sản phẩm độc đáo trên thế giới, hầu như không thể có ở cửa hàng nào khác trong Việt Nam
                    </p>
                </div>
            </div>
            <div class="col-md-4 mb-30">
                <div class="about-info">
                    <h4 class="title mb-20">Lời cảm ơn</h4>
                    <p>
                        Xin chân thành cảm ơn bạn đã tin tưởng và mua sắm tại shop chúng tôi! 
                        Chúc bạn mua sắm vui vẻ.
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>