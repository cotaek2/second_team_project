<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적관리</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/resources/share/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<!-- 상단 nav 바 -->
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!--로고자리-->
            <a class="navbar-brand ps-3"
			href="<%=request.getContextPath()%>/admin/admMain.do">이젠대학교</a>
            <!--좌측 nav바 토글(클릭시 없어졌다 있어졌다) -->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- 우측상단 사용자 메뉴-->
	 		<div class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
            	<span class="hello">홍길동 관리자님 안녕하세요  </span>
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


	<!-- 좌측 nav 바~푸터까지 Start -->
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">공지사항</div>
						<a class="nav-link" href="<%=request.getContextPath()%>/admin/notice/noticeList.do">공지사항 관리</a>
						<div class="sb-sidenav-menu-heading">사용자 관리</div>
						<a class="nav-link" href="<%=request.getContextPath()%>/admin/userManage/stuUserMgList.do">학생 관리</a>
						<a class="nav-link" href="<%=request.getContextPath()%>/admin/userManage/profUserMgList.do">교수 관리</a>
						
						<div class="sb-sidenav-menu-heading">학생 정보</div>
						<a class="nav-link" href="<%=request.getContextPath()%>/admin/stuInfo/gradeMgList.do">학생 성적 관리</a>
						<a class="nav-link" href="<%=request.getContextPath()%>/admin/stuInfo/attendMgList.do">학생 출결 관리</a>
						<a class="nav-link" href="<%=request.getContextPath()%>/admin/stuInfo/absenseMgList.do">학생 휴복학 관리</a>
						
						<div class="sb-sidenav-menu-heading">강의 관리</div>
						<a class="nav-link" href="<%=request.getContextPath()%>/admin/course/courMgList.do">강의 관리</a>
						<a class="nav-link" href="<%=request.getContextPath()%>/admin/course/courseRegList.do">수강신청 열기/닫기</a>
						</div>
				</div>
			</nav>
		</div>
		
		<!-- 메인페이지 -->
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<h1 class="mt-4">성적 관리</h1>
					<div class="card mb-4 white">
						<div class="card-header disNone">성적 관리</div>
						<div class="card-body">
							<div
								class="datatable-wrapper datatable-loading no-footer sortable searchable fixed-columns">
								<!-- 테이블 탑 -->
								<div class="datatable-top">
									<!-- 셀렉트 -->

									<!-- 검색 -->
									<div class="right">

										<form action="noticeList.do" method="get"
											class="datatable-search inline">
											<select class="datatable-selector">
												<option value="1" selected>모든 강의</option>
												<option value="2">진행중인 강의</option>
												<option value="3">지난 강의</option>
											</select> 
											<input class="datatable-input inline wauto" placeholder="검색어를 입력하세요" type="search"
												title="Search within table" aria-controls="datatablesSimple">
											<button class="btn btn-primary inline grey">검색</button>
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
												<th>강의명</th>
												<th>강의년도</th>
												<th>강의학기</th>
												<th>강의실</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td><a href="gradeMgView.do">물리화학</a></td>
												<td>2022년</td>
												<td>1학기</td>
												<td>상 101</td>
											</tr>
											<tr>
												<td>2</td>
												<td><a href="gradeMgView.do">물리화학</a></td>
												<td>2022년</td>
												<td>1학기</td>
												<td>상 101</td>
											</tr>
											<tr>
												<td>3</td>
												<td><a href="gradeMgView.do">물리화학</a></td>
												<td>2022년</td>
												<td>1학기</td>
												<td>상 101</td>
											</tr>
											<tr>
												<td>4</td>
												<td><a href="gradeMgView.do">물리화학</a></td>
												<td>2022년</td>
												<td>1학기</td>
												<td>상 101</td>
											</tr>
											<tr>
												<td>5</td>
												<td><a href="gradeMgView.do">물리화학</a></td>
												<td>2022년</td>
												<td>1학기</td>
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
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; 이젠대학교 2023</div>
					</div>
				</div>
			</footer>
		</div>
		
		
	</div>
	<!-- 좌측 nav 바~푸터까지 END -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="<%=request.getContextPath()%>/resources/share/js/scripts.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<script src="<%=request.getContextPath()%>/resources/share/assets/demo/chart-area-demo.js"></script>
	<script src="<%=request.getContextPath()%>/resources/share/assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
	<script src="<%=request.getContextPath()%>/resources/share/js/datatables-simple-demo.js"></script>
</body>
</html>