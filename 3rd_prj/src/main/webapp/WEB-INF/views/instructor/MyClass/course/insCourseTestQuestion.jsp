<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <!-- jQuery CDN 끝 -->
 <style type="text/css">
   
 </style>
 <script type="text/javascript">
 $(function(){
	 $("#add_btn").click(function(){
		 
		 var data={
		"examCode" : $("#examCode").val(),
		 "couCode" :	 $("#couCode").val(),
		 "insId" :	 $("#insId").val(),
		 "queContent" :	 $("#queContent").val(),
		 "que1" :	 $("#que1").val(),
		 "que2" :	 $("#que2").val(),
		 "que3" :	 $("#que3").val(),
		 "que4" :	 $("#que4").val(),
		 "correct" : $('input[name="correct"]:checked').val()
		 };
		 
		 $.ajax({
				url:"addQuestion.do",
				data: data,
				dataType:"json",
				method:"post",
				error:function(xhr){
					alert(xhr.status);
				},
				success:function( jsonObj ){
					location.reload();
				}//success
				
			 })//ajax
		 
	 });//click

	 $("#modify_btn").click(function(){
		 var data={
			"queCode" : $("#queCode").val(),
			"examCode" : $("#examCode").val(),
			 "couCode" :	 $("#couCode").val(),
			 "insId" :	 $("#insId").val(),
			 "queContent" :	 $("#queContent").val(),
			 "que1" :	 $("#que1").val(),
			 "que2" :	 $("#que2").val(),
			 "que3" :	 $("#que3").val(),
			 "que4" :	 $("#que4").val(),
			 "correct" : $('input[name="correct"]:checked').val()
			 };
			 
			 $.ajax({
					url:"modifyQuestion.do",
					data: data,
					dataType:"json",
					method:"post",
					error:function(xhr){
						alert(xhr.status);
					},
					success:function( jsonObj ){
						location.reload();
					}//success
							
			 })//ajax
	 });//click
	
	 $("#delete_btn").click(function(){
		 var data={
					"queCode" : $("#queCode").val(),
					 };
					 
					 $.ajax({
							url:"deleteQuestion.do",
							data: data,
							dataType:"json",
							method:"post",
							error:function(xhr){
								alert(xhr.status);
							},
							success:function( jsonObj ){
								location.reload();
							}//success
									
					 })//ajax

	 });//click
	
 });//ready
 </script>
 <script type="text/javascript">
 function selOneQue(i){
	var code=i;
	 var data = { "queCode" : code };
	 
	 $.ajax({
		url:"searchOneQue.do",
		data: data,
		dataType:"json",
		method:"post",
		error:function(xhr){
			alert(xhr.status);
		},
		success:function( jsonObj ){
			$("#queCode").val(jsonObj.queCode);

			$("#insId").val(jsonObj.insId);
			$("#queContent").val(jsonObj.queContent);
			$("#que1").val(jsonObj.que1);
			$("#que2").val(jsonObj.que2);
			$("#que3").val(jsonObj.que3);
			$("#que4").val(jsonObj.que4);
			
			var radioButtons = document.getElementsByName('correct');
			for (var i = 0; i < radioButtons.length; i++) {
			  if (radioButtons[i].value == jsonObj.correct) {
			    radioButtons[i].checked = true;
			    break; // 선택된 라디오 버튼을 찾았으므로 루프 종료
			  }
			}
			
		}//sucess
		 
	 })//ajax
	 
 }//searchOneQUe
 
 </script>
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/plugin.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/boostcourse_common.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/edwith.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/nanumsquare_webfont.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/code_editor/prism.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/code_editor/codemirror.css" type="text/css">

<script src="https://connect.facebook.net/en_US/all.js"></script>
<script src="https://www.edwith.org/static/js/vendor/html5shiv/dist/html5shiv.min.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/vendor/respond/dest/respond.min.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/plugins/nclktag.js?231109_47a067d4"></script>
<script>
    var nsc = 'edwith.all';
    var ccsrv = 'cc.naver.com';
    var nclk_evt = 3;
    nclk_do();
</script>

    <!-- Google Tag Manager -->
    
        <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':new Date().getTime(),event:'gtm.js'});
        var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';
        j.async=true;j.src='https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','GTM-P2H76TF');</script>
    
    <!-- // Google Tag Manager -->

    
        <title>파이썬 자료구조 > 강의목록 : edwith</title>
    
</head>
<body class="re_pack win chrome chrome119">
    <!-- Google Tag Manager (noscript) -->
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-P2H76TF"
                          height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->
    
