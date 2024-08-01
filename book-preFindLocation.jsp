<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="ko" class="translated-ltr">
<head>   
    <!-- 메타 태그 설정 -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- 파비콘 설정 -->
	<link rel="icon" href="../img/pages/icon.png" type="image/png">
    
	<title>북북북 | 도서 검색 결과</title>
	
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
    <!-- Common Css -->
    <link rel="stylesheet" href="../css/common.css">
    <link type="text/css" rel="stylesheet" charset="UTF-8" href="https://www.gstatic.com/_/translate_http/_/ss/k=translate_http.tr.26tY-h6gH9w.L.W.O/am=GAY/d=0/rs=AN8SPfrev-A3NvrBP0gNq8zXCqKY7IcBLA/m=el_main_css"><link rel="stylesheet" href="../css/user-bookSearchResult.css">
</head>

<body data-aos-easing="ease" data-aos-duration="400" data-aos-delay="0">
  <div class="bg-elements elements-top-header position-relative">

    <!-- navbar -->
    <div class="elements-nav">
    <!-- bootom nav -->           
  <style>
       .custom-select {
           width: auto; /* 가로 사이즈를 줄이기 위해 auto로 설정 */
       }
       .search-button {
           width: 40px; /* 이미지의 가로 크기 */
           height: 40px; /* 이미지의 세로 크기 */
           padding: 0; /* 기본 여백 제거 */
         margin-top: 8px;
         margin-right: 5px;
       }
   </style>
   
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
                                  <a class="nav-link" href="/pages/user-myBookshelf" role="button" aria-expanded="false"> 나의 서재 </a>
                                  
                              </li>
                              <li>
                                  <a class="nav-link" href="/pages/user-myCharacters" role="button" aria-expanded="false"> 나의 캐릭터 </a>
                              </li>
                              <li class="nav-item dropdown single-dropdown-nav">
                                  <a class="nav-link dropdown-toggle" href="/pages/user-myInfo" role="button" data-bs-toggle="dropdown" aria-expanded="false"> 나의 정보 </a>
                                  <ul class="dropdown-menu">
                                      <li><a class="dropdown-item" href="/pages/user-myInfo">나의 정보</a></li>
                                      <li><a class="dropdown-item" href="/pages/user-myCalendar">나의 달력</a></li>
                                      <li><a class="dropdown-item" href="/pages/user-myMemo">나의 메모</a></li>
                                      <li><a class="dropdown-item" href="/pages/user-myStat">나의 통계</a></li>
                                  </ul>
                              </li>
                          </ul>
                                      <!--검색 폼-->
                                    <form class="d-flex justify-content-center" action="/bookSearchResult" method="get">
                                          <div class="input-group border border-2 border-dark rounded-pill overflow-hidden bg-white p-1" style="max-width: 800px;">
                                              <select name="type" class="form-select form-select-xs custom-select" style="border-radius: 50px;">
                                                  <option value="title">제목</option>
                                                  <option value="writer">작가</option>
                                                  <option value="publisher">출판사</option>
                                                  <option value="bookPreview">소개글</option>
                                              </select>
                                              <input type="text" class="form-control border-0 py-3 px-4" placeholder="책을 검색해 보세요!" aria-label="Enter your query" name="query" required="">
                                              <input type="image" src="../img/searchIcon.png" class="search-button" alt="검색하기" id="app">
                                          </div>
                                      </form>
                                   
                                   
                                       <div class="d-flex align-items-center">
                                           
                                               
                                               
                                                   <a href="/pages/login" class="btn btn-purple rounded-pill btn-theme">로그인</a>
                                               
                                           
                                       </div>
                                   </div>
                               </div>
                           </nav>
           
    <!-- header -->
    <div class="svg-border-rounded text-light">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 144.54 17.34" preserveAspectRatio="none" fill="#ffffff"><path d="M144.54,17.34H0V0H144.54ZM0,0S32.36,17.34,72.27,17.34,144.54,0,144.54,0"></path></svg>
            </div>
