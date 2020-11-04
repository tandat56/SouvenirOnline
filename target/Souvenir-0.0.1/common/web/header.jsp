<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="offcanvas-overlay"></div>
<!-- offcanvas-overlay end -->

<!-- offcanvas-mobile-menu start -->
<div id="offcanvas-mobile-menu" class="offcanvas theme1 offcanvas-mobile-menu">
    <div class="inner">
        <div class="border-bottom mb-4 pb-4 text-right">
            <button class="offcanvas-close">×</button>
        </div>
        <div class="offcanvas-head mb-4">
            <nav class="offcanvas-top-nav">
                <ul class="d-flex justify-content-center align-items-center">
                    <li class="mx-3"><a href="<c:url  value='/page-compare'/>"><i class="ion-ios-loop-strong"></i> Compare <span>(0)</span>
                        </a></li>
                    <li class="mx-3">
                        <a href="<c:url value='/page-wishtlist'/>"> <i class="ion-android-favorite-outline"></i> Wishlist
                            <span>(0)</span></a>
                    </li>
                </ul>
            </nav>
        </div>
        <nav class="offcanvas-menu">
            <ul>
                <li><a href="#"><span class="menu-text">Trang chủ</span></a>
                    <ul class="offcanvas-submenu">
                        <li><a href="<c:url value='trang-chu'/>">Trang chủ</a></li>
                        <li><a href="<c:url value='trang-chu'/>">Trang chủ</a></li>
                        <li><a href="<c:url value='trang-chu'/>">Trang chủ</a></li>
                        
                    </ul>

                </li>
                <li><a href="#"><span class="menu-text">Cửa hàng</span></a>
                    <ul class="offcanvas-submenu">
                        <li>
                            <a href="#"><span class="menu-text">Shop Grid</span></a>
                            <ul class="offcanvas-submenu">
                                <li><a href="<c:url value='/page-bloggrid3'/>">Shop Grid 3 Column</a></li>
                               <li><a href="<c:url value='/page-shopgrid4'/>">Shop Grid 4 Column</a></li>
                               
                            </ul>
                        </li>
                        <li>
                            <a href="#"><span class="menu-text">Shop List</span></a>
                            <ul class="offcanvas-submenu">
                              <li><a href="<c:url value='/page-bloggrid3'/>">Shop Grid 3 Column</a></li>
                                
                            </ul>
                        </li>
                        <li>
                            <a href="#"><span class="menu-text">Shop Single</span></a>
                            <ul class="offcanvas-submenu">
                                <li><a class="d-block" href="<c:url value='/page-singleP'/>">Shop Single</a></li>
                                <li><a href="<c:url value='/page-singleP'/>">Shop Variable</a></li>
                                <li><a href="<c:url value='/page-singlePA'/>">Shop Affiliate</a></li>
                                <li><a href="<c:url value='/page-singleP'/>">Shop Group</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><span class="menu-text">other pages</span></a>
                            <ul class="offcanvas-submenu">
                                <li><a href="<c:url  value='/page-about'/>">About Page</a></li>
                                <li><a href="<c:url  value='/page-cart'/>">Cart Page</a></li>
                                <li><a href="<c:url  value='/page-checkout'/>">Checkout Page</a></li>
                                <li><a href="<c:url  value='/page-compare'/>">Compare Page</a></li>
                                <li><a href="<c:url  value='/page-login'/>">Login &amp; Register Page</a></li>
                                <li><a href="<c:url  value='/page-myaccount'/>">Account Page</a></li>
                                <li><a href="<c:url  value='/page-wishtlist'/>">Wishlist Page</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li><a href="#"><span class="menu-text">Pages</span></a>
                    <ul class="offcanvas-submenu">
                        <li><a href="<c:url  value='/page-about'/>">About Page</a></li>
                        <li><a href="<c:url  value='/page-cart'/>">Cart Page</a></li>
                        <li><a href="<c:url  value='/page-checkout'/>">Checkout Page</a></li>
                        <li><a href="<c:url  value='/page-compare'/>">Compare Page</a></li>
                        <li><a href="<c:url  value='/page-login'/>">Login &amp; Register Page</a></li>
                        <li><a href="<c:url  value='/page-myaccount'/>">Account Page</a></li>
                        <li><a href="<c:url  value='/page-wishtlist'/>">Wishlist Page</a></li>
                    </ul>
                </li>
                <li><a href="#"><span class="menu-text">Blog</span></a>
                    <ul class="offcanvas-submenu">
                        <li><a href="#"><span class="menu-text">Blog Grid</span></a>
                            <ul class="offcanvas-submenu">
                                <li><a href="<c:url  value='/page-bloggrid3'/>">Blog Grid 3 column</a></li>
                                <li><a href="<c:url value='/page-shopgrid4'/>">Blog Grid 4 column</a></li>
                                <li><a href="">Blog Grid Left Sidebar</a>
                                </li>
                                <li><a href="">Blog Grid Right Sidebar</a></li>
                            </ul>
                        </li>
                        <li><a href="#"><span class="menu-text">Blog List</span></a>
                            <ul class="offcanvas-submenu">
                                <li><a href="">Blog List Left Sidebar</a></li>
                                <li><a href="">Blog List Right Sidebar</a></li>
                            </ul>
                        </li>
                        <li><a href="#"><span class="menu-text">Blog Single</span></a>
                            <ul class="offcanvas-submenu">
                                <li><a href="<c:url value='/page-singleblog'/>single-blog.html">Single Blog</a></li>
                                <li><a href="">Blog Single Left Sidebar</a></li>
                                <li><a href="">Blog Single Right Sidbar</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li><a href="<c:url value='/page-contact'/>">Contact Us</a></li>
            </ul>
        </nav>
        <div class="offcanvas-social py-30">
            <ul>
                <li>
                    <a href="#"><i class="icon-social-facebook"></i></a>
                </li>
                <li>
                    <a href="#"><i class="icon-social-twitter"></i></a>
                </li>
                <li>
                    <a href="#"><i class="icon-social-instagram"></i></a>
                </li>
                <li>
                    <a href="#"><i class="icon-social-google"></i></a>
                </li>
                <li>
                    <a href="#"><i class="icon-social-instagram"></i></a>
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- offcanvas-mobile-menu end -->

