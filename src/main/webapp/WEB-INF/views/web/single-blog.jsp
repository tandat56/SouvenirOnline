<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiết bài viết</title>
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

                        <c:set var="image" value="/repository/${model.thumbnail}"/>
                        <img class="first-img" src="${image}" alt="thumbnail" height="600px" width="600px">
                    </a>
                    <div class="blog-post-content pt-30">
                      <h3 class="title mb-15">
                        <a href="single-blog.html">${model.title}</a>
                      </h3>
                      <h5 class="sub-title font-style-normal">
                        Posted by
                        <a class="blog-link" href="../../user/hastech.html"> ${model.createdBy}</a>
                        <span class="separator">/</span>  ${model.createdDate}
                        <span class="separator">/</span>

                      </h5>
                      <p class="text">
                          ${model.content}
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
                        lalalala
                      </p>
                    </div>
                    <div class="comment-list">
                      <h3 class="title">All comments</h3>
                      <img class="avatar" src="<c:url value='/template/web/assets/img/blog-post/avatar.jpg'/>" alt="avatar">
                      <h4 class="sub-title">avatar</h4>
                      <span>14 oct, 2020 </span>
                      <button class="reply">Reply</button>
                      <p>
                        lalalala
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