</div>
<!-- 메인 컨텐츠 영역 -->
<div class="py-5">
    <div class="container py-4 ">
     <div class="py-5">
   <div class="container mt-5 text-center" style="max-width: 900px;">
    <h1 id="list" class="mb-4">도서 보유 도서관 목록</h1><p></p>
	
	<!-- 도서관 검색 폼 -->
    <form action="/findLibraries" method="get" class="mb-4">
        <input type="hidden" name="isbn" value="${param.isbn}">
        <input type="hidden" name="bookTitle" value="${param.bookTitle}">
        <div class="row mb-3">
            <div class="col-md-4">
                <select class="form-control doSelect" name="doName">
                    <option value="" selected="" disabled="">시/도 선택</option>
               <c:forEach var="region" items="${regions}">
                      <option value="${region}">${region}</option>
                  </c:forEach>
                </select>
            </div>
            <div class="col-md-4">
                <select class="form-control gugunSelect" name="localCode">
                    <option value="" selected="" disabled="">구/군 선택</option>
                </select>
            </div>
            <div class="col-md-4">
                <button type="submit" class="btn btn-primary btn-block">검색하기</button>
            </div>
        </div>
    </form>
   <p>
	
	  <!-- 검색 결과가 없을 경우 메시지 표시 -->
      <c:if test="${empty libraries}">
           <p class="alert alert-warning">해당 도서를 보유한 도서관이 없습니다.</p>
       </c:if>
   </p>
    
   <!-- 검색 결과 표시 -->
	<c:choose>
   		<c:when test="${not empty libraries}">
		<!-- 도서관 목록 테이블 -->
        <div class="table-responsive" style="height: 25em;">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>도서관 이름</th>
                    <th>주소</th>
                    <th>전화번호</th>
                    <th>웹사이트</th>
                    <th>위치찾기</th>
                </tr>
                </thead>
                <tbody>
            <c:forEach items="${libraries}" var="library">
                    <tr>
                  <td>${library.libraryName}</td>
                        <td>${library.address}</td>
                        <td>${library.libraryTel}</td>
                        <td><a href="${library.url}" target="_blank">${library.url}</a></td>
                        <td style="display:none;">${library.latitude}</td>
                        <td style="display:none;">${library.longitude}</td>
                        <td style="display:none;">${library.localCode}</td>
                        <td style="display:none;">${library.libraryCode}</td>
                        <td><button class="btn btn-secondary btn-sm" value="위치찾기">위치찾기</button></td>
                    </tr>
            </c:forEach>
                </tbody>
            </table>
        </div>
		
   </c:when>
   <c:otherwise>	
	<!-- 결과가 없을 경우 빈 공간 -->
	<div style="height: 20em;"></div>
   </c:otherwise>
   </c:choose>
   
   <style>
      #list {
          color: #eee !important;
      }

      .table-striped>tbody>tr:nth-of-type(odd)>* {
          color: #eee !important;
      }

      .table{
          color: #eee !important;
      }

      .btn {
      background-color: #F14F00 !important;
      }
      
   </style>

    <!-- 지도를 표시할 div -->
    <div id="map" style="width:100%;height:400px;display:none;margin-top:20px;"></div>
</div>



<script>

	
</script>
         </div>
         </div>
         </div>


<!-- Nav Sidebar -->
<div class="offcanvas offcanvas-top bg-purple text-white border-0 h-100" tabindex="-1" id="sidebarnav" aria-labelledby="sidebarnavLabel">
    <div class="offcanvas-header d-flex justify-content-end">
        <a href="#" class="link-light" data-bs-dismiss="offcanvas" aria-label="닫다"><i class="ri-close-line ri-lg"></i></a>
    </div>
    <div class="offcanvas-body">
        <div class="sidebar-nav text-center">
            <div class="position-relative d-flex align-items-center gap-2 site-brand">
                <i class="ri-slideshow-line fs-2 lh-1 text-white"></i>
                <div class="lh-1">
                    <h5 class="fw-bold m-0 text-white">북북북</h5>
                </div>
                <a class="stretched-link" href="../index.html"></a>
            </div>
            <ul class="navbar-nav justify-content-end flex-grow-1 mt-4">
                <li class="nav-item">
                    <a class="nav-link" href="#"><font style="vertical-align: inherit;">나의 서재</font></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><font style="vertical-align: inherit;">나의 캐릭터</font></a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><font style="vertical-align: inherit;">나의 정보</font></a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="../pages/page-help-center.html"><font style="vertical-align: inherit;">나의 정보</font></a></li>
                        <li><a class="dropdown-item" href="../pages/page-help-center.html"><font style="vertical-align: inherit;">나의 달력</font></a></li>
                        <li><a class="dropdown-item" href="../pages/page-help-center.html"><font style="vertical-align: inherit;">나의 메모</font></a></li>
                        <li><a class="dropdown-item" href="../pages/page-help-center-categories.html"><font style="vertical-align: inherit;">나의 통계</font></a></li>
                    </ul>
                </li>
            </ul>
         <a href="/pages/user-login" class="btn btn-purple rounded-pill d-none d-lg-block btn-theme"> 로그인 </a>
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
                        <a href="#" data-toggle="modal" data-target="#termsModal">이용약관</a> | 
                        <a href="#" data-toggle="modal" data-target="#privacyModal">개인정보처리방침</a>
                    </small>
                </p>
            </div>
        </div>
    </div>
</footer>