<!-- OffCanvas Wishlist Start -->
<div id="offcanvas-wishlist" class="offcanvas offcanvas-wishlist theme1">
    <div class="inner">
        <div class="head d-flex flex-wrap justify-content-between">
            <span class="title">Wishlist</span>
            <button class="offcanvas-close">×</button>
        </div>
        <ul class="minicart-product-list">
            <li>
                <a href="<c:url value='/page-singleP'/>" class="image"><img src="<c:url value='/template/web/assets/img/product/4.jpg'/>" alt="Cart product Image"></a>
                <div class="content">
                    <a href="<c:url value='/page-singleP'/>" class="title">Walnut Cutting Board</a>
                    <span class="quantity-price">1 x <span class="amount">$100.00</span></span>
                    <a href="#" class="remove">×</a>
                </div>
            </li>
            <li>
                <a href="<c:url value='/page-singleP'/>" class="image"><img src="<c:url value='/template/web/assets/img/product/4.jpg'/>" alt="Cart product Image"></a>
                <div class="content">
                    <a href="<c:url value='/page-singleP'/>" class="title">Lucky Wooden Elephant</a>
                    <span class="quantity-price">1 x <span class="amount">$35.00</span></span>
                    <a href="#" class="remove">×</a>
                </div>
            </li>
            <li>
                <a href="<c:url value='/page-singleP'/>" class="image"><img src="<c:url value='/template/web/assets/img/product/4.jpg'/>" alt="Cart product Image"></a>
                <div class="content">
                    <a href="<c:url value='/page-singleP'/>" class="title">Fish Cut Out Set</a>
                    <span class="quantity-price">1 x <span class="amount">$9.00</span></span>
                    <a href="#" class="remove">×</a>
                </div>
            </li>
        </ul>
        <a href="<c:url  value='/page-wishtlist'/>" class="btn theme--btn1 btn--lg text-uppercase  d-block d-sm-inline-block mt-30">view
            wishlist</a>
    </div>
</div>
<!-- OffCanvas Wishlist End -->

