<%@page contentType="text/html; charset=UTF-8"%>
<html lang="en" data-darkreader-proxy-injected="true"><head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../img/pages/icon.png" type="image/png">
    <title>Pages</title>
    <!-- Bootstrap Css -->
    <link rel="stylesheet" href="../vender/bootstrap/css/bootstrap.min.css">
    <!-- Icofont Css -->
    <link rel="stylesheet" href="../vender/icofont/icofont.min.css">
    <!-- AOS Css -->
    <link rel="stylesheet" href="../vender/aos/dist/aos.css">
    <!-- Remix Icons -->
    <link rel="stylesheet" href="../vender/remixicon/remixicon.css">
    <!-- Custom Css -->
	<link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/style2.css">
   
    <!-- Common Css -->
    <link rel="stylesheet" href="../css/common.css">
</head>
<body data-aos-easing="ease" data-aos-duration="400" data-aos-delay="0">

<div class="bg-white my-account-nav position-relative shadow">
    <!-- navbar -->
    <div class="elements-nav">
                <!-- bootom nav -->
                
            </div>
</div><!-- header -->











<div class="bg-elements elements-top-header position-relative">
    <!-- navbar -->
    <div class="elements-nav">
                <!-- bootom nav -->
                <nav class="navbar navbar-expand bottom-nav bg-black borer-bottom border-opacity-10 border-white py-lg-0 py-3 bg-opacity-25">
                    <div class="container">
                        <div class="position-relative d-flex align-items-center gap-2 site-brand">
                            <img src="../img/bookbookbookLogo.png" alt="북북북 로고">
                            <div class="lh-1">
                               <h5 class="fw-bold m-0 text-white">BOOKBOOKBOOK</h5>
                               <!-- <small class="text-muted text-white-50">One Page</small> -->
                            </div>
                            <a class="stretched-link" href="/"></a>
                        </div>
                        <div class="collapse navbar-collapse">
                            <ul class="navbar-nav m-auto gap-4 m-none">
                                <li class="nav-item dropdown single-dropdown-nav">
                                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"> 나의 서재 </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="shop-product-grid.html">읽은 책</a></li>
                                        <li><a class="dropdown-item" href="shop-product-list.html">읽고 있는 책</a></li>
                                        <li><a class="dropdown-item" href="shop-product-full-three-coulmn.html">읽고 싶은 책</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="nav-link" href="#" role="button" aria-expanded="false"> 나의 캐릭터 </a>
                                </li>
                                <li class="nav-item dropdown single-dropdown-nav">
                                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"> 나의 정보 </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="shop-product-grid.html">나의 정보</a></li>
                                        <li><a class="dropdown-item" href="shop-product-list.html">나의 달력</a></li>
                                        <li><a class="dropdown-item" href="shop-product-full-three-coulmn.html">나의 메모</a></li>
                                        <li><a class="dropdown-item" href="shop-product-full-four-coulmn.html">나의 통계</a></li>
                                    </ul>
                                </li>
                            </ul>
                            <a href="./page-login.html" class="btn btn-purple rounded-pill d-none d-lg-block btn-theme"> 로그인 </a>
                            <a href="#" class="link-light d-lg-none ms-auto" data-bs-toggle="offcanvas" data-bs-target="#sidebarnav" aria-controls="sidebarnav"><i class="ri-menu-3-line ri-lg"></i></a>
                        </div>
                    </div>
                </nav>
            </div>
    <!-- header -->
    <div class="py-5">
                <div class="container py-5">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-xl-6 col-lg-5 col-md-10 col-12 text-center">
                            <div class="text-white">
                                <h1 class="fw-bolder display-5 mb-3">도서 검색 결과</h1>
                                <!-- <p class="-0 text-white-50">Last updated: January 2024</p> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    <div class="svg-border-rounded text-light">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 144.54 17.34" preserveAspectRatio="none" fill="#ffffff"><path d="M144.54,17.34H0V0H144.54ZM0,0S32.36,17.34,72.27,17.34,144.54,0,144.54,0"></path></svg>
            </div>
</div>