<script src="/static/js/vendor/vendor.compressed.min.js?231109_47a067d4"></script>
<script src="/static/js/src/entries/common/_head.entry.browserfied.min.js?231109_47a067d4"></script>
<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script src="https://vliveplus.pstatic.net/0/mobile/2020/04/standby/f1.1.0.8.js"></script>
<script>
    var title = document.title;
    document.title = _.unescape(title);
    var entry = require("/entries/common/_head.entry.js");
    entry.initialize();

        // 약관 페이지 및 오류 페이지 무한 리다이렉트 방지
        if ((location.pathname.indexOf("/users/connect-integration") > -1)
            || (location.pathname.indexOf("/notAuthorized") > -1)
            || (location.pathname.indexOf("/notExist") > -1)
            || (location.pathname.indexOf("/internalServerError") > -1)
            || (location.pathname.indexOf("/readOnlyError") > -1)
            || (location.pathname.indexOf("/badRequest") > -1)
            || (location.pathname.indexOf("/methodNotAllowed") > -1)
            || (location.pathname.indexOf("/neoid/doChainingLogin") > -1)) {
            return;
        }
        location.href = ("/users/connect-integration?returnUrl=" + encodeURI(location.href));
    }());
        
        if(!wcs_add) var wcs_add = {};
        
            wcs_add["wa"] = "3d48cd39225150";
        
        wcs_do();
    
    function diff_minutes(dt2, dt1) {
        var diff =(dt2.getTime() - dt1.getTime()) / 1000;
        diff /= 60;
        return Math.abs(Math.round(diff));
    }

    //오늘 하루만 유지되도록 쿠키 Minute 설정
    function getStandbyCookieTime() {
        var dt1 = new Date();

        var dt2 = new Date(dt1);
        dt2.setDate(dt1.getDate() + 1);
        dt2.setHours(0,0,0,0);

        var diffMinute =  diff_minutes(dt2, dt1);
        if(diffMinute <= 0) {
            return 24 * 60
        } else {
            return diffMinute;
        }
    }

    var htInfo = {
        serviceId : "edwith_NEXT",
        seqApi : "https://standby-campaign.naver.com/",
        heartBeatApi : "https://standby-campaign.naver.com/",
        homeUrl : "https://edwith.org",
        cookieTime : getStandbyCookieTime()
    };

    var oSequenceManager = new SequenceManager({
        serviceId : htInfo.serviceId,
        apiHost: htInfo.seqApi,
        cookieTime: htInfo.cookieTime, //minute 단위
        successCallback : function(response){
            //시퀀스 호출이 성공 하였을 경우 heartbeat 요청 시작~
            oHeartbeat.start();
        },
        failCallback : function(response) {
        },
        errorCallback : function(error) {
            //호출 시 오류가 발생 하였을 경우 3초 후 시퀀스 호출
            setTimeout(oSequenceManager.requestSequence , 3000);
        }
    });

    var oHeartbeat = new Heartbeat(oSequenceManager,{
        serviceId: htInfo.serviceId,
        apiHost: htInfo.heartBeatApi,
        soldoutCallback: function(response) {
        },
        errorCallback : function(response) {
            //에러가 발생했을 경우 순번 삭제 후 아무것도 하지 않음
        },
        successRun : true //대기열 진입 시에도 계속 heartbeat 호출할 필요가 있을 경우 true(상품 품절 체크 등의 이슈)
    });

    //dom 로드된 후 아래 코드 호출
    //oSequenceManager.requestSequence();
</script>

<script>
    
		
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
    

    (function() {
        function gaGetInfo() {
            var gaInfo = {
                viewId: document.getElementById('GA_VIEW_ID').value,
                userId: document.getElementById('GA_USER_ID').value,
                dimension01: document.getElementById('GA_DIMENSION01').value,
                dimension02: document.getElementById('GA_DIMENSION02').value,
                dimension03: document.getElementById('GA_DIMENSION03').value,
                dimension04: document.getElementById('GA_DIMENSION04').value,
                dimension05: document.getElementById('GA_DIMENSION05').value,
                dimension06: document.getElementById('GA_DIMENSION06').value,
                dimension07: document.getElementById('GA_DIMENSION07').value,
                dimension08: document.getElementById('GA_DIMENSION08').value,
                dimension09: document.getElementById('GA_DIMENSION09').value
            };

            return gaInfo;
        }


        function gaHitPageView() {
            var gaInfo = gaGetInfo();
            var ga = window.ga;

            ga('create', gaInfo.viewId, 'auto');
            ga('set', 'userId', gaInfo.userId);
            ga('set', 'dimension1', gaInfo.dimension01);
            ga('set', 'dimension2', gaInfo.dimension02);
            ga('set', 'dimension3', gaInfo.dimension03);
            ga('set', 'dimension4', gaInfo.dimension04);
            ga('set', 'dimension5', gaInfo.dimension05);
            ga('set', 'dimension6', gaInfo.dimension06);
            ga('set', 'dimension7', gaInfo.dimension07);
            ga('set', 'dimension8', gaInfo.dimension08);
            ga('set', 'dimension9', gaInfo.dimension09);

            ga('send', 'pageview');
        }

        function gaSimpleHitPageView(page) {
            ga('set', 'page', page);
            ga('send', 'pageview');
        }

        window.gaHitPageView = gaSimpleHitPageView;

        
        /*ga('send', {
            hitType: 'event',
            eventCategory: 'video',
            eventAction: 'play',
            eventLabel: 'media play'
        });*/

        gaHitPageView();
    })();
