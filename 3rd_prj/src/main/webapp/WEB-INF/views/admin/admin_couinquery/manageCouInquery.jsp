<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
<jsp:include page="../admin_include/include_head.jsp"></jsp:include>
<!-- Custom styles for this page -->
<link href="http://localhost/daitdayoung/common/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<title>강좌문의</title>
<style type="text/css">
	.table th:nth-child(1) {
		width: 50px; /* 첫 번째 열의 너비 설정 */
	}
	.table th:nth-child(2) {
		width: 50px; /* 첫 번째 열의 너비 설정 */
	}
	.table th:nth-child(3) {
		width: 700px; /* 첫 번째 열의 너비 설정 */
	}
	.table th:nth-child(4) {
		width: 300px; /* 첫 번째 열의 너비 설정 */
	}
	.table th:nth-child(5) {
		width: 100px; /* 첫 번째 열의 너비 설정 */
	}
	.table th:nth-child(6) {
		width: 100px; /* 첫 번째 열의 너비 설정 */
	}
	.table th:nth-child(7) {
		width: 100px; /* 첫 번째 열의 너비 설정 */
	}
</style>
<script type="text/javascript">
$(function(){
	$("#ciType").change(function(){
		var data=$("#ciType").val();
		  // AJAX 요청을 수행
        $.ajax({
            url: "showCouInq.do",
            type: "GET", // POST 방식을 사용해 데이터를 서버로 보냅니다.
            data: "citCode="+data,
            dataType: "json",
            error: function(xhr){
                alert("서버에서 문제가 발생하였습니다.");
                console.log(xhr.status);
            },
            success: function(jsonObj){
            	var tbody="<tr>"
            	$.each(jsonObj.jsonArr,function(i, jsonInq ){
                	var ciAnswer = "${ not empty jsonInq.ciAnswer?'Y':'N'}";
                	tbody+="<td>"+(i+1)+"</td>";
            		tbody+="<td>"+jsonInq.citName+"</td>";
            		tbody+="<td>"+
            				"<a href='detailCouInquery.do?ciCode="+
            				jsonInq.ciCode+
            				"'>"+
            				jsonInq.ciTitle +
            				"</a></td>";
            		tbody+=	"<td>"+jsonInq.couName+"</td>";	
            		tbody+=	"<td>"+jsonInq.uiId+"</td>";	
            		tbody+=	"<td>"+jsonInq.ciDate+"</td>";	
            		tbody+=	"<td id='answerStat'>"+ciAnswer+"</td>";	
            		tbody+= "</tr>"
            		
            	});//each
            		$("#tbodyCi").html(tbody);
            }
                
        });//ajax
		
});//change
});//ready
</script>

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- sidebar -->
        <jsp:include page="../admin_include/include_sidebar.jsp"></jsp:include>

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- topbar -->
        		<jsp:include page="../admin_include/include_topbar.jsp"></jsp:include> 

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">강좌문의</h1>
                    <hr style="background-color:#1CC88A; border-width: 2px; margin-bottom: 100px">

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <select id="ciType" class="form-select" aria-label="Default select example">
							  <option selected value="">분류</option>
							  <c:forEach var="ciTypeList" items="${ requestScope.ciTypeList }">
							  <option value="${ ciTypeList.citCode }">${ ciTypeList.citName }</option>
							  </c:forEach>
							</select>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>번호</th>
                                            <th>분류</th>
                                            <th>제목</th>
                                            <th>강좌명</th>
                                            <th>작성자</th>
                                            <th>작성일</th>
                                            <th>답변여부</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tbodyCi">
                                    <c:forEach var="couInquiry" items="${ requestScope.couInquiryList }" varStatus="i">
                                        <tr>
                                            <td><c:out value="${ i.count }"/></td>
                                            <td><c:out value="${ couInquiry.citName }"/></td>
                                            <td><a href="detailCouInquery.do?ciCode=${ couInquiry.ciCode }"><c:out value="${ couInquiry.ciTitle }"/></a></td>
                                            <td><c:out value="${ couInquiry.couName }"/></td>
                                            <td><c:out value="${ couInquiry.uiName }"/></td>
                                            <td><c:out value="${ couInquiry.ciDate }"/></td>
                                            <td>
                                            <c:if test="${ not empty couInquiry.ciAnswer }">Y</c:if>
                                            <c:if test="${ empty couInquiry.ciAnswer }">N</c:if>
                                            </td>
                                        </tr>
									</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
        	<jsp:include page="../admin_include/include_footer.jsp"></jsp:include>

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="http://localhost/daitdayoung/common/vendor/jquery/jquery.min.js"></script>
    <script src="http://localhost/daitdayoung/common/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="http://localhost/daitdayoung/common/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="http://localhost/daitdayoung/common/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="http://localhost/daitdayoung/common/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="http://localhost/daitdayoung/common/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="http://localhost/daitdayoung/common/js/demo/datatables-demo.js"></script>

</body>

</html>