<div class="py-5 bg-light">
    <div class="container py-5">
        <div class="row justify-content-center g-5">

            <!-- End Col -->
            <div class="col-lg-7">
                <div class="bg-white rounded-4 shadow p-4">
                    <div class="p-4">
                        <h5 class="fw-bold mb-4 text-center">위치찾기</h5>



                        <div class="row g-5">
                            <div class="form-control"> 카카오 지도 자리<p></p></div>
                        </div>
                        <div class="row g-5">

                            <select class="form-select d-inline-block  border pt-1" style="width: 40%">
                                <option value="0">시</option>
                                <option value="1">Recommended</option>
                                <option value="2">High rated</option>
                                <option value="3">Randomly</option>
                            </select>
                            <select class="form-select d-inline-block  border pt-1" style="width: 40%">
                                <option value="0">구</option>
                                <option value="1">Recommended</option>
                                <option value="2">High rated</option>
                                <option value="3">Randomly</option>
                            </select>

                            <button class="btn btn-primary fw-semibold rounded-pill py-3 px-5" style="width: 20%" type="button" id="app">검색</button>
                        </div>
                        <div class="row"><br>
                            크롤링 결과 넣기~<br><br>
                            (예:<br>
                            nn도서관<br>              대여가능(밑줄)<br>
                            주소: 서울특별시 마포구 백범로 23<br>
                            TEL 02-793-7235)
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Col -->
        </div>
        <!-- End Row -->
    </div>
</div>
<!-- End Features -->
<!-- footer -->



