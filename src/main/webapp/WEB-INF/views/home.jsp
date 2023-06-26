<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>메인페이지</title>
<!-- JQuery-->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<!-- Bootstrap - CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<!-- Bootstrap - JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<!-- Bootstrap - icon -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css"
	rel="stylesheet">
<!-- Font 기본 : {font-family: 'NanumSquareNeoBold'}-->
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css"
	rel="stylesheet">
<!-- awesome font -icon -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	rel="stylesheet"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- gbn css -->
<link href="${path}/resources/css/gnb.css" rel="stylesheet"
	type="text/css">
<!-- mealCalendar css -->
<link href="${path}/resources/css/mealCalendar.css" rel="stylesheet"
	type="text/css">
<!-- mealCalendar calendar js -->
<script src="${path}/resources/js/aiCalendar_calendar.js"></script>
<style>
* {
	font-family: NanumSquareNeoBold;
	box-sizing: border-box;
}

.container {
	margin-top: 100px;
}

.logoImg {
	animation: rotate_image 20s ease-in-out infinite;
	transform-origin: 50% 50%;
	width: 256px;
	height: 256px;
}

 @keyframes rotate_image{
    100% {
        transform: rotate(360deg);
    }
} 
.selectBox {
	padding: 2rem;
	background-color: #fdeeb39a;
}
</style>
</head>

