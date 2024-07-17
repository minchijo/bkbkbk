<%@ page language="java" 
contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="img/pages/icon.png" type="image/png">
        <title>북북북 | 나의 리그</title>
        <!-- Bootstrap Css -->
        <link rel="stylesheet" href="../vender/bootstrap/css/bootstrap.min.css">
        <!-- Icofont Css -->
        <link rel="stylesheet" href="../vender/icofont/icofont.min.css">
        <!-- AOS Css -->
        <link rel="stylesheet" href="../vender/aos/dist/aos.css">
        <!-- Remix Icons -->
        <link rel="stylesheet" href="../vender/remixicon/remixicon.css">
        <!-- Slick Slider Css -->
        <link rel="stylesheet" href="../vender/slick/slick/slick.css">
        <link rel="stylesheet" href="../vender/slick/slick/slick-theme.css">
        <!-- Custom Css -->
        <link rel="stylesheet" href="../css/style.css">
        <!-- Common Css -->
        <link rel="stylesheet" href="../css/common.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/bodymovin/5.7.6/lottie.min.js"></script>
		 <style>
		     .lottie-container {
		         width: 500px;
		         height: 500px;
		         margin: 0 auto;
		     }
		 </style>
		<!--user-myLeague CSS-->
		<link rel="stylesheet" href="../css/user-myLeague.css">
    </head>
    <body>
        
        <div class="bg-elements elements-top-header position-relative">
            <!-- navbar -->
            <div class="elements-nav">
                <!-- bootom nav -->
				<nav class="navbar navbar-expand bottom-nav bg-black borer-bottom border-opacity-10 border-white py-lg-0 py-3 bg-opacity-25">
				                    <div class="container">
				                        <div class="position-relative d-flex align-items-center gap-2 site-brand">
				                            <img src="" alt="북북북 로고" />
											<!--../img/bookbookbookLogo.png-->
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
								                              <li><a class="dropdown-item" href="pages/portfolio-full-width.html">읽은 책</a></li>
								                              <li><a class="dropdown-item" href="pages/portfolio-boxed.html">읽고 있는 책</a></li>
								                              <li><a class="dropdown-item" href="pages/portfolio-classic.html">읽고 싶은 책</a></li>
								                          </ul>
								                      </li>
    
                                    <a class="nav-link " href="#" role="button" aria-expanded="false"> 나의 캐릭터 </a>
                                   
								
								
								<li class="nav-item dropdown single-dropdown-nav">
								                           <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"> 나의 정보 </a>
								                           <ul class="dropdown-menu">
								                               <li><a class="dropdown-item" href="pages/portfolio-full-width.html">나의 정보</a></li>
								                               <li><a class="dropdown-item" href="pages/portfolio-boxed.html">나의 달력</a></li>
								                               <li><a class="dropdown-item" href="pages/portfolio-classic.html">나의 메모</a></li>
								                               <li><a class="dropdown-item" href="pages/portfolio-classic.html">나의 통계</a></li>
								                           </ul>
								                       </li>
														</ul>
													</li>
												</ul>
                            <a href="index.html" class="btn btn-purple rounded-pill d-none d-lg-block btn-theme"> <i class="ri-shopping-cart-line me-2"></i> Purchase Now </a>
                            <a href="#" class="link-light d-lg-none ms-auto" data-bs-toggle="offcanvas" data-bs-target="#sidebarnav" aria-controls="sidebarnav"><i class="ri-menu-3-line ri-lg"></i></a>
                        </div>
                    </div>
                </nav>
            </div>
            <!-- header -->
			<div class="w-100">
			     <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#e74c3c" fill-opacity="1" d="M0,128L48,149.3C96,171,192,213,288,240C384,267,480,277,576,245.3C672,213,768,139,864,96C960,53,1056,43,1152,58.7C1248,75,1344,117,1392,138.7L1440,160L1440,0L1392,0C1344,0,1248,0,1152,0C1056,0,960,0,864,0C768,0,672,0,576,0C480,0,384,0,288,0C192,0,96,0,48,0L0,0Z"></path></svg>
			</div>
    
		<!-- ############################################## - ->
			<!-- content -->
			<div class="container">
			<div class="content-container">
			    <div class="border-dark">
			        <div class="header">
			            <span id="competition-title"></span><br>
			            <span id="competition-period"></span><br>
			            <span>오늘 읽은 책 업데이트는 내일 오전 랭킹에 반영됩니다.</span>
			        </div>
			        <div id="ranking-list">
			            <!-- 랭킹 리스트가 동적으로 추가될 부분 -->
			        </div>
			    </div>
			</div>
			</div>

			<!-- Nav Sidebar -->
			<%@ include file="../navSidebar.jsp" %>	
		<!-- 푸터 포함 -->
		<%@ include file="../footer.jsp" %>
		
        
        <!-- Bootsrap Bundle Js -->
        <script src="../vender/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- Jquery Js -->
        <script src="../vender/jquery/jquery-3.6.4.min.js"></script>
        <!-- AOS Js -->
        <script src="../vender/aos/dist/aos.js"></script>
        <!-- Slick Slider Js -->
        <script src="../vender/slick/slick/slick.min.js"></script>
        <!-- Slick Js -->
        <script src="../js/slick.js"></script>
        <!-- Custom Js -->
        <script src="../js/script.js"></script>
		<!-- jQuery CDN -->
		  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<!--Lottie-->
		<script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
		<!--user-myLeague JS-->
		<script src="../js/user-myLeague.js"></script>
		
    </body>
</html>