<!-- Nav Sidebar -->
<div class="offcanvas offcanvas-top bg-purple text-white border-0 h-100" tabindex="-1" id="sidebarnav" aria-labelledby="sidebarnavLabel">
    <div class="offcanvas-header d-flex justify-content-end">
        <a href="#" class="link-light" data-bs-dismiss="offcanvas" aria-label="Close"><i class="ri-close-line ri-lg"></i></a>
    </div>
    <div class="offcanvas-body">
        <div class="sidebar-nav text-center">
            <div class="position-relative d-flex align-items-center gap-2 site-brand">
                <i class="ri-slideshow-line fs-2 lh-1 text-white"></i>
                <div class="lh-1">
                    <h5 class="fw-bold m-0 text-white">Software</h5>
                    <small class="text-muted text-white-50">One Page</small>
                </div>
                <a class="stretched-link" href="../index.html"></a>
            </div>
            <ul class="navbar-nav justify-content-end flex-grow-1 mt-4">
                <li class="nav-item">
                    <a class="nav-link active" href="../index.html"><i class="ri-apps-2-line"></i> Home</a>
                </li>

                <li class="nav-item dropdown osahan-mega-menu position-static">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"> Elements </a>
                    <ul class="dropdown-menu w-100 m-0 border-opacity-10 border-dark border-top border-bottom p-0 start-0 end-0 rounded-0 shadow">
                        <li>
                            <div class="dropdown-mega-content container">
                                <div class="row g-0">
                                    <div class="col-lg-3 p-5 border-end border-start border-opacity-10 border-dark">
                                        <h6 class="dropdown-mega-sub-title mb-3 fw-bold">Elements 1</h6>
                                        <ul class="dropdown-mega-sub-nav list-unstyled">
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-accordions-toggles.html">Accordions &amp; Toggles</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-tabs.html">Tabs</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-icons.html">Icons</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-pagination.html">Pagination</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-cards.html">Cards</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-carousels.html">Carousels</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-modals.html">Modals</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-placeholders.html">Placeholders</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-medias.html">Medias</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-maps.html">Maps</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-forms-basic.html">Forms</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-3 p-5 border-end border-opacity-10 border-dark">
                                        <h6 class="dropdown-mega-sub-title mb-3 fw-bold">Elements 2</h6>
                                        <ul class="dropdown-mega-sub-nav list-unstyled">
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-buttons.html">Buttons</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-badges.html">Badges</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-lists.html">Lists</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-offcanvas.html">Offcanvas</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-image-frames.html">Image Frames</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-testimonials.html">Testimonials</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-blockquotes.html">Blockquotes</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-borders.html">Borders</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-process.html">Process</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-countdowns.html">Countdowns</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-spinners.html">Spinners</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-3 p-5 border-end border-opacity-10 border-dark">
                                        <h6 class="dropdown-mega-sub-title mb-3 fw-bold">Elements 3</h6>
                                        <ul class="dropdown-mega-sub-nav list-unstyled">
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-call-to-action.html">Call to Action</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-pricing-tables.html">Pricing Tables</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-tables.html">Tables</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-progress-bars.html">Progress Bars</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-colors.html">Colors</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-dropdowns.html">Dropdowns</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-tooltips-popovers.html">Tooltips &amp; Popovers</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-sticky-elements.html">Sticky Elements</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-typography.html">Typography</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="../elements/elements-alerts.html">Alerts</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-3 dropdown-mega-sub-content-block d-none d-lg-block bg-light p-5 osahan-dropdown-box border-end border-opacity-10 border-dark">
                                        <div class="position-relative d-flex align-items-center gap-2 site-brand">
                                            <i class="ri-slideshow-line fs-2 lh-1 text-black"></i>
                                            <div class="lh-1">
                                                <h5 class="fw-bold m-0 text-black">Software</h5>
                                                <small class="text-muted text-muted">One Page</small>
                                            </div>
                                            <a class="stretched-link" href="../index.html"></a>
                                        </div>
                                        <h5 class="text-dark mt-5 mb-2"> Multi-Purpose</h5>
                                        <h1 class="text-primary fw-bold">And Powerful Bootstrap based </h1>
                                        <p class="lead mb-5">
                                            Template with 180+ Valid Multi-Page &amp; One-Page Layouts

                                        </p>
                                        <a class="btn btn-primary px-5 py-3" href="#">GET STARTED</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="nav-item dropdown single-dropdown-nav">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"> Shop </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="shop-product-grid.html">Product Grid</a></li>
                        <li><a class="dropdown-item" href="shop-product-list.html">Product List</a></li>
                        <li><a class="dropdown-item" href="shop-product-full-three-coulmn.html">Product Three Coulmns</a></li>
                        <li><a class="dropdown-item" href="shop-product-full-four-coulmn.html">Product Four Coulmns</a></li>
                        <li><a class="dropdown-item" href="shop-product-detail.html">Product Detail</a></li>
                        <li><a class="dropdown-item" href="shop-cart.html">Shop Cart</a></li>
                        <li><a class="dropdown-item" href="shop-checkout.html">Shop Checkout</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown osahan-mega-menu position-static">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"> Extra Pages </a>
                    <ul class="dropdown-menu w-100 m-0 border-opacity-10 border-dark border-top border-bottom p-0 start-0 end-0 rounded-0 shadow">
                        <li>
                            <div class="dropdown-mega-content container">
                                <div class="row g-0">
                                    <div class="col-lg-3 p-5 border-end border-start border-opacity-10 border-dark">
                                        <h6 class="dropdown-mega-sub-title mb-3 fw-bold">Portfolio</h6>
                                        <ul class="dropdown-mega-sub-nav list-unstyled">
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="portfolio-full-width.html">Portfolio Full Width</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="portfolio-boxed.html">Portfolio Boxed</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="portfolio-classic.html">Portfolio Classic</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="portfolio-masonry.html">Portfolio Masonry</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="single-project.html">Single Project</a></li>
                                        </ul>
                                        <h6 class="dropdown-mega-sub-title mb-3 fw-bold mt-4">Help</h6>
                                        <ul class="dropdown-mega-sub-nav list-unstyled">
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="page-help-center.html">Help Center</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="page-help-center-categories.html">Help Center: Categories</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="page-help-center-article.html">Help Center: Article</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-3 p-5 border-end border-opacity-10 border-dark">
                                        <h6 class="dropdown-mega-sub-title mb-3 fw-bold">Blog</h6>
                                        <ul class="dropdown-mega-sub-nav list-unstyled">
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="blog-grid.html">Blog Grid</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="blog-grid-classic.html">Blog Grid Classic</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="blog-grid-sidebar.html">Blog Grid Sidebar</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="blog-list.html">Blog List</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="blog-list-sidebar.html">Blog List Right Sidebar</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="blog-left-sidebar.html">Blog List Left Sidebar</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="blog-full-width.html">Blog Full Width</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="blog-post.html">Blog Post</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="blog-author-profile.html">Author Profile</a></li>
                                        </ul>
                                        <h6 class="dropdown-mega-sub-title mb-3 fw-bold mt-4">FAQ</h6>
                                        <ul class="dropdown-mega-sub-nav list-unstyled">
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="faq.html">FAQ v.1</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="faq-2.html">FAQ v.2</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-3 p-5 border-end border-opacity-10 border-dark">
                                        <h6 class="dropdown-mega-sub-title mb-3 fw-bold">Company</h6>
                                        <ul class="dropdown-mega-sub-nav list-unstyled">
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="page-hire-us.html">Hire Us</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="page-careers.html">Careers</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="page-careers-role-overview.html">Careers: Role Overview</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="page-careers-apply.html">Careers: Apply</a></li>
                                        </ul>
                                        <h6 class="dropdown-mega-sub-title mb-3 fw-bold mt-4">Additional Pages</h6>
                                        <ul class="dropdown-mega-sub-nav list-unstyled">
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="page-coming-soon.html">Coming Soon</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="page-coming-soon-simple.html">Coming Soon: Simple</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="page-error-404.html">Maintenance</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="page-error-404.html">Error 404</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="page-terms.html">Terms &amp; Conditions</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="page-privacy.html">Privacy &amp; Policy</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-3 p-5 border-end border-opacity-10 border-dark">
                                        <h6 class="dropdown-mega-sub-title mb-3 fw-bold">My Account</h6>
                                        <ul class="dropdown-mega-sub-nav list-unstyled">
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="page-login.html">Log In v.1</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="page-login-2.html">Log In v.2</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="page-signup.html">Sign Up v.1</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="page-signup-2.html">Sign Up v.2</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="page-reset-password.html">Forgot Password</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="account-orders.html">Orders</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="account-settings.html">Settings</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="account-address.html">Address</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="my-wallet.html">My Wallet</a></li>
                                            <li><a class="dropdown-item px-0 py-1 bg-transparent" href="account-notification.html">Notification</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
            <div class="d-flex align-items-center justify-content-center gap-3 my-4">
                <a href="#" class="link-light"><i class="ri-facebook-circle-fill"></i></a> <a href="#" class="link-light"><i class="ri-twitter-fill"></i></a> <a href="#" class="link-light"><i class="ri-instagram-fill"></i></a>
                <a href="#" class="link-light"><i class="ri-linkedin-box-fill"></i></a>
            </div>
            <a href="../index.html" class="btn btn-warning rounded-0"> <i class="ri-shopping-cart-line me-2"></i> Purchase Now </a>
        </div>
    </div>
