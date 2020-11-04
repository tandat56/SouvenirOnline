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
                    <h2 class="title mb-20">Chào mừng đến với Zonan</h2>
                    <p class="mb-20">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore aperiam fugit consequuntur
                        voluptatibus ex sint iure in, distinctio sed dolorem aspernatur veritatis repellendus dolorum
                        voluptate, animi libero officiis eveniet accusamus recusandae. Temporibus
                        amet ducimus sapiente voluptatibus autem dolorem magnam quas, officiis eveniet accusamus animi
                        libero officiis eveniet accusamus recusandae. Temporibus
                    </p>
                    <p>
                        Sint voluptatum beatae necessitatibus quos mollitia vero, optio asperiores aut tempora iusto eum
                        rerum, possimus, minus quidem ut saepe laboriosam. Praesentium aperiam accusantium minus
                        repellendus accusamus neque iusto pariatur laudantium provident quod
                    </p>
                </div>
            </div>
            <div class="col-lg-6 mb-30">
                <div class="about-left-image mb-30">
                    <img src="<c:url value='/template/web/assets/img/blog-post/5.jpg'/>" alt="img" class="img-responsive">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 mb-30">
                <div class="about-info">
                    <h4 class="title mb-20">Công ty chúng tôi</h4>
                    <p>
                        Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dolor sit amet conse ctetur
                        adipisicing elit.
                    </p>
                </div>
            </div>
            <div class="col-md-4 mb-30">
                <div class="about-info">
                    <h4 class="title mb-20">Đội ngũ chúng tôi</h4>
                    <p>
                        Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dolor sit amet conse ctetur
                        adipisicing elit.
                    </p>
                </div>
            </div>
            <div class="col-md-4 mb-30">
                <div class="about-info">
                    <h4 class="title mb-20">Lời chứng thực</h4>
                    <p>
                        Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dolor sit amet conse ctetur
                        adipisicing elit.
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>