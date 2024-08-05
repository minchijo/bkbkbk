<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="../img/pages/icon.png" type="image/png">
        <title>북북북 | 회원가입</title>
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
		<style>
								.form-control.bg-dark {
								background-color: #f0f0f0 !important;
								}
								.form-control.bg-grey {
								background-color: #f0f0f0 !important;
								}
								.form-control.bg-light {
								background-color: #f0f0f0 !important;
								}
								
								.booklogo {
									
									width: 300px;
									height: 50px;
									
								}
								
							
								.terms-link {
								    color: #6c757d; 
								    text-decoration: none;
								    transition: color 0.3s ease; 
								}

								.terms-link:hover {
								    color: #0056b3; 
								    
								}
								
								.container-custom {
								       max-width: 800px; /* 원하는 가로 길이 */
								       padding: 20px; /* 패딩 추가 */
								   }

								   .form-label {
								       text-align: left;
								   }
								   
								
								.bg-video {
								  position: absolute;
								  top: 0;
								  left: 0;
								  height: 100%;
								  width: 100%;
								  z-index: -1;
								  opacity: 0.15;
								}

								.bg-video__content {
								  height: 100%;
								  width: 100%;
								  object-fit: cover;
								}   
								.bg-elements{
									height:55em;
								}
								
				</style>
    </head>
    <body>
        <div class="bg-elements elements-top-header position-relative">
            <!-- navbar -->
            <div class="elements-nav">
                <!-- bootom nav -->
				<!--배경 영상-->
				<div class="bg-video">
						<video class="bg-video__content" autoplay muted loop>
						<source src="../img/books.mp4" type="video/mp4" />
						</video>
				</div>				
                <%@ include file="../header.jsp" %>
                     
                <div class="container container-custom d-flex justify-content-center my-5">
                    <div class="row justify-content-center w-100">
                        <div class="col-lg-12 col-12 py-3" id="signupBox">
                            <div class="p-5 bg-white rounded-4 shadow">
                                <h2 class="fw-bold mb-4" style="text-align: center;">회원가입</h2>
                        
                                <form action="/register" method="post" id="formSignin" class="d-grid gap-3 input-group-lg">
                                    <div class="row align-items-center">
                                        <div class="col-3 text-end">
                                            <label for="signupEmail" class="my-auto">이메일:</label>
                                        </div>
                                        <div class="col-9">
                                            <input type="email" name="userId" class="form-control bg-dark bg-opacity-50 border-0 px-3 py-2" id="signupEmail" aria-describedby="emailHelp" placeholder="이메일">
                                            <small id="emailFeedback" class="form-text"></small>
                                        </div>
                                    </div>

                                    <div class="row align-items-center">
                                        <div class="col-3 text-end">
                                            <label for="signupPassword" class="my-auto">비밀번호:</label>
                                        </div>
                                        <div class="col-9">
                                            <input type="password" name="password" class="form-control bg-grey border-0 px-3 py-2" id="signupPassword" placeholder="비밀번호">
                                        </div>
                                    </div>

                                    <div class="row align-items-center">
                                        <div class="col-3 text-end">
                                            <label for="signupPasswordCheck" class="my-auto">비밀번호 확인:</label>
                                        </div>
                                        <div class="col-9">
                                            <input type="password" class="form-control bg-dark border-0 px-3 py-2" id="signupPasswordCheck" placeholder="비밀번호 확인">
                                            <small id="passwordFeedback" class="form-text"></small>
                                        </div>
                                    </div>

                                    <div class="row align-items-center">
                                        <div class="col-3 text-end">
                                            <label for="signupName" class="my-auto">이름:</label>
                                        </div>
                                        <div class="col-9">
                                            <input type="text" name="userName" class="form-control bg-dark border-0 px-3 py-2" id="signupName" aria-describedby="nameHelp" placeholder="이름">
                                        </div>
                                    </div>

                                    <div class="row align-items-center">
                                        <div class="col-3 text-end">
                                            <label for="signupTel" class="my-auto">연락처:</label>
                                        </div>
                                        <div class="col-9">
                                            <input type="tel" name="userTel" class="form-control bg-dark border-0 px-3 py-2" id="signupTel" aria-describedby="nameHelp" placeholder="연락처">
                                        </div>
                                    </div>

                                    <div class="row align-items-center">
                                        <div class="col-3 text-end">
                                            <label class="my-auto">성별:</label>
                                        </div>
                                        <div class="col-9">
                                            <div class="d-flex gap-4">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="gender" id="genderMale" value="M">
                                                    <label class="form-check-label" for="genderMale">남자</label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="gender" id="genderFemale" value="F">
                                                    <label class="form-check-label" for="genderFemale">여자</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row align-items-center">
                                        <div class="col-3 text-end">
                                            <label for="signupBirthdate" class="my-auto">생년월일:</label>
                                        </div>
                                        <div class="col-9">
                                            <input type="date" name="birthDate" class="form-control bg-light border-0 px-3 py-2" id="signupBirthdate" aria-describedby="birthdateHelp" placeholder="생년월일">
                                        </div>
                                    </div>

                                    <div class="row align-items-center">
                                        <div class="col-3 text-end">
                                            <label class="my-auto">이용약관:</label>
                                        </div>
                                        <div class="col-9">
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input" id="exampleCheck1" disabled required>
                                                <label class="form-check-label small" for="exampleCheck1">서비스 이용약관에 동의합니다.</label>
                                                <a href="#" data-bs-toggle="modal" data-bs-target="#termsModal" class="terms-link">&nbsp;&nbsp;&nbsp;이용약관 바로가기</a>
                                            </div>
                                        </div>
                                    </div>

                                    <button type="submit" class="btn btn-purple btn-theme w-100" id="btnSubmit">회원가입</button>
                                </form>
                            
                                <div class="pt-3">
                                    <!-- or line pending -->
                                    <div class="d-flex align-items-center justify-content-between">
                                        <hr class="w-25">
                                        <div class="text-muted small">BOOKBOOKBOOK</div>
                                        <hr class="w-25">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Terms Modal -->
        <div class="modal fade" id="termsModal" tabindex="-1" aria-labelledby="termsModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="termsModalLabel">이용약관</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body" id="termsContent" style="max-height: 300px; overflow-y: auto;">
                        <%@ include file="user-signupTerms.jsp" %>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                    </div>
                </div>
            </div>
        </div>
      
      <!-- Bootsrap Bundle Js -->
              <script src="../vender/bootstrap/js/bootstrap.bundle.min.js"></script>
              <!-- Jquery Js -->
              <script src="../vender/jquery/jquery-3.6.4.min.js"></script>
              <!-- AOS Js -->
              <script src="../vender/aos/dist/aos.js"></script>
              <!-- Custom Js -->
              <script src="../js/script.js"></script>
            
            <script>
            <!-- 회원가입 -->
			$(document).ready(function() {
			    var termsContent = document.getElementById('termsContent');
			    termsContent.addEventListener('scroll', function() {
			        if (termsContent.scrollTop + termsContent.clientHeight >= termsContent.scrollHeight) {
			            $('#exampleCheck1').prop('disabled', false);
			        }
			    });

			    // 이름 입력란 유효성 검사
			    $('#signupName').on('input', function() {
			        this.value = this.value.replace(/[^가-힣a-zA-Z\s]/g, '');
			    });

			    // 이메일 유효성 검사
			    function isValidEmail(email) {
			        var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
			        return emailRegex.test(email);
			    }

			    $('#signupEmail').on('blur', function() {
			        var email = $(this).val();
			        if (email && !isValidEmail(email)) {
			            $('#emailFeedback').text('올바른 이메일 형식이 아닙니다.').css('color', 'red');
			        } else if (email) {
			            $.ajax({
			                url: '/check-email',
			                type: 'POST',
			                data: { email: email },
			                success: function(response) {
			                    if(response === 'duplicate') {
			                        $('#emailFeedback').text('중복된 이메일입니다.').css('color', 'red');
			                    } else {
			                        $('#emailFeedback').text('사용 가능한 이메일입니다.').css('color', 'green');
			                    }
			                },
			                error: function() {
			                    $('#emailFeedback').text('이메일 확인 중 오류가 발생했습니다.').css('color', 'red');
			                }
			            });
			        } else {
			            $('#emailFeedback').text('');
			        }
			    });

			    // 전화번호 유효성 검사
			    $('#signupTel').on('input', function() {
			        var phone = $(this).val().replace(/[^0-9]/g, '');
			        if (phone.length > 3 && phone.length <= 7) {
			            phone = phone.slice(0, 3) + "-" + phone.slice(3);
			        } else if (phone.length > 7) {
			            phone = phone.slice(0, 3) + "-" + phone.slice(3, 7) + "-" + phone.slice(7, 11);
			        }
			        $(this).val(phone);
			    });

			    // 생년월일 유효성 검사
			    $('#signupBirthdate').on('change', function() {
			        var selectedDate = new Date($(this).val());
			        var today = new Date();
			        
			        if (selectedDate > today) {
			            alert('미래 날짜는 선택할 수 없습니다.');
			            $(this).val('');
			        }
			    });

			    // 비밀번호 / 비밀번호 확인 실시간 판별
			    function checkPasswordMatch() {
			        var password = $('#signupPassword').val();
			        var confirmPassword = $('#signupPasswordCheck').val();
			        
			        if (password != confirmPassword) {
			            $('#passwordFeedback').text('비밀번호가 일치하지 않습니다.').css('color', 'red');
			        } else {
			            $('#passwordFeedback').text('비밀번호가 일치합니다.').css('color', 'green');
			        }
			    }

			    $('#signupPassword, #signupPasswordCheck').on('keyup', checkPasswordMatch);

			    $('#formSignin').on('submit', function(e) {
			        e.preventDefault(); // 기본 제출 동작을 막습니다.
			        
			        // 유효성 검사
			        var isValid = true;

			        if($('#signupEmail').val() == '' || $('#signupPassword').val() == '' || 
			           $('#signupPasswordCheck').val() == '' || $('#signupName').val() == '' || 
			           $('#signupTel').val() == '' || $('#signupBirthdate').val() == '') {
			            alert('모든 필드를 입력해주세요');
			            isValid = false;
			        }
			        if($('#signupPassword').val() != $('#signupPasswordCheck').val()) {
			            alert('비밀번호와 비밀번호 확인이 서로 일치하지 않습니다.');
			            isValid = false;
			        }
			        if(!$('#exampleCheck1').is(':checked')){
			            alert('[필수] BOOKBOOKBOOK 이용약관에 동의해 주세요.');
			            isValid = false;
			        }
			        if (!isValidEmail($('#signupEmail').val())) {
			            alert('올바른 이메일 주소를 입력해주세요.');
			            isValid = false;
			        }
			        var phoneRegex = /^01\d-\d{3,4}-\d{4}$/;
			        if (!phoneRegex.test($('#signupTel').val())) {
			            alert('올바른 전화번호 형식이 아닙니다.');
			            isValid = false;
			        }

			        if (isValid) {
			            var actionUrl = $(this).attr('action');
			            console.log("AJAX 요청 URL:", actionUrl);
			            
			            // AJAX를 사용한 폼 제출
			            $.ajax({
			                url: actionUrl,
			                type: 'POST',
			                data: JSON.stringify($(this).serializeArray().reduce((obj, item) => (obj[item.name] = item.value, obj), {})),
			                contentType: 'application/json',
			                success: function(response) {
			                    if (response.success) {
			                        window.location.href = '/pages/user-signUpSuccess';
			                    } else {
			                        alert(response.message);
			                    }
			                },
			                error: function(xhr) {
			                    var errorMessage = '회원가입 중 오류가 발생했습니다.';
			                    if (xhr.responseJSON && xhr.responseJSON.message) {
			                        errorMessage = xhr.responseJSON.message;
			                    }
			                    alert(errorMessage);
			                }
			            });
			        }
			    });
			});
            
            </script>
            
            
          </body>
      </html>