<!-- 이용약관 모달 -->
<div class="modal fade" id="termsModal" tabindex="-1" aria-labelledby="termsModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="termsModalLabel"></h1>
                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!-- 여기에 이용약관 내용을 추가하세요 -->
            <h1>서비스 이용약관</h1>
                
                <div class="article">
                    <h2>제1조 [목적]</h2>
                    <p>이 약관은 북적 스튜디오 (이하 “회사”)가 제공하는 북적북적(이하 “서비스”)를 이용함에 있어 회사와 사용자 간의 권리ㆍ의무 및 책임사항을 규정함을 목적으로 합니다.</p>
                    <p>서비스를 이용하고자 하는 자는 본 이용 약관을 자세히 읽은 후 이용 약관에 동의하지 않을 경우, 본 이용 약관에 동의 표시를 하거나 서비스에 등록 또는 액세스하거나 이를 이용(이하 “이용”)하지 않아야 합니다.</p>
                </div>

                <div class="article">
                    <h2>제2조 [용어의 정의]</h2>
                    <p>이 약관에서 사용하는 용어의 정의는 다음과 같습니다. 이 약관에서 사용하는 용어 중 본 조에서 정하지 아니한 것은 회사 사이트의 별도 페이지 안내 및 관계 법령에서 정하는 바에 따르며, 그 외에는 일반 상관례에 따릅니다.</p>
                    <ul>
                        <li>“회사”란 재화 또는 용역(이하 “재화 등”이라 함)을 사용하여 이용자에게 서비스를 제공할 목적으로 컴퓨터 등 정보통신설비를 이용하여 설정한 가상의 영업장을 말하며, 아울러 “회사”가 제작, 운영하는 모바일 어플리케이션 및 인터넷 웹사이트(이하 “사이트”)을 운영하는 사업자의 의미로도 사용합니다.</li>
                        <li>“서비스”란 회사가 휴대용 단말기, 개인용 컴퓨터 등 전기통신설비를 포함한 각종 유무선 장치와 모바일 어플리케이션, 웹사이트를 통해 이용자에게 제공하는 디지털 콘텐츠 등 제반 서비스를 말합니다.</li>
                        <li>“이용자”란 “사이트”에 접속하여 이 약관에 따라 “회사”가 제공하는 “서비스”를 받는 회원 및 비회원을 말합니다.</li>
                        <li>“회원”이란 회사와 이용계약을 체결하고 아이디(ID)를 부여 받은 이용자로서 회사의 정보를 제공받으며 회사가 제공하는 유ㆍ무상 서비스를 지속적으로 이용할 수 있는 자를 말합니다.</li>
                    </ul>
                </div>

                <div class="article">
                    <h2>제3조 [약관 외 준칙]</h2>
                    <p>회사는 개별 서비스에 대하여 별도의 이용약관 및 운영정책 등을 둘 수 있으며, 해당 내용이 본 약관과 상충할 경우에는 별도의 이용약관 및 운영정책이 우선하여 적용됩니다.</p>
                    <p>이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제에 관한 법률 등 관계 법령 또는 상관례에 의합니다.</p>
                </div>

                <div class="article">
                    <h2>제4조 [약관의 명시와 설명 및 개정]</h2>
                    <p>회사는 이 약관의 내용을 회원이 쉽게 확인할 수 있도록 모바일 어플리케이션 및 웹사이트에 게시합니다.</p>
                    <p>이 약관은 이용자가 회원으로 가입하면서 이 약관에 동의함으로써 효력이 발생합니다.</p>
                    <p>회사는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제에 관한 법률, 전자문서 및 전자거래기본법, 전자서명법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 소비자보호법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다. 회사가 약관을 개정할 경우에는 개정 약관 적용일 최소 7일 이전부터 사이트 내에서 회원에게 공지합니다. 다만 회원에게 불리하게 약관 내용을 변경하는 경우 최소 30일 이상의 유예기간을 두고 공지합니다.</p>
                    <p>본 약관은 수시로 개정될 수 있으므로 회원은 서비스 내에 공지된 약관의 최신 버전을 주기적으로 확인하여야 합니다. 본 약관이 개정되는 경우, 회원은 추후 유료서비스를 구매할 때 새로운 조건을 검토할 기회를 갖게 됩니다. 회원은 개정 약관 공지일로부터 해당 약관의 효력 발생일까지 회사에게 변경 약관 적용 거부의사를 표명할 수 있습니다. 회원이 해당 기간 내에 거부의사를 표시하지 않은 경우 회원은 변경 약관에 동의한 것으로 봅니다. 개정 약관의 수락을 거부하는 경우 변경 약관에 따라 제공되는 서비스는 제공되지 않고, 회원이 이전에 구매한 유료서비스를 사용하는 데에는 회원이 수락한 마지막 버전의 약관이 계속 적용됩니다.</p>
                </div>

                <div class="article">
                    <h2>제5조 [서비스의 제공 및 변경]</h2>
                    <p>회사는 이용자에게 모바일 어플리케이션과 웹사이트를 통해 디지털 콘텐츠 및 제반 서비스를 제공합니다.</p>
                    <p>회사는 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다.</p>
                    <p>“회사”가 제공하는 서비스의 형태와 기능, 디자인 등은 필요한 경우 변경되거나 중단될 수 있습니다. 회사는 이 경우 개별적인 변경에 대하여 회원에게 사전 통지하지 않습니다. 다만, 회원에게 불리한 것으로 판단되는 경우 서비스 내 게시 혹은 전자우편을 통하여 이를 공지합니다.</p>
                    <p>전항의 경우 회사는 이로 인하여 회원이 입은 손해를 배상합니다. 다만, 회사가 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.</p>
                </div>

                <div class="article">
                    <h2>제6조 [광고성 정보의 수신]</h2>
                    <p>회사는 이용자 맞춤형 서비스 및 상품 추천, 각종 이벤트, 행사 등의 광고성 정보를 전자우편, 스마트폰 푸시 알림 등의 방법으로 이용자에게 제공할 수 있습니다. 다만, 이용자는 언제든지 전자우편 등을 통하여 수신을 거절할 수 있습니다.</p>
                    <p>광고성 정보의 수신 동의는 거부하실 수 있으며 동의 이후라도 이용자의 의사에 따라 동의를 철회할 수 있습니다. 개인정보보호법 제22조 제5항에 의해 동의를 거부하더라도 회사가 제공하는 서비스 이용이 제한되지 않습니다. 단, 할인, 이벤트 및 사용자 맞춤형 서비스 추천 등의 광고성 정보 안내 서비스가 제한됩니다.</p>
                    <p>회사에서 제공하는 광고성 정보를 원하지 않을 경우 언제든지 서비스 내부 설정 페이지를 통하여 철회를 요청하는 취지로 설정을 변경할 수 있습니다. 또한 향후 광고성 정보 수신에 새롭게 동의하고자 하는 경우에도 설정 페이지에서 동의할 수 있습니다.</p>
                </div>

                <div class="article">
                    <h2>제7조 [서비스의 중단]</h2>
                    <p>회사는 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다. 이 경우 제11조(회원에 대한 통지)에 정한 방법으로 이용자에게 통지합니다. 다만, 회사가 사전에 통지할 수 없는 부득이한 사유가 있는 경우 사후에 통지할 수 있습니다.</p>
                    <p>회사는 서비스의 제공에 필요한 경우 정기점검을 실시할 수 있으며, 정기점검시간은 서비스제공화면에 공지한 바에 따릅니다.</p>
                </div>

                <div class="article">
                    <h2>제8조 [회원가입]</h2>
                    <p>회원가입은 이용자가 약관의 내용에 대하여 동의를 하고 회원가입신청을 한 후 회사가 이러한 신청에 대하여 승낙함으로써 체결됩니다.</p>
                    <p>회사는 제1항과 같이 회원으로 가입할 것을 신청한 회원이 다음 각호에 해당하지 않는 한 신청을 수락합니다.</p>
                    <ul>
                        <li>부정한 목적으로 타인의 명의를 이용한 경우</li>
                        <li>허위의 정보를 기재하거나 회사가 제시하는 내용을 기재하지 않는 경우</li>
                        <li>기타 회원으로 등록하는 것이 회사의 기술상 현저히 지장이 있다고 판단되는 경우</li>
                        <li>만 14세 미만의 아동이 회원가입 신청을 한 경우</li>
                    </ul>
                    <p>회원가입 계약의 성립시기는 회사의 승낙이 회원에게 도달한 시점으로 합니다.</p>
                </div>

                <div class="article">
                    <h2>제9조 [회원 탈퇴 및 자격 상실 등]</h2>
                    <p>회원이 다음 각호의 사유에 해당하는 경우, 회사는 회원자격을 제한 및 정지시킬 수 있습니다.</p>
                    <ul>
                        <li>다른 사람의 서비스 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우</li>
                        <li>회사를 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우</li>
                    </ul>
                    <p>회사가 회원자격을 제한ㆍ정지시킨 후, 동일한 행위가 2회 이상 반복되거나 14일 이내에 그 사유가 시정되지 아니하는 경우 회사는 회원자격을 상실시킬 수 있습니다.</p>
                    <p>회사가 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 최소한 14일 이상의 기간을 정하여 소명할 기회를 부여합니다.</p>
                </div>

                <div class="article">
                    <h2>제10조 [아이디 및 비밀번호의 관리]</h2>
                    <p>아이디(ID) 및 비밀번호에 대한 관리 책임은 회원에게 있으며, 회원은 어떠한 경우에도 본인의 아이디(ID) 또는 비밀번호를 타인에게 양도하거나 대여할 수 없습니다.</p>
                    <p>회사의 귀책사유 없이 아이디(ID) 또는 비밀번호의 유출, 양도, 대여로 인하여 발생하는 손실이나 손해에 대하여는 회원 본인이 그에 대한 책임을 부담합니다.</p>
                    <p>회원은 아이디(ID) 또는 비밀번호를 도난당하거나 제3자가 무단으로 이를 사용하고 있음을 인지한 경우, 이를 즉시 회사에 통보하여야 하고 회사는 이에 대한 신속한 처리를 위하여 최선의 노력을 다합니다.</p>
                </div>
               
               <div class="article">
                      <h2>제11조 [회원에 대한 통지]</h2>
                      <p>회사가 회원에 대한 통지를 하는 경우, 회원이 회사와 미리 약정하여 지정한 전자우편 주소로 할 수 있습니다.</p>
                      <p>회사는 불특정다수 회원에 대한 통지의 경우 1주일 이상 회사 공지사항에 게시함으로써 개별 통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별통지를 합니다.</p>
                  </div>

                  <div class="article">
                      <h2>제12조 [서비스 이용계약의 성립 및 결제방법 등]</h2>
                      <p>회원은 서비스 내에서 회사가 제공하는 유료 서비스를 제공받고자 할 경우 다음 각 호 또는 이와 유사한 절차에 의하여 서비스 이용을 신청합니다.</p>
                      <ul>
                          <li>결제하기 클릭</li>
                          <li>결제</li>
                      </ul>
                      <p>회원은 다음 각호의 방법으로 대금을 지급할 수 있습니다.</p>
                      <ul>
                          <li>애플 스토어, 구글 플레이 스토어 등 각 플랫폼에서 제공하는 결제 수단을 이용한 결제</li>
                      </ul>
                      <p>회원은 회사가 지정하는 일부 서비스 항목 또는 일정 기한에 한하여 무료로 서비스를 이용할 수 있습니다.</p>
                  </div>

                  <div class="article">
                      <h2>제13조 [회사의 의무]</h2>
                      <p>회사는 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 재화ㆍ용역을 제공하는데 최선을 다하여야 합니다.</p>
                      <p>회사는 회원이 안전하게 서비스를 이용할 수 있도록 회원의 개인정보보호를 위한 보안 시스템을 갖추어야 하며 개인정보처리방침을 공시하고 준수합니다.</p>
                      <p>회사는 계속적이고 안정적인 서비스의 제공을 위하여 서비스 개선을 하던 중 설비에 장애가 생기거나 데이터 등이 멸실ㆍ훼손된 때에는 천재지변, 비상사태, 현재의 기술로는 해결이 불가능한 장애나 결함 등 부득이한 사유가 없는 한 지체 없이 이를 수리 또는 복구하도록 최선의 노력을 다합니다.</p>
                  </div>

                  <div class="article">
                      <h2>제14조 [회원의 의무]</h2>
                      <p>회원은 다음 행위를 하여서는 안됩니다.</p>
                      <ul>
                          <li>신청 또는 변경 시 허위 내용의 등록</li>
                          <li>타인의 정보 수집, 저장, 게시, 유포</li>
                          <li>회사가 게시한 정보의 변경</li>
                          <li>회사가 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시</li>
                          <li>회사 기타 제3자의 저작권, 영업비밀, 특허권 등 지식재산권에 대한 침해</li>
                          <li>회사와 다른 회원 및 기타 제3자를 희롱하거나 위협하거나 명예를 손상시키거나 업무를 방해하는 행위</li>
                          <li>기타 현행 법령에 위반되는 불법적인 행위</li>
                      </ul>
                      <p>회사는 회원이 전항에서 금지한 행위를 하는 경우 위반 행위의 경중에 따라 서비스의 이용정지, 계약 해지 등의 서비스 이용 제한, 손해배상청구, 수사기관 고발 등 합당한 조치를 취할 수 있습니다.</p>
                  </div>

                  <div class="article">
                      <h2>제15조 [저작권의 귀속 및 이용제한]</h2>
                      <p>회사가 작성한 저작물에 대한 저작권 기타 지식재산권은 회사에 귀속합니다.</p>
                      <p>회사를 이용함으로써 얻은 정보 중 회사에게 지식재산권이 귀속된 정보를 회사의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.</p>
                  </div>

                  <div class="article">
                      <h2>제16조 [이용 계약 해지 및 환불]</h2>
                      <p>회원이 유료 서비스 이용 계약을 해지하고자 할 경우에는 환불 기간 내에 회원이 이용하는 단말기에서 제공되는 앱스토어 또는 구글플레이의 정책에 따라 서비스 해지 양식을 제출하거나 그 밖에 전화나 기타 회사가 제공하는 방법 (전자우편, [cs@bookbookbook.com])으로 회사에 해지 신청을 하여야 효력이 발생하며, 회원의 일방적인 어플리케이션 삭제는 서비스 해지 신청에 해당되지 않습니다.</p>
                      <p>회원의 정당한 해지 또는 환불 신청을 받은 회사는 각 유료 서비스에 명시된 해지 또는 환불 안내에 따라 따라 절차를 이행합니다.</p>
                      <p>회원이 유료 서비스를 중도 해지하는 경우, 환불 금액은 앱스토어 또는 구글플레이의 환불 정책에 따르며 환불수수료와 결제수수료가 공제될 수 있습니다. 다만, 합리적인 사정이 있을 경우 회사는 별도의 절차로 환불할 수 있으며, 이 때에도 환불금액은 별다른 사정이 없는 한 앱스토어 또는 구글플레이의 환불 정책을 기준으로 산정됩니다.</p>
                      <p>본 이용약관 조항 중 앱스토어 또는 구글플레이의 환불 정책과 배치되는 내용이 있는 경우(예컨대 환불 소요 기간 등), 앱스토어 또는 구글플레이에서 판매하는 서비스에 대한 환불 처리는 각 스토어의 환불 정책을 따릅니다.</p>
                  </div>

                  <div class="article">
                      <h2>제17조 [책임 제한 및 면책 조항]</h2>
                      <p>회사는 천재지변 또는 기간 통신 사업자의 회선 장애 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.</p>
                      <p>회사는 회원의 귀책사유로 인하여 발생한 서비스 이용의 장애에 대하여는 책임을 지지 않습니다.</p>
                      <p>회사는 회원이 서비스와 관련하여 게재한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 관하여는 책임을 지지 않습니다.</p>
                      <p>회사는 무료로 제공되는 서비스 이용과 관련하여 관련 법령에 특별한 규정이 없는 한 책임을 지지 않습니다.</p>
                      <p>회사는 회원 상호 간 또는 회원과 제3자 상호 간에 서비스를 매개로 하여 발생한 분쟁 등에 대하여 책임을 지지 않습니다.</p>
                      <p>회사는 회원의 모바일 환경이나 회사의 관리 범위에 있지 아니한 보안 문제로 인하여 발생하는 제반 문제 또는 현재의 보안 기술 수준으로 방어가 곤란한 네트워크 해킹 등 회사의 귀책 사유 없이 발생하는 문제에 대하여 책임을 지지 않습니다.</p>
                  </div>

                  <div class="article">
                      <h2>제18조 [분쟁 해결]</h2>
                      <p>회사는 회원이 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치ㆍ운영합니다.</p>
                      <p>회사는 회원으로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 사용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.</p>
                      <p>회사와 회원 간에 발생한 전자상거래 분쟁과 관련하여 회원의 피해구제신청이 있는 경우에는 공정거래위원회 또는 시ㆍ도지사가 의뢰하는 분쟁조정기관의 조정에 따를 수 있습니다.</p>
                  </div>

                  <div class="article">
                      <h2>제19조 [재판권 및 준거법]</h2>
                      <p>회사와 회원 간에 발생한 분쟁에 관한 소송은 민사소송법상의 관할 법원에 제소합니다.</p>
                      <p>회사와 회원 간에 발생한 분쟁에 대하여는 대한민국 법을 적용합니다.</p>
                  </div>

                  <div class="article">
                      <h2>부칙</h2>
                      <p>이 약관은 2023년 8월 28일부터 적용됩니다. 단, 본 약관의 공지 이후 시행일 이전에 본 약관에 동의한 경우에는 동의시부터 본 약관이 적용됩니다.</p>
                  </div>
            </div>
            <div class="modal-footer">
               
               
            </div>
        </div>
    </div>
