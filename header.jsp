<%@ page language="java" 
contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
												          <input type="text" class="form-control border-0 py-3 px-4" placeholder="책을 검색해 보세요!" aria-label="Enter your query" name="query" required>
												          <input type="image" src="../img/searchIcon.png" class="search-button" alt="검색하기" id="app">
												      </div>
												  </form>
											  
											  
								               <div class="d-flex align-items-center">
								                   <c:choose>
								                       <c:when test="${not empty sessionScope.userId}">
								                           <span class="me-3 text-white">${sessionScope.userName}님 환영합니다!</span>
								                           <a href="${pageContext.request.contextPath}/logout" class="btn btn-purple rounded-pill btn-theme">로그아웃</a>
								                       </c:when>
								                       <c:otherwise>
								                           <a href="${pageContext.request.contextPath}/pages/login" class="btn btn-purple rounded-pill btn-theme">로그인</a>
								                       </c:otherwise>
								                   </c:choose>
								               </div>
								           </div>
								       </div>
								   </nav>