</script>



<div class="modal_wrap ce_preview" id="_modal_wrap" style="display:none">
	<div class="modal_inner">
	    <!-- 애니메이션 영역 [??] -->
	    <div class="modal_container" data-md-content></div>
	    <div class="modal_dimmed"><iframe frameborder="0" src="about:blank" title="버그픽스용"></iframe></div>
    </div>
</div>
<div id="u_skip">
    
        <a href="#gnb" onclick="document.getElementById('gnb').tabIndex=-1;document.getElementById('gnb').focus();return false;"><span>개인 메뉴 바로가기</span></a>
    
    
    
    <a href="#snb" onclick="document.getElementById('snb').tabIndex=-1;document.getElementById('snb').focus();return false;"><span>하위 메뉴 바로가기</span></a>
    
    <a href="#content" onclick="document.getElementById('content').tabIndex=-1;document.getElementById('content').focus();return false;"><span>본문 바로가기</span></a>
</div>
<!-- #breadcrumb:layouts/course.gsp -->
<div id="wrap">
    <!-- 로고 2개있는 경우 및 부스트코스, edwith 분기 -->
    
        <div id="header">
        	<jsp:include page="common/insCourseHeader.jsp"/>
        </div>
    
    <!-- share 보안 이슈 filter 미적용 -->
    <div id="container">
        <!-- 신규 boostcourse LNB -->
        
<!--[D] 관리자 권한이면서 bbs를 클릭하지 않았을 경우 true-->

<div class="lnb">
<jsp:include page="common/insCourseLnb.jsp"/>
</div>

<script src="https://www.edwith.org/static/js/src/entries/common/_lnbmenu.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
    $(document).ready(function() {
        var entry = require("/entries/common/_lnbmenu.entry.js");
        entry.initialize({
            'courseId': '2024',
            'courseUriPath': 'python-data',
            'heartbeatApiDomain': 'https://standby-campaign.naver.com'
        });
    });
</script>
        <div id="content">
            