</div>

<!-- 개인정보처리방침 모달 -->
<div class="modal fade" id="privacyModal" tabindex="-1" aria-labelledby="privacyModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="privacyModalLabel"></h1>
                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!-- 여기에 개인정보처리방침 내용을 추가하세요 -->
            <h1>개인정보처리방침</h1>
               <p>&lt; 북북북 &gt;은(는) 「개인정보 보호법」 제30조에 따라 정보주체의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보 처리방침을 수립·공개합니다.</p>
               
               <div class="article">
                   <h2>제1조(개인정보의 처리 목적)</h2>
                   <p>&lt; 북북북 &gt;은(는) 다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며 이용 목적이 변경되는 경우에는 「개인정보 보호법」 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.</p>
                   <ul>
                       <li>
                           <strong>홈페이지 회원가입 및 관리:</strong> 회원 가입의사 확인, 회원자격 유지·관리, 만14세 미만 아동의 개인정보 처리 시 법정대리인의 동의여부 확인 목적으로 개인정보를 처리합니다.
                       </li>
                       <li>
                           <strong>재화 또는 서비스 제공:</strong> 서비스 제공, 콘텐츠 제공, 요금결제·정산을 목적으로 개인정보를 처리합니다.
                       </li>
                       <li>
                           <strong>마케팅 및 광고에의 활용:</strong> 신규 서비스(제품) 개발 및 맞춤 서비스 제공, 이벤트 및 광고성 정보 제공 및 참여기회 제공, 서비스의 유효성 확인, 접속빈도 파악 또는 회원의 서비스 이용에 대한 통계 등을 목적으로 개인정보를 처리합니다.
                       </li>
                   </ul>
               </div>
               
               <div class="article">
                   <h2>제2조(개인정보의 처리 및 보유 기간)</h2>
                   <p>① &lt; 북북북 &gt;은(는) 법령에 따른 개인정보 보유·이용기간 또는 정보주체로부터 개인정보를 수집 시에 동의받은 개인정보 보유·이용기간 내에서 개인정보를 처리·보유합니다.</p>
                   <p>② 각각의 개인정보 처리 및 보유 기간은 다음과 같습니다.</p>
                   <ul>
                       <li>
                           <strong>회원가입 및 관리:</strong> 회원가입 및 관리와 관련한 개인정보는 수집·이용에 관한 동의일로부터 서비스 탈퇴 또는 이용자격을 상실할 경우 지체없이 파기 전까지 위 이용목적을 위하여 보유·이용됩니다.
                           <br>보유근거: 정보통신망 이용촉진 및 정보보호 등에 관한 법률
                       </li>
                       <li>
                           <strong>재화 또는 서비스 제공:</strong> 재화 또는 서비스 제공과 관련한 개인정보는 수집·이용에 관한 동의일로부터 지체없이 파기까지 위 이용목적을 위하여 보유·이용됩니다.
                           <br>보유근거: 전자상거래 등에서의 소비자보호에 관한 법률
                           <br>관련법령: 신용정보의 수집/처리 및 이용 등에 관한 기록: 3년
                       </li>
                       <li>
                           <strong>마케팅 및 광고에의 활용:</strong> 마케팅 및 광고에의 활용과 관련한 개인정보는 수집·이용에 관한 동의일로부터 지체없이 파기까지 위 이용목적을 위하여 보유·이용됩니다.
                           <br>보유근거: 정보통신망 이용촉진 및 정보보호 등에 관한 법률
                       </li>
                   </ul>
               </div>
               
               <div class="article">
                   <h2>제3조(처리하는 개인정보의 항목)</h2>
                   <p>① &lt; 북북북 &gt;은(는) 다음의 개인정보 항목을 처리하고 있습니다.</p>
                   <ul>
                       <li>회원 가입 시 기본수집사항(필수항목): 로그인 SNS 식별자(Apple, Google, Facebook로부터 제공받은 유저식별자), 프로필 이름</li>
                       <li>서비스 이용과정에서 자동으로 수집: 기기 정보(모델명, OS), 앱 설정값, 메타 데이터, 서비스 이용기록</li>
                       <li>유료서비스 이용 시: 오픈마켓사업자가 제공하는 구입 내역</li>
                       <li>고충처리 시: 이용자로부터 위 각 정보 중 필요한 항목 및 해당 고충처리에 필요한 별개 항목을 수집 및 처리</li>
                   </ul>
               </div>
               
               <div class="article">
                   <h2>제4조(개인정보의 제3자 제공에 관한 사항)</h2>
                   <p>① &lt; 북북북 &gt;은(는) 개인정보를 제1조(개인정보의 처리 목적)에서 명시한 범위 내에서만 처리하며, 정보주체의 동의, 법률의 특별한 규정 등 「개인정보 보호법」 제17조 및 제18조에 해당하는 경우에만 개인정보를 제3자에게 제공합니다.</p>
                   <p>② &lt; 북북북 &gt;은(는) 현재 개인정보를 제3자에게 제공하고 있지 않습니다.</p>
               </div>
               
               <div class="article">
                   <h2>제5조(개인정보처리의 위탁에 관한 사항)</h2>
                   <p>① &lt; 북북북 &gt;은(는) 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다.</p>
                   <ul>
                       <li>
                           <strong>서비스 이용에 대한 데이터 처리</strong>
                           <br>위탁받는 자 (수탁자): Google Analytics, Google Cloud Platform (Firebase)
                           <br>위탁하는 업무의 내용: 회원제 서비스 이용에 따른 본인확인, 신규 서비스(제품) 개발 및 맞춤 서비스 제공, 이벤트 및 광고성 정보 제공 및 참여기회 제공
                           <br>위탁기간: 회원 탈퇴시까지
                       </li>
                   </ul>
                   <p>② &lt; 북북북 &gt;은(는) 위탁계약 체결시 「개인정보 보호법」 제26조에 따라 위탁업무 수행목적 외 개인정보 처리금지, 기술적․관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리․감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.</p>
                   <p>③ 위탁업무의 내용이나 수탁자가 변경될 경우에는 지체없이 본 개인정보 처리방침을 통하여 공개하도록 하겠습니다.</p>
               </div>
               
               <div class="article">
                   <h2>제6조(개인정보의 파기절차 및 파기방법)</h2>
                   <p>① &lt; 북북북 &gt;은(는) 개인정보 보유기간의 경과, 처리목적 달성 등 개인정보가 불필요하게 되었을 때에는 지체없이 해당 개인정보를 파기합니다.</p>
                   <p>② 정보주체로부터 동의받은 개인정보 보유기간이 경과하거나 처리목적이 달성되었음에도 불구하고 다른 법령에 따라 개인정보를 계속 보존하여야 하는 경우에는, 해당 개인정보를 별도의 데이터베이스(DB)로 옮기거나 보관장소를 달리하여 보존합니다.</p>
                   <p>③ 개인정보 파기의 절차 및 방법은 다음과 같습니다.</p>
                   <ul>
                       <li><strong>파기절차:</strong> &lt; 북북북 &gt;은(는) 파기 사유가 발생한 개인정보를 선정하고, &lt; 북북북 &gt;의 개인정보 보호책임자의 승인을 받아 개인정보를 파기합니다.</li>
                       <li><strong>파기방법:</strong> 전자적 파일 형태의 정보는 기록을 재생할 수 없는 기술적 방법을 사용합니다.</li>
                   </ul>
               </div>
               
               <div class="article">
                   <h2>제7조(정보주체와 법정대리인의 권리·의무 및 그 행사방법에 관한 사항)</h2>
                   <p>① 정보주체는 북북북에 대해 언제든지 개인정보 열람·정정·삭제·처리정지 요구 등의 권리를 행사할 수 있습니다.</p>
                   <p>② 제1항에 따른 권리 행사는북북북에 대해 「개인정보 보호법」 시행령 제41조제1항에 따라 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며 북북북은(는) 이에 대해 지체 없이 조치하겠습니다.</p>
                   <p>③ 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 “개인정보 처리 방법에 관한 고시(제2020-7호)” 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.</p>
                   <p>④ 개인정보 열람 및 처리정지 요구는 「개인정보 보호법」 제35조 제4항, 제37조 제2항에 의하여 정보주체의 권리가 제한 될 수 있습니다.</p>
                   <p>⑤ 개인정보의 정정 및 삭제 요구는 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.</p>
                   <p>⑥ 북북북은(는) 정보주체 권리에 따른 열람의 요구, 정정·삭제의 요구, 처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.</p>
               </div>
               
               <div class="article">
                   <h2>제8조(개인정보의 안전성 확보조치에 관한 사항)</h2>
                   <p>&lt; 북북북 &gt;은(는) 개인정보의 안전성 확보를 위해 다음과 같은 조치를 취하고 있습니다.</p>
                   <ul>
                       <li><strong>개인정보에 대한 접근 제한:</strong> 개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.</li>
                       <li><strong>개인정보의 암호화:</strong> 이용자의 개인정보는 비밀번호는 암호화 되어 저장 및 관리되고 있어, 본인만이 알 수 있으며 중요한 데이터는 파일 및 전송 데이터를 암호화 하거나 파일 잠금 기능을 사용하는 등의 별도 보안기능을 사용하고 있습니다.</li>
                       <li><strong>해킹 등에 대비한 기술적 대책:</strong> &lt;북북북&gt;은 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신·점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적/물리적으로 감시 및 차단하고 있습니다.</li>
                   </ul>
               </div>
               
               <div class="article">
                   <h2>제9조(개인정보를 자동으로 수집하는 장치의 설치·운영 및 그 거부에 관한 사항)</h2>
                   <p>북북북 은(는) 정보주체의 이용정보를 저장하고 수시로 불러오는 ‘쿠키(cookie)’를 사용하지 않습니다.</p>
               </div>
               
               <div class="article">
                   <h2>제10조(행태정보의 수집·이용·제공 및 거부 등에 관한 사항)</h2>
                   <p>행태정보의 수집·이용·제공 및 거부등에 관한 사항 &lt;개인정보처리자명&gt;은(는) 온라인 맞춤형 광고 등을 위한 행태정보를 수집·이용·제공하지 않습니다.</p>
               </div>
               <div class="article">
                      <h2>제11조(개인정보 보호책임자에 관한 사항)</h2>
                      <p>① 북북북 은(는) 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.</p>
                      <p><strong>▶ 개인정보 보호책임자</strong></p>
                      <p>성명: 박북북<br>직책: 대표이사</p>
                      <p>② 정보주체께서는 북북북 의 서비스(또는 사업)을 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수 있습니다. 북북북 은(는) 정보주체의 문의에 대해 지체 없이 답변 및 처리해드릴 것입니다.</p>
                  </div>
                  
                  <div class="article">
                      <h2>제12조(정보주체의 권익침해에 대한 구제방법)</h2>
                      <p>정보주체는 개인정보침해로 인한 구제를 받기 위하여 개인정보분쟁조정위원회, 한국인터넷진흥원 개인정보침해신고센터 등에 분쟁해결이나 상담 등을 신청할 수 있습니다. 이 밖에 기타 개인정보침해의 신고, 상담에 대하여는 아래의 기관에 문의하시기 바랍니다.</p>
                      <p>개인정보분쟁조정위원회 : (국번없이) 1833-6972 (<a href="http://www.kopico.go.kr" target="_blank">www.kopico.go.kr</a>)</p>
                      <p>개인정보침해신고센터 : (국번없이) 118 (<a href="http://privacy.kisa.or.kr" target="_blank">privacy.kisa.or.kr</a>)</p>
                      <p>대검찰청 : (국번없이) 1301 (<a href="http://www.spo.go.kr" target="_blank">www.spo.go.kr</a>)</p>
                      <p>경찰청 : (국번없이) 182 (<a href="http://ecrm.cyber.go.kr" target="_blank">ecrm.cyber.go.kr</a>)</p>
                      <p>「개인정보보호법」제35조(개인정보의 열람), 제36조(개인정보의 정정·삭제), 제37조(개인정보의 처리정지 등)의 규정에 의한 요구에 대 하여 공공기관의 장이 행한 처분 또는 부작위로 인하여 권리 또는 이익의 침해를 받은 자는 행정심판법이 정하는 바에 따라 행정심판을 청구할 수 있습니다.</p>
                      <p>※ 행정심판에 대해 자세한 사항은 중앙행정심판위원회(<a href="http://www.simpan.go.kr" target="_blank">www.simpan.go.kr</a>) 홈페이지를 참고하시기 바랍니다.</p>
                  </div>
                  
                  <div class="article">
                      <h2>제13조(개인정보 처리방침 변경)</h2>
                      <p>회사는 법률이나 서비스의 변경사항을 반영하기 위한 목적 등으로 개인정보처리방침을 수정할 수 있습니다. 개인정보처리방침이 변경되는 경우 회사는 효력발생일 이전에 미리 공지하겠습니다.</p>
                      <p>부칙 (2023. 08. 25.)<br>이 개인정보처리방침은 2023년 8월 25일부터 적용됩니다.</p>
                  </div>
           
        </div>
    </div>
