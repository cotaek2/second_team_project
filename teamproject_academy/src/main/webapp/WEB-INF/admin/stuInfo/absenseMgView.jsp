<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 휴복학 관리</title>
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

	<!-- 좌측 nav 바 -->
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
					<h1 class="mt-4">휴복학 관리 상세페이지</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="noticeList.do">학생 정보</a></li>
						<li class="breadcrumb-item active">학생 휴복관 관리</li>
					</ol>

					<div class="card mb-4 white">
						<div class="card-header disNone">휴복학 관리</div>
						<div class="card-body">
							<div
								class="datatable-wrapper datatable-loading no-footer sortable searchable fixed-columns">
								<!-- 테이블 컨테이너 -->
								<div class="datatable-container">
									<!-- 테이블 -->
									<table class="datatable-table">
										<thead>
											<tr>
												<th>학번</th>
												<th>이름</th>
												<th>학과</th>
												<th>신청종류</th>
											</tr>										
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>홍길동</td>
												<td>이젠학과</td>
												<td>휴학</td>
											</tr>
										</tbody>
										<thead>
											<tr>
												<th>신청일자</th>
												<th>처리상태</th>
												<th>처리일자</th>
												<th>승인여부</th>
											</tr>										
										</thead>
										<tbody>
											<tr>
												<td>2024.02.04</td>
												<td>처리대기</td>
												<td>2024.02.06</td>
												<td>승인대기</td>
											</tr>
										</tbody>
										<thead>
											<tr>
												<th colspan="2">신청사유</th>
												<th colspan="2">승인/거부사유</th>
											</tr>										
										</thead>
										<tbody>
											<tr>
												<td colspan="2" rowspan="2"></td>
												<td colspan="2" rowspan="2"><textarea class="datatable-textarea"></textarea></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<!-- 테이블 바텀 -->
							<div class="datatable-bottom">
								<div class="datatable-bottom offset-12">
									<a href="absenseMgList.do" class="btn btn-primary grey right mright">승인</a>
								</div>
								<div class="datatable-bottom ms-auto">
									<a href="absenseMgList.do" class="btn btn-primary grey right mright">거부</a>
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
    <script src="<%=request.getContextPath()%>/resources/share/js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="assets/demo/chart-area-demo.js"></script>
    <script src="assets/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
    <script src="<%=request.getContextPath()%>/resources/share/js/datatables-simple-demo.js"></script>
</body>
</body>
</html>