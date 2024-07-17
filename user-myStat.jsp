<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="ko" class="translated-ltr">
	<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../img/pages/icon.png" type="image/png">
    <title>북북북 | 나의 통계</title>
    <!-- Bootstrap Css -->
    <link rel="stylesheet" href="../vender/bootstrap/css/bootstrap.min.css">
    <!-- Icofont Css -->
    <link rel="stylesheet" href="../vender/icofont/icofont.min.css">
    <!-- AOS Css -->
    <link rel="stylesheet" href="../vender/aos/dist/aos.css">
    <!-- Remix Icons -->
    <link rel="stylesheet" href="../vender/remixicon/remixicon.css">
	<!-- Custom Css -->
	<link rel="stylesheet" href="../css/style2.css">
    <!-- Common Css -->
    <link rel="stylesheet" href="../css/common.css">	
 </head>

	
	<body>
<div id="page-wrapper">
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
		<div class="content" id="content">
		    <c:choose>
		        <c:when test="${not empty characterStages}">
		            <!-- 데이터가 있을 때 -->
		            <div class="statistics">
		                <div class="chart">
		                    <h3>월별 독서량 (권수별)</h3>
		                    <canvas id="bookCountChart"></canvas>
		                </div>
		                <div class="chart">
		                    <h3>월별 독서량 (페이지별)</h3>
		                    <canvas id="pageCountChart"></canvas>
		                </div>
		            </div>
					<!-- Chart.js 라이브러리를 사용하여 차트를 그립니다 -->
					                      <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
					                      <script>
					                          // 데이터가 있을 때 차트를 그리는 스크립트
					                          const bookCountCtx = document.getElementById('bookCountChart').getContext('2d');
					                          const pageCountCtx = document.getElementById('pageCountChart').getContext('2d');

					                          const bookCountData = {
					                              // 월별 데이터
					                              labels: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
					                              datasets: [{
					                                  label: '권수별 독서량',
					                                  data: [/* 각 월별 데이터 삽입 */],
					                                  backgroundColor: 'rgba(75, 192, 192, 0.2)',
					                                  borderColor: 'rgba(75, 192, 192, 1)',
					                                  borderWidth: 1
					                              }]
					                          };

					                          const pageCountData = {
					                              labels: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
					                              datasets: [{
					                                  label: '페이지별 독서량',
					                                  data: [/* 각 월별 데이터 삽입 */],
					                                  backgroundColor: 'rgba(153, 102, 255, 0.2)',
					                                  borderColor: 'rgba(153, 102, 255, 1)',
					                                  borderWidth: 1
					                              }]
					                          };

					                          new Chart(bookCountCtx, {
					                              type: 'bar',
					                              data: bookCountData,
					                              options: {
					                                  scales: {
					                                      y: {
					                                          beginAtZero: true
					                                      }
					                                  }
					                              }
					                          });

					                          new Chart(pageCountCtx, {
					                              type: 'bar',
					                              data: pageCountData,
					                              options: {
					                                  scales: {
					                                      y: {
					                                          beginAtZero: true
					                                      }
					                                  }
					                              }
					                          });
					                      </script>
		        </c:when>
		        <c:otherwise>
		            <!-- 데이터가 없을 때 -->
		            <div id="without-data">
		                <p  style="text-align: center;">아직 읽은 책이 없습니다!</p>
		                <div class="d-flex justify-content-center">
		                    <a href="#" class="btn btn-primary mx-2">베스트셀러 구경하러 가기</a>
		                    <a href="#" class="btn btn-secondary mx-2">추천 받기</a>
		                    <a href="#" class="btn btn-success mx-2">읽은 책 등록하기</a>
		                </div>
		            </div>
		        </c:otherwise>
		    </c:choose>
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
<!-- Custom Js -->
<script src="../js/script.js"></script>

</body>
</html>