<body>

	<!-- gnb -->
	<c:import url="commons/gnb.jsp">
	</c:import>
	
	<!-- 로그인한 회원의 아이디를 담을 공간 -->
	<input type="text" value="${sessionScope.code}" id="clientCode" hidden>
	
	<!-- main -->
	<div class="container" style="margin-top: 100px;">
		<div class="spinner-border text-dark" style="display: none;"
			role="status">
			<span class="visually-hidden">Loading...</span>
		</div>
		<div class="main">
			<div
				class="row d-flex justify-content-center mb-3 align-items-center">
				<div class="logoImg d-inline-flex col-12 col-md-4">
					<img src="/resources/img/foodWithPlate2.png" alt="logo" class="img">
				</div>
				<div class="title col-12 col-md-4 text-center  ">
					<h1>쉽고 직관적인 식단관리</h1>
					<h3>AI 식단추천</h3>
					<h5>COOKCOOK</h5>
				</div>
			</div>

			<div class="selectBox">
				<!-- 당일 ~ 7일 -->
				<div class="row d-flex justify-content-center">
					<div class="d-flex justify-content-center col-8">
						<select class="form-select mb-3" name="dayTime">
							<option value="1" selected>당일</option>
							<option value="2">2일</option>
							<option value="3">3일</option>
							<option value="4">4일</option>
							<option value="5">5일</option>
							<option value="6">6일</option>
							<option value="7">7일</option>
						</select>
					</div>
				</div>


				<!-- 아침, 점심, 저녁 -->
				<div class="d-flex justify-content-center">
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="checkbox" id="breakfast"
							name="time" value="아침"> <label class="form-check-label"
							for="breakfast">아침</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="checkbox" id="lunch"
							name="time" value="점심"> <label class="form-check-label"
							for="lunch">점심</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="checkbox" id="dinner"
							name="time" value="저녁"> <label class="form-check-label"
							for="dinner">저녁</label>
					</div>
				</div>
				<!-- 비건, 다이어트 -->
				<div class="d-flex justify-content-center">
					<p class="mx-3">식단 유형 :</p>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" id="general"
							name="special" value="1000" checked> <label
							class="form-check-label" for="general">없음</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" id="vigan"
							name="special" value="1001"> <label
							class="form-check-label" for="vigan">비건</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" id="diet"
							name="special" value="1002"> <label
							class="form-check-label" for="diet">다이어트</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" id="viganDiet"
							name="special" value="1003"> <label
							class="form-check-label" for="viganDiet">비건 다이어트</label>
					</div>
				</div>
					<div class="d-flex justify-content-center">
						<button type="button" id="sendBtn"
							class="btn btn-success btn-lg btn-rounded">식단생성</button>
					</div>
			</div>

			<div class="mealCalender">
				<div id="calendar">
					<table class="c-header">
						<tbody>
							<tr>
								<td class="c-header-left" style="text-align: left;"><span
									class="c-header-title">
										<h3 class="m-0 d-inline" id="month-year">June 2023</h3>
								</span></td>
								<td class="c-header-center"></td>
								<td class="c-header-right d-grid justify-content-end h-100">
									<button id="aiMealAddBtn" class="btn btn-success btn-rounded">저장하기</button>
								</td>
							</tr>
						</tbody>
					</table>
					<table class="c-body-large d-none d-xl-table">
						<colgroup>
							<col style="width: 8%;" />
							<col />
							<col />
							<col />
							<col />
							<col />
							<col />
							<col />
						</colgroup>
						<thead>
							<tr>
								<th class="day-header-blank"></th>
								<th class="day-header">Day 1</th>
								<th class="day-header">Day 2</th>
								<th class="day-header">Day 3</th>
								<th class="day-header">Day 4</th>
								<th class="day-header">Day 5</th>
								<th class="day-header">Day 6</th>
								<th class="day-header">Day 7</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th class="time-header breakfast">아침</th>
								<td class="day1 breakfast">
									<div class="meal-box"></div>
								</td>
								<td class="day2 breakfast">
									<div class="meal-box"></div>
								</td>
								<td class="day3 breakfast">
									<div class="meal-box"></div>
								</td>
								<td class="day4 breakfast">
									<div class="meal-box"></div>
								</td>
								<td class="day5 breakfast">
									<div class="meal-box"></div>
								</td>
								<td class="day6 breakfast">
									<div class="meal-box"></div>
								</td>
								<td class="day7 breakfast">
									<div class="meal-box"></div>
								</td>
							</tr>
							<tr>
								<th class="time-header lunch">점심</th>
								<td class="day1 lunch">
									<div class="meal-box"></div>
								</td>
								<td class="day2 lunch">
									<div class="meal-box"></div>
								</td>
								<td class="day3 lunch">
									<div class="meal-box"></div>
								</td>
								<td class="day4 lunch">
									<div class="meal-box"></div>
								</td>
								<td class="day5 lunch">
									<div class="meal-box"></div>
								</td>
								<td class="day6 lunch">
									<div class="meal-box"></div>
								</td>
								<td class="day7 lunch">
									<div class="meal-box"></div>
								</td>
							</tr>
							<tr>
								<th class="time-header dinner">저녁</th>
								<td class="day1 dinner">
									<div class="meal-box"></div>
								</td>
								<td class="day2 dinner">
									<div class="meal-box"></div>
								</td>
								<td class="day3 dinner">
									<div class="meal-box"></div>
								</td>
								<td class="day4 dinner">
									<div class="meal-box"></div>
								</td>
								<td class="day5 dinner">
									<div class="meal-box"></div>
								</td>
								<td class="day6 dinner">
									<div class="meal-box"></div>
								</td>
								<td class="day7 dinner">
									<div class="meal-box"></div>
								</td>
							</tr>
						</tbody>
					</table>
					<table class="c-body-small d-table d-xl-none">
						<colgroup>
							<col style="width: 10%;">
							<col style="width: 30%; max-width: 30%;">
							<col style="width: 30%; max-width: 30%;">
							<col style="width: 30%; max-width: 30%;">
						</colgroup>
						<thead>
							<tr>
								<th class="time-header-blank"></th>
								<th class="time-header dinner">아침</th>
								<th class="time-header dinner">점심</th>
								<th class="time-header dinner">저녁</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th class="day-header">Day 1</th>
								<td class="day1 breakfast">
									<div class="meal-box" data-bs-toggle="modal"
										data-bs-target="#mealModalToggle"></div>
								</td>
								<td class="day1 lunch">
									<div class="meal-box"></div>
								</td>
								<td class="day1 dinner">
									<div class="meal-box"></div>
								</td>
							</tr>
							<tr>
								<th class="day-header">Day 2</th>
								<td class="day2 breakfast">
									<div class="meal-box"></div>
								</td>
								<td class="day2 lunch">
									<div class="meal-box"></div>
								</td>
								<td class="day2 dinner">
									<div class="meal-box"></div>
								</td>
							</tr>
							<tr>
								<th class="day-header">Day 3</th>
								<td class="day3 breakfast">
									<div class="meal-box"></div>
								</td>
								<td class="day3 lunch">
									<div class="meal-box"></div>
								</td>
								<td class="day3 dinner">
									<div class="meal-box"></div>
								</td>
							</tr>
							<tr>
								<th class="day-header">Day 4</th>
								<td class="day4 breakfast">
									<div class="meal-box"></div>
								</td>
								<td class="day4 lunch">
									<div class="meal-box"></div>
								</td>
								<td class="day4 dinner">
									<div class="meal-box"></div>
								</td>
							</tr>
							<tr>
								<th class="day-header">Day 5</th>
								<td class="day5 breakfast">
									<div class="meal-box"></div>
								</td>
								<td class="day5 lunch">
									<div class="meal-box"></div>
								</td>
								<td class="day5 dinner">
									<div class="meal-box"></div>
								</td>
							</tr>
							<tr>
								<th class="day-header">Day 6</th>
								<td class="day6 breakfast">
									<div class="meal-box"></div>
								</td>
								<td class="day6 lunch">
									<div class="meal-box"></div>
								</td>
								<td class="day6 dinner">
									<div class="meal-box"></div>
								</td>
							</tr>
							<tr>
								<th class="day-header">Day 7</th>
								<td class="day7 breakfast">
									<div class="meal-box"></div>
								</td>
								<td class="day7 lunch">
									<div class="meal-box"></div>
								</td>
								<td class="day7 dinner">
									<div class="meal-box"></div>
								</td>
							</tr>
						</tbody>
					</table>

					<!-- 식단 수정 창 -->
					<div class="modal fade" id="mealModalToggle" aria-hidden="true"
						aria-labelledby="mealModalToggleLabel" tabindex="-1">
						<div class="modal-dialog modal-dialog-centered">
							<div class="modal-content">
								<div class="modal-header">
									<h1 class="modal-title fs-5" id="mealModalToggleLabel">식단
										수정하기</h1>
									<button type="button" id="closeModal" class="btn-close"
										data-bs-dismiss="modal" aria-label="Close"></button>
								</div>
								<div class="modal-body">
									<div
										class="btnBox-mealList mx-2 mb-3 d-flex justify-content-between">
										<div class="btnLeft-mealList">
											<button type="button" id="delete-meals"
												class="btn btn-secondary">모두삭제</button>
										</div>
										<div class="btnRight-mealList">
											<button type="button" id="eatingOut" class="btn btn-success">외식</button>
											<button type="button" id="delivery" class="btn btn-success">배달</button>
										</div>
									</div>
									<div class="insertBox m-2">
										<div class="row">
											<div class="col-9" style="padding-right: 0;">
												<input type="text" class="form-control meal-name m-0" onkeyup="aiMealChange(this)" onkeydown="aiMealChange(this)"
													placeholder="요리명 입력">
											</div>
											<div class="col-3">
												<button class="btn btn-success w-100 toSearch"
													data-bs-target="#mealModalToggle2" data-bs-toggle="modal">찾아보기</button>
											</div>
										</div>
									</div>
									<div class="insertBox m-2">
										<div class="row">
											<div class="col-9" style="padding-right: 0;">
												<input type="text" class="form-control meal-name m-0" onkeyup="aiMealChange(this)" onkeydown="aiMealChange(this)"
													placeholder="요리명 입력">
											</div>
											<div class="col-3">
												<button class="btn btn-success w-100 toSearch"
													data-bs-target="#mealModalToggle2" data-bs-toggle="modal">찾아보기</button>
											</div>
										</div>
									</div>
									<div class="insertBox m-2">
										<div class="row">
											<div class="col-9" style="padding-right: 0;">
												<input type="text" class="form-control meal-name m-0" onkeyup="aiMealChange(this)" onkeydown="aiMealChange(this)"
													placeholder="요리명 입력">
											</div>
											<div class="col-3">
												<button class="btn btn-success w-100 toSearch"
													data-bs-target="#mealModalToggle2" data-bs-toggle="modal">찾아보기</button>
											</div>
										</div>
									</div>
									<div class="insertBox m-2">
										<div class="row">
											<div class="col-9" style="padding-right: 0;">
												<input type="text" class="form-control meal-name m-0"onkeyup="aiMealChange(this)" onkeydown="aiMealChange(this)"
													placeholder="요리명 입력">
											</div>
											<div class="col-3">
												<button class="btn btn-success w-100 toSearch"
													data-bs-target="#mealModalToggle2" data-bs-toggle="modal">찾아보기</button>
											</div>
										</div>
									</div>
									<div class="insertBox m-2">
										<div class="row">
											<div class="col-9" style="padding-right: 0;">
												<input type="text" class="form-control meal-name m-0" onkeyup="aiMealChange(this)" onkeydown="aiMealChange(this)"
													placeholder="요리명 입력">
											</div>
											<div class="col-3">
												<button class="btn btn-success w-100 toSearch"
													data-bs-target="#mealModalToggle2" data-bs-toggle="modal">찾아보기</button>
											</div>
										</div>
									</div>
								</div>
								<div class="modal-footer mx-2">
									<button type="button" id="saveMeal" class="btn btn-success">저장하기</button>
								</div>
							</div>
						</div>
					</div>
					<div class="modal fade" id="mealModalToggle2" aria-hidden="true"
						aria-labelledby="mealModalToggleLabel2" tabindex="-1">
						<div class="modal-dialog modal-dialog-centered">
							<div class="modal-content">
								<div class="modal-header">
									<h1 class="modal-title fs-5" id="mealModalToggleLabel2">표준
										음식 목록</h1>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">
									<div class="searchBox-mealList">
										<form class="d-flex" role="search">
											<input class="form-control me-2" type="search"
												placeholder="요리명으로 검색" aria-label="Search">
											<button class="btn btn-outline-success" type="submit">search</button>
										</form>
									</div>
									<div class="standard-mealList">
										<div class="list-group mealListGroup">
											<button type="button"
												class="list-group-item list-group-item-action standard-meal">Menu
												1</button>
											<button type="button"
												class="list-group-item list-group-item-action standard-meal">Menu
												2</button>
											<button type="button"
												class="list-group-item list-group-item-action standard-meal">Menu
												3</button>
											<button type="button"
												class="list-group-item list-group-item-action standard-meal">Menu
												4</button>
											<button type="button"
												class="list-group-item list-group-item-action standard-meal">Menu
												5</button>
											<button type="button"
												class="list-group-item list-group-item-action standard-meal">Menu
												6</button>
										</div>
									</div>
								</div>
								<div class="modal-footer">
									<button id="toFirstModal" class="btn btn-success"
										data-bs-target="#mealModalToggle" data-bs-toggle="modal">돌아가기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