<!-- #breadcrumb:chapter/list.gsp -->
<section class="page mg_menu">
	
	<!--page_header-->
	<header class="page_header">
		<div class="group_lr mab10">
			<div class="group_r">
			</div>
			<div class="group_l">
				<h1 class="page_title">
					문제 관리
				</h1>
			</div>
		</div>
	</header>
	<!--//page_header-->

	<div class="class_manager type2">
		<!--chapter_list-->
		<ul>
					<!-- [D] 진행중 class : on -->
					<li>
						<div id="content">
							<div class="container">
	        					<div class="row">
	        						<div class="col">
		        						<div class="" >
		        							<form id="cqVO" name="cqVO" action="#void" method="post">
			        						<label style="font-size:30px;"><strong>문제 내용</strong></label><br/>
			        						<textarea id="queContent" name="queContent"style="widht:100%; height:20%"></textarea><br/>
			        						<input type="hidden" id="insId" name="insId" value="${ insId }"/>
			        						<input type="hidden" id="queCode" name="queCode" value="${ queCode }"/>
			        						<input type="hidden" id="examCode" name="examCode" value="${ examCode }"/>
			        						<input type="hidden" id="couCode" name="couCode" value="${ couCode }"/>
				        					<label style="font-size:30px;"><strong>1.</strong></label><input type="text" id="que1" name="que1" class="input_txt" style="width:60%; height:48px; font-size:16px; margin-left:5%;" placeholder="내용을 입력해주세요."><input type="radio" id="correct1" name="correct" value="1"/><br/>
				        					<label style="font-size:30px;"><strong>2.</strong></label><input type="text" id="que2" name="que2" class="input_txt" style="width:60%; height:48px; font-size:16px; margin-left:5%;" placeholder="내용을 입력해주세요."><input type="radio" id="correct2" name="correct" value="2"/><br/>
				        					<label style="font-size:30px;"><strong>3.</strong></label><input type="text" id="que3" name="que3" class="input_txt" style="width:60%; height:48px; font-size:16px; margin-left:5%;" placeholder="내용을 입력해주세요."><input type="radio" id="correct3" name="correct" value="3"/><br/>
				        					<label style="font-size:30px;"><strong>4.</strong></label><input type="text" id="que4" name="que4" class="input_txt" style="width:60%; height:48px; font-size:16px; margin-left:5%;" placeholder="내용을 입력해주세요."><input type="radio" id="correct4" name="correct" value="4"/><br/>
				        					</form>
			        					</div>
		        					</div>
	        						<div class="col">
			        					<div class="table" style="width:50%">
				        					<table id="cqdListT"class="table">
				        						<tr>
													<th>문제번호</th>
													<th>정답</th>
												</tr>
												<c:choose>
													<c:when test="${ empty cqdList }">
														<td colspan="2">문제가 없습니다.</td>
													</c:when>
													<c:otherwise>
														<c:forEach var="cqd" items="${ cqdList }" varStatus="i">
														<tr onclick="selOneQue( '${ cqd.queCode }')">
															<td>${ i.count }</td>
															<td><c:out value="${ cqd.correct }"/></td>
														</tr>
														</c:forEach>
													</c:otherwise>
												</c:choose>
				        					</table>
						       			</div>
				       				</div>
		        				</div>
							</div>
							
							<div id="btn_group">
								<input type="button" id="add_btn" class="btn btn_type17 bold" value="문제추가"/>
								<input type="button" id="modify_btn" class="btn btn_type17 bold" value="문제수정"/>
								<input type="button" id="delete_btn" class="btn btn_type17 bold" value="문제삭제"/>
							</div>
						</div>
					</li>
			
		</ul>
		
		<!--project_list-->
		<ul id="project_group_area" class="mat30"></ul>
	</div>
	<p class="none" style="display:none" data-nodata-message>준비중입니다.</p>
</section>
<script src="https://www.edwith.org/static/js/src/entries/chapter/list.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
    $(document).ready(function() {
        var entry = require("/entries/chapter/list.entry.js");
        entry.initialize({
            courseId : 2024,
            course : "python-data",
            bbsId : "13744",
            chapterListSize : 6
        });
    });
</script>

        </div>
        
<!-- #breadcrumb:boostcourse/common/_footer_course.gsp -->

    <footer id="footer" class="simple new_f">
        <p class="copyright">© NAVER Connect All Rights Reserved.</p>
        <button class="btn_to_top" data-btn-scroll-top data-nclk="foot.top"><span class="blind">페이지 맨 위로가기</span></button>
    </footer>



<!-- lcs file -->
<script src="https://www.edwith.org/static/lcs-js/lcslog.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/src/entries/common/_lcs.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
    $(document).ready(function(){
        var entry = require("/entries/common/_lcs.entry.js");
        entry.initialize({
            environment: "PRODUCTION",
            useSti: false
        });
    });
</script>
<script src="https://www.edwith.org/static/js/src/entries/footer/index.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
    $(document).ready(function(){

        //페이지 맨 위로 가기 이벤트
        $('[data-btn-scroll-top]').on('click', function(e){
            e.preventDefault();
            $("html, body").animate({ scrollTop: 0 }, "slow");
        });

        var entry = require("/entries/footer/index.entry.js");
        entry.initialize({
            el : "#_layer",
            isLogin: true,
            isClosedMooc: false,
            hasEmail: true,
            myInfoLink : "http://www.edwith.org/userInfo/base-info"
        });
    });
</script>
    </div>

    <!-- 개인정보 제3자 제공 동의 모달 -->
    <div class="modal_wrap privacy_agree" id="_agreement_modal" style="display:none">
        <div class="modal_inner">
            <div class="modal_dimmed"><iframe frameborder="0" src="about:blank" title="버그픽스용"></iframe></div>
            <div class="modal_container" data-md-content></div>
        </div>
    </div>
</div>
<script src="https://www.edwith.org/static/js/src/entries/layouts/course.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
$(document).ready(function(){
var entry = require( "/entries/layouts/course.entry.js" );
    entry.initialize({
        messageCode : $("#__MESSAGE_CODE").val(),
        popupTitle : $("#__MESSAGE_TITLE").val(),
        message : $("#__MESSAGE").val(),
        course : "python-data",
        isCourseUseVote: true,
        isOpenCourseAgreement: false
    });
});
</script>
</body>
</html>