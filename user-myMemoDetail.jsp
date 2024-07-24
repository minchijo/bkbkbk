<%@page contentType="text/html; charset=UTF-8"%>
<html lang="ko" class="translated-ltr" data-darkreader-proxy-injected="true"><head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../img/pages/icon.png" type="image/png">
    <title>북북북 | 나의 메모</title>
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
	<!-- user-myMemoDetail Css -->
	<link rel="stylesheet" href="../css/user-myMemoDetail.css">
    <link type="text/css" rel="stylesheet" charset="UTF-8" href="https://www.gstatic.com/_/translate_http/_/ss/k=translate_http.tr.26tY-h6gH9w.L.W.O/am=GAY/d=0/rs=AN8SPfrev-A3NvrBP0gNq8zXCqKY7IcBLA/m=el_main_css"><style id="__web-inspector-hide-shortcut-style__">
.__web-inspector-hide-shortcut__, .__web-inspector-hide-shortcut__ *, .__web-inspector-hidebefore-shortcut__::before, .__web-inspector-hideafter-shortcut__::after
{
    visibility: hidden !important;
}
</style></head>
<body data-aos-easing="ease" data-aos-duration="400" data-aos-delay="0">

<div class="bg-elements elements-top-header">
	<!-- navbar -->
	    <div class="elements-nav">
	        <!-- bootom nav -->
			<%@ include file="../header.jsp" %>
	    </div>
    <!-- header -->
   
<!-- Elements Components -->
<div class="py-5" id="elements">
  <div class="container">
    <h1 class="text-center mb-4">나의 메모</h1>
    <div class="book-entry-wrapper mb-4 border rounded p-4">
      <div class="book-entry">
        <div class="book-cover-container">
          <a href="/pages/user-myMemoDetail?memoNum=1">
            <img src="../img/책표지2.jpg" alt="책 표지" class="img-fluid book-cover">
          </a>
        </div>
        <div class="book-info">
          <div class="card-body">
            <h3 class="book-title mb-2">씨우는 심리학 - 한국 사회를 읽는 프레임, 에리히 프롬 다시 읽기</h3>
            <p class="book-author mb-2">김태형 (지은이)</p>
            <div class="book-rating mb-2">
              <span class="star">★★★★★</span>
            </div>
            <p class="book-pages mb-2">400p</p>
            <button class="btn btn-outline-dark btn-sm mb-3">읽은 책</button>
            <div class="reading-time mb-3">
              <p class="mb-1">독서 기간</p>
              <p class="mb-0">시작 2023.09.24 &nbsp;&nbsp; 종료 2023.09.24</p>
            </div>
            <div class="book-preview">
              <p>도서 미리보기</p>
              <p>도서 설명 도서 설명 도서 설명 도서 설명 도서 설명 도서 설명</p>
            </div>
          </div>
        </div>
      </div>
      <div class="memo-section mt-4">
        <div class="d-flex justify-content-between align-items-center mb-3">
          <h5 class="mb-0">메모</h5>
          <div class="btn-group" role="group">
            <input type="radio" class="btn-check" name="sort" id="latest" autocomplete="off" checked>
            <label class="btn btn-outline-secondary btn-sm" for="latest">최신순</label>
            <input type="radio" class="btn-check" name="sort" id="oldest" autocomplete="off">
            <label class="btn btn-outline-secondary btn-sm" for="oldest">오래된 순</label>
          </div>
        </div>
        <div class="memo-item mb-2 p-2 bg-white rounded">
          <p class="mb-1">이깃다</p>
          <small>2024.07.16 19:32</small>
          <div class="mt-2">
            <button class="btn btn-sm btn-outline-primary">수정</button>
            <button class="btn btn-sm btn-outline-danger">삭제</button>
          </div>
        </div>
        <div class="memo-item mb-2 p-2 bg-white rounded">
          <p class="mb-1">싸웠다</p>
          <small>2024.07.16 18:22</small>
          <div class="mt-2">
            <button class="btn btn-sm btn-outline-primary">수정</button>
            <button class="btn btn-sm btn-outline-danger">삭제</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- 푸터 포함 -->
<%@ include file="../footer.jsp" %>

</style>

