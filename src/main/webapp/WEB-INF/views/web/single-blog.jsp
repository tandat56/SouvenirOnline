<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<nav class="breadcrumb-section theme1 breadcrumb-bg1">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="breadcrumb-title text-center my-20">
          <h2 class="title text-dark text-capitalize">Blog đơn</h2>
        </div>
      </div>
      <div class="col-12">
        <ol class="breadcrumb bg-transparent m-0 p-0 align-items-center justify-content-center">
          <li class="breadcrumb-item"><a href="<c:url value='/trang-chu'/>">Trang chủ</a></li>
          <li class="breadcrumb-item active" aria-current="page">
           Blog đơn
          </li>
        </ol>
      </div>
    </div>
  </div>
</nav>
<!-- breadcrumb-section end -->

<!-- product tab start -->
<section class="blog-section pb-70">
  <div class="container">
    <div class="row">
      <div class="col-xl-10 mx-auto">
        <div class="grid-wraper">
            <div class="row">
                <div class="col-12">
                  <div class="blog-title">
                    <h2 class="title">Từ Blog của chúng tôi</h2>
                    <p class="text">Tin tức, video và chủ đề thảo luận mới nhất</p>
                  </div>
                </div>
                <div class="col-12">
                  <div class="single-blog text-left">
                    <a class="blog-thumb zoom-in d-block overflow-hidden" href="blog-grid-left-sidebar.html">
                      <img class="object-fit-none" src="<c:url value='/template/web/assets/img/blog-post/large-blog.jpg'/>" alt="blog-thumb-naile">
                    </a>
                    <div class="blog-post-content pt-30">
                      <h3 class="title mb-15">
                        <a href="single-blog.html">Đây là bài đăng bí mật cho XipBlog</a>
                      </h3>
                      <h5 class="sub-title font-style-normal">
                        Posted by
                        <a class="blog-link" href="../../user/hastech.html">HasTech</a>
                        <span class="separator">/</span> 14 oct, 2020
                        <span class="separator">/</span>
                        <a class="blog-link" href="../../user/hastech.html">Electronics</a>
                      </h5>
                      <p class="text">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, do
                        eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
                        enim adminim veniam, quis nostrud exercitation ullamco laboris
                        nisi ut aliquip commodo consequat. Duis aute irure dolor in rep
                        rehenderit. Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit, sed do eiumod tempor incididunt ut labore et dolore magna
                        aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                        do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, do
                        eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
                        enim adminim veniam, quis nostrud exercitation ullamco laboris
                        nisi ut aliquip commodo consequat. Duis aute irure dolor in rep
                        rehenderit. Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit, sed do eiumod tempor incididunt ut labore et dolore magna
                        aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                        do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, do
                        eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
                        enim adminim veniam, quis nostrud exercitation ullamco laboris
                        nisi ut aliquip commodo consequat. Duis aute irure dolor in rep
                        rehenderit. Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit, sed do eiumod tempor incididunt ut labore et dolore magna
                        aliqua.
                      </p>
                    </div>
                  </div>
                  <!-- comment-section start -->
                  <div class="comment-section">
                    <div class="comment-list">
                      <h3 class="title">All comments</h3>
                      <img class="avatar" src="<c:url value='/template/web/assets/img/blog-post/avatar.jpg'/>" alt="avatar">
                      
                      <h4 class="sub-title">avatar</h4>
                      <span>14 oct, 2020 </span>
                      <button class="reply">Reply</button>
                      <p>
                        Ev kullanımı için en uygun HP Orjinal Ucuz Kartuşlar artık
                        avatar.com adresinde 7/24 aktif şipariş hattımız ile her zaman
                        Orijinal Kartuş alabilir ve bayilik fırsatlarımız ile her zaman
                        %50 İndirimli alabilirsiniz. Sarf Depo olarak her zaman müşteri
                        desteğimiz en ön plandadır.Her zaman canlı destek yada whatsapp
                        hattımızdan yazmayı unutmayınız. www.avatar.com
                      </p>
                    </div>
                    <div class="comment-list">
                      <h3 class="title">All comments</h3>
                      <img class="avatar" src="<c:url value='/template/web/assets/img/blog-post/avatar.jpg'/>" alt="avatar">
                      <h4 class="sub-title">avatar</h4>
                      <span>14 oct, 2020 </span>
                      <button class="reply">Reply</button>
                      <p>
                        Ev kullanımı için en uygun HP Orjinal Ucuz Kartuşlar artık
                        avatar.com adresinde 7/24 aktif şipariş hattımız ile her zaman
                        Orijinal Kartuş alabilir ve bayilik fırsatlarımız ile her zaman
                        %50 İndirimli alabilirsiniz. Sarf Depo olarak her zaman müşteri
                        desteğimiz en ön plandadır.Her zaman canlı destek yada whatsapp
                        hattımızdan yazmayı unutmayınız. www.avatar.com
                      </p>
                    </div>
                  </div>
                  <!-- comment-section start -->
                  <!-- contact-form start -->
                  <div class="contact-form">
                    <h3 class="title">Để lại một câu trả lời</h3>
                    <form>
                      <div class="form-group">
                        <label for="name">Tên bạn</label>
                        <input type="text" class="form-control" id="name" required="">
                      </div>
                      <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" id="email" required="">
                      </div>
                      <div class="form-group">
                        <label for="url">Url trang web:</label>
                        <input type="text" class="form-control" id="url" required="">
                      </div>
                      <div class="form-group">
                        <label for="subject">Đối tượng</label>
                        <input type="text" class="form-control" id="subject" required="">
                      </div>
                      <div class="form-group">
                        <label for="comment">Bình luận</label>
                        <textarea class="form-control mb-30" id="comment" required=""></textarea>
                      </div>
                      <button type="submit" class="btn theme-btn--dark1 btn--xl">
                      Gửi
                      </button>
                    </form>
                  </div>
                  <!-- contact-form start -->
                </div>
              </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>