</div>
<!-- Video Modal -->
<div class="modal fade" id="videoModal" tabindex="-1" aria-labelledby="videoModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-xl">
        <div class="modal-content bg-transparent border-0 rounded-0">
            <div class="modal-header d-flex justify-content-end border-0 py-0">
                <a href="#" class="link-light" data-bs-dismiss="modal" aria-label="Close"><i class="ri-close-fill ri-2x"></i></a>
            </div>
            <div class="modal-body px-5">
                <div class="ratio ratio-16x9">
                    <iframe src="https://www.youtube.com/embed/gu-HhgJ7vfM?si=egwKhEDMVeXg3IuJ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen=""></iframe>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 푸터 포함 -->


<footer class="footer-container text-white py-3">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mb-2 mb-md-0">
                <p class="mb-0">
                    <small>
                        위치: 서울 마포구 백범로 23<br>
                        연락처: 02-739-7235 | 이메일: hi@bookbookbook.com<br>
                  이용약관 | 개인정보처리방침
                    </small>
                </p>
            </div>
        </div>
    </div>
</footer>

<style>
.footer-container{
   background-color: #e74c3c;
}

@font-face {
        font-family: 'DungGeunMo';
        src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/DungGeunMo.woff') format('woff');
        font-weight: normal;
        font-style: normal;
}

footer{
   font-family: 'DungGeunMo';
}


</style>

<!-- Bootsrap Bundle Js -->
<script src="../vender/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Jquery Js -->
<script src="../vender/jquery/jquery-3.6.4.min.js"></script>
<!-- AOS Js -->
<script src="../vender/aos/dist/aos.js"></script>
<!-- Custom Js -->
<script src="../js/script.js"></script><button id="back-to-top" title="Go to top" style="display: none;">Top</button><button id="back-to-top" title="Go to top" style="display: none;">Top</button><button id="back-to-top" title="Go to top" style="display: none;">Top</button><button id="back-to-top" title="Go to top" style="display: block;">Top</button><button id="back-to-top" title="Go to top">Top</button><button id="back-to-top" title="Go to top">Top</button><button id="back-to-top" title="Go to top">Top</button>


<img src="chrome-extension://lplhclpeegjedapdliokcacmphgcnlnd/img/error_128.png" title="Some errors occurred on this page. Click to see details." style="opacity: 1; position: fixed !important; bottom: 10px !important; right: 10px !important; cursor: pointer !important; z-index: 2147483647 !important; width: 38px !important; height: 38px !important; min-height: 38px !important; min-width: 38px !important; max-height: 38px !important; max-width: 38px !important;"><img src="chrome-extension://lplhclpeegjedapdliokcacmphgcnlnd/img/error_128.png" title="Some errors occurred on this page. Click to see details." style="opacity: 1; position: fixed !important; bottom: 10px !important; right: 10px !important; cursor: pointer !important; z-index: 2147483647 !important; width: 38px !important; height: 38px !important; min-height: 38px !important; min-width: 38px !important; max-height: 38px !important; max-width: 38px !important;"><img src="chrome-extension://lplhclpeegjedapdliokcacmphgcnlnd/img/error_128.png" title="Some errors occurred on this page. Click to see details." style="opacity: 1; position: fixed !important; bottom: 10px !important; right: 10px !important; cursor: pointer !important; z-index: 2147483647 !important; width: 38px !important; height: 38px !important; min-height: 38px !important; min-width: 38px !important; max-height: 38px !important; max-width: 38px !important;"></body></html>