<!-- aiCalendar meal js -->
<script src="${path}/resources/js/aiCalendar_meal.js"></script>
<!-- aiCalendar drag js -->
<script src="${path}/resources/js/aiCalendar_drag.js"></script>
<script type="text/javascript">

			let timeArr = [];
			let timeArrLength;
			let aiMealArr = [];
			let timeStr = "";
			let special;
			let dayTime;
			let todate;

			function dateFormat(date) {
				let month = date.getMonth() + 1;
				let day = date.getDate();
				let hour = date.getHours();

				month = month >= 10 ? month : '0' + month;
				day = day >= 10 ? day : '0' + day;
				hour = hour >= 10 ? hour : '0' + hour;

				return date.getFullYear() + '-' + month + '-' + day;
			}

			function dateAdd(date, addDays) {
				let today = new Date();
				date.setDate(today.getDate() + addDays);
				return dateFormat(date);
			}

			$("#sendBtn").on("click", function () {
				
				// 일단 식단생성 버튼 누르면 모든내용 삭제
				$(".meal-box").html("");
				
				// 로그인시 실행 추가 
				let clientCode = $("#clientCode").val();
				if(!clientCode){
					alert("일반회원만 사용할 수 있는 기능입니다. 일반회원으로 로그인해주세요");
					//return false;
				}
				timeArr = [];
				$("input[type=checkbox][name=time]:checked").each(function (i) {
					timeArr.push($(this).val());
				});
				timeStr = timeArr.join(',');
				timeArrLength = timeArr.length;

				special = $("input[name=special]:checked").val();
				dayTime = $("select[name=dayTime]").val();

				// 아점저 선택안하면 생성 금지
				if(timeArrLength == 0){
					alert("아침, 점심, 저녁중 반드시 하나이상은 선택하셔야 합니다.");
					return false;
				}
				$.ajax({
					url: "/meal/aiMeal",
					type: "post",
					data: {
						dayTime: dayTime,
						special: special,
						timeStr: timeStr
					},
					beforeSend: function () {
						$(".spinner-border").css({
							"display": "block"
						});
						$(".main").css({
							"display": "none"
						});
					},
					complete: function () {
						$(".spinner-border").css({
							"display": "none"
						});
						$(".main").css({
							"display": "block"
						});
					}
				}).done(function (resp) {
					// resp List<MealDTO> 로 저장하는 함수 만들기?
					console.log(resp);
					
					aiMealAdd(resp);
					aiMealPrint(resp);

					alert("생성 성공~!");
				});
			});
			
			// 식단 저장 
			$("#aiMealAddBtn").on("click", function(){
				
				$.ajax({
				    type: 'POST',
				    url: '/meal/addAiMeal',
				    data: JSON.stringify(aiMealArr),
				    contentType: 'application/json',
				    success: function(response) {
				        console.log(response);
				    },
				    error: function(error) {
				        console.log(error);
				    }
				});
			});
			

			
			
			
		</script>

</html>