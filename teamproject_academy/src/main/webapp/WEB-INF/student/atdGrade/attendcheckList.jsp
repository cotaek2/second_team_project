<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출석확인 목록</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
<link href="<%=request.getContextPath() %>/resources/student/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>

<script src="<%=request.getContextPath() %>/resources/student/js/summernote/summernote-lite.js"></script>
<script src="<%=request.getContextPath() %>/resources/student/js/summernote/lang/summernote-ko-KR.js"></script>

<link href="<%=request.getContextPath() %>/resources/student/css/summernote/summernote-lite.css" rel="stylesheet" >

</head>
<body class="sb-nav-fixed">
    	<!-- 상단 nav 바 -->
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!--로고자리-->
            <a class="navbar-brand ps-3" href="<%=request.getContextPath() %>/student/stuMain.do">이젠대학교</a>
            <!--좌측 nav바 토글(클릭시 없어졌다 있어졌다) -->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- 우측상단 사용자 메뉴-->
	 		<div class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
            	<span class="hello">홍길동 대학생님 안녕하세요  </span>
            </div>
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">로그아웃</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <!-- 좌측 nav 바 -->
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                             <div class="sb-sidenav-menu-heading">학적/수강관리</div>
                              <a class="nav-link" href="<%=request.getContextPath() %>/student/acdCourse/sscheck.do">학적사항 조회</a>
                              <a class="nav-link" href="<%=request.getContextPath() %>/student/acdCourse/absenseApp.do">휴복학 신청</a>
                              <a class="nav-link" href="<%=request.getContextPath() %>/student/acdCourse/subcheck.do">교과목 조회</a>
                              <a class="nav-link" href="<%=request.getContextPath() %>/student/acdCourse/scheduleCheck.do">수강시간표 조회</a>
                              
                              <div class="sb-sidenav-menu-heading">출석/성적관리</div>
                              <a class="nav-link" href="<%=request.getContextPath() %>/student/atdGrade/attendcheckList.do">출결확인</a>
                              <a class="nav-link" href="<%=request.getContextPath() %>/student/atdGrade/cgradeCheck.do">성적조회</a>
                              
                              <div class="sb-sidenav-menu-heading">수강신청</div>
                              <a class="nav-link" href="<%=request.getContextPath() %>/student/corReg/corReg.do">수강신청</a>
                              <a class="nav-link" href="<%=request.getContextPath() %>/student/corReg/cAppCheck.do">수강신청 현황조회</a>
                              
                              <div class="sb-sidenav-menu-heading">마이페이지</div>
                              <a class="nav-link" href="<%=request.getContextPath() %>/student/mypage/myInfoModify.do">비밀번호 변경</a>
                         </div>
                      </div>
                 </nav>
                </div>
            
            
            <!-- 메인페이지 -->
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">출석확인</h1>
                         <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item">출석/성적관리</li>
                            <li class="breadcrumb-item active">출석확인</li>
                        </ol>

                        <div class="card mb-4 white">
                            <div class="card-header disNone">
                                출석확인
                            </div>
                            <div class="card-body">
                            <div class="card mb-4">
                            	<div class="card-body">
                            	<h6 class="bold">출결관리 및 출석점수 관련 규정</h6>
                            	<p>* 각 교과목을 담당하는 교수는 매 수업시간 학생의 출석 및 결석사실을 확인하여 출석부에 기록해야 한다.</p>
                            	<p>* 각 교과목을 담당하는 교수는 수업 시작 후 일정시간이 지난 시점 전후로 지각이나 결석을 판단하는 기준을 정할 수 있으며 해당 기준은 강의계획서 및 학기 초 학생들에게 공지하여야 한다.</p>
                            	<p>* 학기 중 실제 수업시간 수의 4분의 1 이상 결석한 과목에 대하여는 해당 학기의 학업성적을 인정하지 않는다.</p>
                            	<p>&#10003; 관련규정</p>
                            	<p>	- 학칙 제55조(출석의무), 제55조2(출결관리)</p>
                            	<p>	- 수업운영에 관한 규정 제6조(출결관리), 제8조(출석점수)</p>
                            		
                            	</div>
                            </div>
                            <div class="datatable-wrapper datatable-loading no-footer sortable searchable fixed-columns">
                            <!-- 테이블 탑 -->
                            <div class="datatable-top">
                            <!-- 셀렉트 -->
							<!-- 검색 -->
							<div class="right">

							<form action="noticeList.do" method="get" class="datatable-search inline">
							<select class="datatable-selector">
								<option value="1" selected>2024</option>
								<option value="2">2023</option>
							</select>
                			<select class="datatable-selector">
								<option value="1" selected>1학기</option>
								<option value="2">2학기</option>
							</select>
        						<button class="btn btn-primary inline grey">조회</button>
        					</form>
        					</div>
						</div>
						<!-- 테이블 컨테이너 -->
						<div class="datatable-container">
							<!-- 테이블 -->
							<table class="datatable-table">
                                    <thead>
                                        <tr>
                                            <th>번호</th>
                                            <th>과목명</th>
                                            <th>교수명</th>
                                            <th>시간표</th>
                                            <th>강의실</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td><a href="attendcheckView.do">물리화학</a></td>
                                            <td>윤도연</td>
                                            <td>월 2교시</td>
                                            <td>상 101</td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td><a href="attendcheckView.do">물리화학</a></td>
                                            <td>윤도연</td>
                                            <td>월 2교시</td>
                                            <td>상 101</td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td><a href="attendcheckView.do">물리화학</a></td>
                                            <td>윤도연</td>
                                            <td>월 2교시</td>
                                            <td>상 101</td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td><a href="attendcheckView.do">물리화학</a></td>
                                            <td>윤도연</td>
                                            <td>월 2교시</td>
                                            <td>상 101</td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td><a href="attendcheckView.do">물리화학</a></td>
                                            <td>윤도연</td>
                                            <td>월 2교시</td>
                                            <td>상 101</td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td><a href="attendcheckView.do">물리화학</a></td>
                                            <td>윤도연</td>
                                            <td>월 2교시</td>
                                            <td>상 101</td>
                                        </tr>
                                   </tbody>
							</table>

						</div>
                            </div>

                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; 이젠대학교 2023</div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="<%=request.getContextPath() %>/resources/student/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="<%=request.getContextPath() %>/resources/student/js/datatables-simple-demo.js"></script>
    </body>
</html>