<!-- OffCanvas Cart Start -->
<div id="offcanvas-cart" class="offcanvas offcanvas-cart theme1">
    <div class="inner">
        <div class="head d-flex flex-wrap justify-content-between">
            <span class="title">Cart</span>
            <button class="offcanvas-close">×</button>
        </div>
        <ul class="minicart-product-list">
            <li>
                <a href="<c:url value='/page-singleP'/>" class="image"><img src="<c:url value='/template/web/assets/img/product/4.jpg'/>" alt="Cart product Image"></a>
                <div class="content">
                    <a href="<c:url value='/page-singleP'/>" class="title">Walnut Cutting Board</a>
                    <span class="quantity-price">1 x <span class="amount">$100.00</span></span>
                    <a href="#" class="remove">×</a>
                </div>
            </li>
            <li>
                <a href="<c:url value='/page-singleP'/>" class="image"><img src="<c:url value='/template/web/assets/img/product/4.jpg'/>" alt="Cart product Image"></a>
                <div class="content">
                    <a href="<c:url value='/page-singleP'/>" class="title">Lucky Wooden Elephant</a>
                    <span class="quantity-price">1 x <span class="amount">$35.00</span></span>
                    <a href="#" class="remove">×</a>
                </div>
            </li>
            <li>
                <a href="<c:url value='/page-singleP'/>" class="image"><img src="<c:url value='/template/web/assets/img/product/4.jpg'/>" alt="Cart product Image"></a>
                <div class="content">
                    <a href="<c:url value='/page-singleP'/>" class="title">Fish Cut Out Set</a>
                    <span class="quantity-price">1 x <span class="amount">$9.00</span></span>
                    <a href="#" class="remove">×</a>
                </div>
            </li>
        </ul>
        <div class="sub-total d-flex flex-wrap justify-content-between">
            <strong>Subtotal :</strong>
            <span class="amount">$144.00</span>
        </div>
        <a href="<c:url  value='/page-cart'/>" class="btn theme--btn1 btn--lg text-uppercase  d-block d-sm-inline-block mr-sm-2">view
            cart</a>
        <a href="<c:url  value='/page-checkout'/>" class="btn theme--btn1 btn--lg text-uppercase  d-block d-sm-inline-block mt-4 mt-sm-0">checkout</a>
        <p class="minicart-message">Free Shipping on All Orders Over $100!</p>
    </div>
</div>
<!-- OffCanvas Cart End -->

<!-- offcanvas-setting Start -->
<div id="offcanvas-setting" class="offcanvas offcanvas-cart theme1">
    <div class="inner">
        <div class="head d-flex justify-content-between">
            <span class="title">Setting</span>
            <button class="offcanvas-close">×</button>
        </div>
        <div class="content_setting">
            <div class="info_setting">
                <h3 class="title_setting">My account</h3>
                <ul>
                    <li>
                        <a href="<c:url  value='/page-myaccount'/>">My account</a>
                    </li>
                    <li>
                        <a href="<c:url  value='/page-checkout'/>">Checkout</a>
                    </li>
                    <li>
                        <a href="<c:url  value='/page-login'/>">Sign in</a>
                    </li>

                </ul>
            </div>

            <div class="info_setting">
                <h3 class="title_setting">Language</h3>
                <ul>
                    <li class="active">
                        <a href="#">
                            <img src="<c:url value='/template/web/assets/img/logo/france.jpg'/>" alt="img">
                            English
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="<c:url value='/template/web/assets/img/logo/us-flag.jpg'/>" alt="img">Français
                        </a>
                    </li>
                </ul>
            </div>
            <div class="info_setting">
                <div class="title_setting">Currency :</div>
                <ul>
                    <li><a href="#">EUR €</a></li>
                    <li class="active"><a href="#">USD $</a></li>
                </ul>
            </div>

        </div>
    </div>