<!-- Bootsrap Bundle Js -->
<script src="../vender/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Jquery Js -->
<script src="../vender/jquery/jquery-3.6.4.min.js"></script>
<!-- AOS Js -->
<script src="../vender/aos/dist/aos.js"></script>
<!-- Custom Js -->
<script src="../js/script.js"></script><button id="back-to-top" title="Go to top" style="display: block;">Top</button><button id="back-to-top" title="Go to top">Top</button><button id="back-to-top" title="Go to top">Top</button><button id="back-to-top" title="Go to top">Top</button><button id="back-to-top" title="Go to top" style="display: none;">Top</button><button id="back-to-top" title="Go to top" style="display: none;">Top</button><button id="back-to-top" title="Go to top" style="display: none;">Top</button><button id="back-to-top" title="Go to top" style="display: none;">Top</button><button id="back-to-top" title="Go to top" style="display: none;">Top</button><button id="back-to-top" title="Go to top" style="display: none;">Top</button><button id="back-to-top" title="Go to top">Top</button><button id="back-to-top" title="Go to top">Top</button><button id="back-to-top" title="Go to top" style="display: none;">Top</button><button id="back-to-top" title="위로 이동" style="display: block;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">맨 위</font></font></button><div id="goog-gt-tt" class="VIpgJd-yAWNEb-L7lbkb skiptranslate" style="border-radius: 12px; margin: 0 0 0 -23px; padding: 0; font-family: 'Google Sans', Arial, sans-serif;" data-id=""><div id="goog-gt-vt" class="VIpgJd-yAWNEb-hvhgNd"><div class=" VIpgJd-yAWNEb-hvhgNd-l4eHX-i3jM8c"><img src="https://fonts.gstatic.com/s/i/productlogos/translate/v14/24px.svg" width="24" height="24" alt=""></div><div class=" VIpgJd-yAWNEb-hvhgNd-k77Iif-i3jM8c"><div class="VIpgJd-yAWNEb-hvhgNd-IuizWc" dir="ltr">원본 텍스트</div><div id="goog-gt-original-text" class="VIpgJd-yAWNEb-nVMfcd-fmcmS VIpgJd-yAWNEb-hvhgNd-axAV1"></div></div><div class="VIpgJd-yAWNEb-hvhgNd-N7Eqid ltr"><div class="VIpgJd-yAWNEb-hvhgNd-N7Eqid-B7I4Od ltr" dir="ltr"><div class="VIpgJd-yAWNEb-hvhgNd-UTujCb">번역 평가</div><div class="VIpgJd-yAWNEb-hvhgNd-eO9mKe">보내주신 의견은 Google 번역을 개선하는 데 사용됩니다.</div></div><div class="VIpgJd-yAWNEb-hvhgNd-xgov5 ltr"><button id="goog-gt-thumbUpButton" type="button" class="VIpgJd-yAWNEb-hvhgNd-bgm6sf" title="번역 품질 좋음" aria-label="번역 품질 좋음" aria-pressed="false"><span id="goog-gt-thumbUpIcon"><svg width="24" height="24" viewBox="0 0 24 24" focusable="false" class="VIpgJd-yAWNEb-hvhgNd-THI6Vb NMm5M"><path d="M21 7h-6.31l.95-4.57.03-.32c0-.41-.17-.79-.44-1.06L14.17 0S7.08 6.85 7 7H2v13h16c.83 0 1.54-.5 1.84-1.22l3.02-7.05c.09-.23.14-.47.14-.73V9c0-1.1-.9-2-2-2zM7 18H4V9h3v9zm14-7l-3 7H9V8l4.34-4.34L12 9h9v2z"></path></svg></span><span id="goog-gt-thumbUpIconFilled"><svg width="24" height="24" viewBox="0 0 24 24" focusable="false" class="VIpgJd-yAWNEb-hvhgNd-THI6Vb NMm5M"><path d="M21 7h-6.31l.95-4.57.03-.32c0-.41-.17-.79-.44-1.06L14.17 0S7.08 6.85 7 7v13h11c.83 0 1.54-.5 1.84-1.22l3.02-7.05c.09-.23.14-.47.14-.73V9c0-1.1-.9-2-2-2zM5 7H1v13h4V7z"></path></svg></span></button><button id="goog-gt-thumbDownButton" type="button" class="VIpgJd-yAWNEb-hvhgNd-bgm6sf" title="번역 품질 좋지 않음" aria-label="번역 품질 좋지 않음" aria-pressed="false"><span id="goog-gt-thumbDownIcon"><svg width="24" height="24" viewBox="0 0 24 24" focusable="false" class="VIpgJd-yAWNEb-hvhgNd-THI6Vb NMm5M"><path d="M3 17h6.31l-.95 4.57-.03.32c0 .41.17.79.44 1.06L9.83 24s7.09-6.85 7.17-7h5V4H6c-.83 0-1.54.5-1.84 1.22l-3.02 7.05c-.09.23-.14.47-.14.73v2c0 1.1.9 2 2 2zM17 6h3v9h-3V6zM3 13l3-7h9v10l-4.34 4.34L12 15H3v-2z"></path></svg></span><span id="goog-gt-thumbDownIconFilled"><svg width="24" height="24" viewBox="0 0 24 24" focusable="false" class="VIpgJd-yAWNEb-hvhgNd-THI6Vb NMm5M"><path d="M3 17h6.31l-.95 4.57-.03.32c0 .41.17.79.44 1.06L9.83 24s7.09-6.85 7.17-7V4H6c-.83 0-1.54.5-1.84 1.22l-3.02 7.05c-.09.23-.14.47-.14.73v2c0 1.1.9 2 2 2zm16 0h4V4h-4v13z"></path></svg></span></button></div></div><div id="goog-gt-votingHiddenPane" class="VIpgJd-yAWNEb-hvhgNd-aXYTce"><form id="goog-gt-votingForm" action="//translate.googleapis.com/translate_voting?client=te_lib" method="post" target="votingFrame" class="VIpgJd-yAWNEb-hvhgNd-aXYTce"><input type="text" name="sl" id="goog-gt-votingInputSrcLang"><input type="text" name="tl" id="goog-gt-votingInputTrgLang"><input type="text" name="query" id="goog-gt-votingInputSrcText"><input type="text" name="gtrans" id="goog-gt-votingInputTrgText"><input type="text" name="vote" id="goog-gt-votingInputVote"></form><iframe name="votingFrame" frameborder="0"></iframe></div></div></div>
<!-- user-myMemoDetail Js -->
<script src="../js/user-myMemoDetail.js"></script>

</body>
</html>