</div>

<style>
.footer-container {
    background-color: #e74c3c;
    width: 100%; /* 추가 */
    position: relative;
    left: 0;
   right:100;
    bottom: 0;
}

@font-face {
    font-family: 'DungGeunMo';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/DungGeunMo.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

footer {
    font-family: 'DungGeunMo';
}
a {
   color: white;
}
h1, h2, h3 {
    color: #333;
}
p, ul {
    margin-bottom: 20px;
}
ul {
    list-style-type: disc;
    padding-left: 20px;
}

.article {
    margin-bottom: 40px;
}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- Bootsrap Bundle Js -->
<script src="../vender/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Jquery Js -->
<script src="../vender/jquery/jquery-3.6.4.min.js"></script>
<!-- AOS Js -->
<script src="../vender/aos/dist/aos.js"></script>
<!-- Custom Js -->
<script src="../js/script.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- Kakao 지도 API 스크립트 로드 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=07c34ef6f56c1983ad614130aef064a5"></script><script charset="UTF-8" src="http://t1.daumcdn.net/mapjsapi/js/main/4.4.19/kakao.js"></script>
<!-- jQuery 라이브러리 로드 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- user-myInfo Js -->
<script src="../js/book-preFindLocation.js"></script>

</div></div><button id="back-to-top" title="Go to top" style="display: none;">Top</button></body></html>
