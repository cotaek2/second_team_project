<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String searchType = request.getParameter("searchType");
	String searchValue = request.getParameter("searchValue");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강신청</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/resources/share/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
<script src="<%=request.getContextPath()%>/resources/share/js/jquery-3.7.1.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/student/js/common.js"></script>
</head>
<body class="sb-nav-fixed">
	<%@ include file="/resources/student/include/navHead.jsp" %>
	<div id="layoutSidenav">
	<%@ include file="/resources/student/include/navLeft.jsp" %>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<h1 class="mt-4">수강신청</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item">수강신청</li>
						<li class="breadcrumb-item active">수강신청</li>
					</ol>

					<div class="card mb-4 white">
						<div class="card-header disNone">수강신청</div>
						<div class="card-body">
							<div class="datatable-wrapper datatable-loading no-footer sortable searchable fixed-columns">
								<div class="datatable-top">
									<div class="right">
									<!-- 검색 -->
										<form action="corReg" method="get" class="datatable-search inline">
											<select class="datatable-selector" name="searchType">
												<option value="1" 
												<%if(searchType != null && searchType.equals("title")) out.print("selected"); %>>
												강의명</option>
												<option value="2" 
												<%if(searchType != null	&& searchType.equals("title")) out.print("selected"); %>>
												교수명</option>
											</select>
											<input class="datatable-input inline wauto"
												placeholder="검색어를 입력하세요" type="text"
												title="Search within table" aria-controls="datatablesSimple"
												value=<%if(searchValue!=null) out.print(searchValue); %>>
											<button class="btn btn-primary inline grey">검색</button>
										</form>
									</div>
								</div>

								<div class="datatable-container">
									<table class="datatable-table checktable">
										<thead>
											<tr>
												<th>번호</th>
												<th>교과목명</th>
												<th>학점</th>
												<th>요일 및 교시(강의실)</th>
												<th>교강사</th>
												<th>신청</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach var="corReg" items="${corRegList }">
											<tr>
												<td>${corReg.lno }</td>
												<td>${corReg.lname }</td>
												<td>${corReg.lcredit }</td>
												<td>${corReg.ltime } ( ${corReg.lroom } )</td>
												<td>${corReg.pname }</td>
												<td>
													<button class="btn btn-primary inline grey" 
													onclick="corRegFn(this,${corReg.lno })">신청</button>
												</td>
											</tr>
										</c:forEach>
										</tbody>
									</table>
								</div>
							</div>

							<div class="datatable-bottom">
								<!-- 페이징 -->
								<nav class="datatable-pagination">
									<ul class="datatable-pagination-list">
										<li class="datatable-pagination-list-item datatable-hidden datatable-disabled">
											<a data-page="1" class="datatable-pagination-list-item-link">‹</a>
										</li>
										<li class="datatable-pagination-list-item datatable-active">
											<a data-page="1" class="datatable-pagination-list-item-link">1</a>
										</li>
										<li class="datatable-pagination-list-item">
											<a data-page="2" class="datatable-pagination-list-item-link">2</a>
										</li>
										<li class="datatable-pagination-list-item">
											<a data-page="2" class="datatable-pagination-list-item-link">›</a>
										</li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</main>
<%@ include file="/resources/student/include/footer.jsp" %>
		</div>
	</div>

</body>
</body>
</html>