</div>
<header id="sticky" class="header style1 theme1">
    <!-- header-middle satrt -->
    <div class="header-middle">
        <div class="container">
            <div class="row align-items-center position-relative">
                <div class="col-6 col-lg-2 col-xl-3 order-first">
                    <div class="logo">
                        <a href="<c:url value='/trang-chu'/>"><img src="<c:url value='/template/web/assets/img/logo/logo2.png'/>" alt="logo"></a>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-7 col-xl-6 d-none d-lg-block">
                    <nav class="header-bottom theme1">
                        <ul class="main-menu d-flex align-items-center">
                            <li class="active">
                                <a href="<c:url value='/trang-chu'/>" class="pl-0">Trang chủ</a>
                            </li>
                            <li class="position-static">
                                <a href="#">Cửa hàng <i class="ion-ios-arrow-down"></i></a>
                                <ul class="mega-menu row">
                                    <li class="col-3">
                                        <ul class="border-right h-100 pr-20">
                                            <li class="mega-menu-title"><a href="#">Áo</a></li>
                                            <li><a href="#">Áo thun lưu niệm</a></li>
                                            <li><a href="#">Áo dài lưu niệm</a></li>
                                            <li><a href="#">Áo thun lưu niệm</a></li>
                                            <li><a href="#">Áo dài lưu niệm</a></li>
                                            <li><a href="#">Áo thun lưu niệm</a></li>
                                            
                                        </ul>
                                    </li>
                                    <li class="col-3">
                                        <ul class="border-right h-100 pr-20">
                                            <li class="mega-menu-title"><a href="#">Quà lưu niệm</a></li>
                                            <li><a href="#">Quà trưng bày</a></li>
                                            <li><a href="#">Quà trưng bày</a></li>
                                            <li><a href="#">Quà trưng bày</a></li>
                                            <li><a href="#">Quà trưng bày</a></li>
                                            <li><a href="#">Quà trưng bày</a></li>

                                        </ul>
                                    </li>
                                    <li class="col-3">
                                        <ul class="border-right h-100 pr-20">
                                            <li class="mega-menu-title"><a href="#">Đồ dùng cá nhân</a></li>
                                            <li><a href="#">đồ đùng cá nhân</a></li>
                                            <li><a href="#">đồ đùng cá nhân</a></li>
                                            <li><a href="#">đồ đùng cá nhân</a></li>
                                            <li><a href="#">đồ đùng cá nhân</a></li>
                                            <li><a href="#">đồ đùng cá nhân</a></li>

                                        </ul>
                                    </li>
                                    <li class="col-3">
                                        <ul>
                                            <li class="mega-menu-title"><a href="#">Đồ linh tinh</a></li>
                                            <li><a href="#">quà linh tinh</a></li>
                                            <li><a href="#">quà linh tinh</a></li>
                                            <li><a href="#">quà linh tinh</a></li>
                                            <li><a href="#">quà linh tinh</a></li>
                                            <li><a href="#">quà linh tinh</a></li>

                                        </ul>
                                    </li>
                                    <li class="col-12 mt-4">
                                        <a href="<c:url value='/page-singleP'/>" class="zoom-in overflow-hidden d-block">                                          
                                             <img class="w-100" src="<c:url value='/template/web/assets/img/mega-menu/1.jpg'/>" alt="img">    
                                                                            
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Trang khác <i class="ion-ios-arrow-down"></i></a>
                                <ul class="sub-menu">
                                    <li><a href="<c:url value='/page-about'/>">Thông tin về chúng tôi</a></li>
                                    <li><a href="<c:url value='/page-cart'/>">Giỏ hàng</a></li>
                                    <li><a href="<c:url value='/page-checkout'/>">Checkout</a></li>
                                    <li><a href="<c:url value='/page-compare'/>">So sánh</a></li>
                                    <li><a href="<c:url value='/page-login'/>">Đăng nhập &amp; Đăng ký</a></li>
                                    <li><a href="<c:url value='/page-myaccount'/>">Tài khoản</a></li>
                                    <li><a href="<c:url value='/page-wishtlist'/>">Danh sách yêu thích</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="<c:url  value='/page-bloggrid3'/>">Tin Tức</a>
                               
                            </li>
                            <li><a href="<c:url value='/page-contact'/>">Liên hệ</a></li>
                            
                        </ul>
                    </nav>
                </div>
                <div class="col-6 col-lg-3 col-xl-3">
                    <!-- search-form end -->
                    <div class="d-flex align-items-center justify-content-end">
                        <div class="cart-block-links theme1">
                            <ul class="d-flex align-items-center">
                                <li>
                                    <a href="javascript:void(0)" class="search search-toggle">
                                        <i class="ion-ios-search-strong"></i>
                                    </a>
                                </li>
                                <li class="position-relative d-none d-sm-block">
                                    <a href="<c:url  value='/page-compare'/>">
                                        <i class="ion-ios-shuffle-strong"></i>
                                        <span class="badge cbdg1">3</span>
                                    </a>
                                </li>
                                <li class="position-relative d-none d-sm-block">
                                    <a class="offcanvas-toggle" href="#offcanvas-wishlist">
                                        <i class="ion-android-favorite-outline"></i>
                                        <span class="badge cbdg1">4</span>
                                    </a>
                                </li>
                                <li class="cart-block position-relative d-none d-sm-block">
                                    <a class="offcanvas-toggle" href="#offcanvas-cart">
                                        <i class="ion-bag"></i>
                                        <span class="badge cbdg1">5</span>
                                    </a>
                                </li>
                                <li class="mr-0 cart-block">
                                    <a class="offcanvas-toggle" href="#offcanvas-setting">
                                        <i class="ion-android-settings"></i>
                                    </a>
                                </li>
                                <!-- cart block end -->
                            </ul>
                        </div>
                        <div class="mobile-menu-toggle theme1 d-lg-none">
                            <a href="#offcanvas-mobile-menu" class="offcanvas-toggle">
                                <svg viewbox="0 0 800 600">
                                    <path d="M300,220 C300,220 520,220 540,220 C740,220 640,540 520,420 C440,340 300,200 300,200" id="top"></path>
                                    <path d="M300,320 L540,320" id="middle"></path>
                                    <path d="M300,210 C300,210 520,210 540,210 C740,210 640,530 520,410 C440,330 300,190 300,190" id="bottom" transform="translate(480, 320) scale(1, -1) translate(-480, -318)">
                                    </path>
                                </svg>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- header-middle end -->
</header>