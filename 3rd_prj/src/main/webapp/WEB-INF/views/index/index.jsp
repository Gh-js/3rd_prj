<%@page import="kr.co.daitdayoung.index.dao.IndexDAO"%>
<%@page import="kr.co.daitdayoung.index.vo.IndexVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html >
<head>
  
<title>다있다영</title>

<link href="http://localhost/daitdayoung/resources/css/index.css" rel="stylesheet" />
<!-- NEXT -->
<link rel="shortcut icon" type="https://ssl.pstatic.net/static/m/mooc/edwithmage/x-icon" href="https://ssl.pstatic.net/static/m/mooc/p/partner/next/favicon.ico">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/nanumsquare_webfont.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/new_common.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/plugin.css" type="text/css">
<script src="https://www.edwith.org/static/js/vendor/html5shiv/dist/html5shiv.min.js?231130_26709717"></script>
<script src="https://www.edwith.org/static/js/vendor/respond/dest/respond.min.js?231130_26709717"></script>
<script src="https://www.edwith.org/static/js/plugins/nclk_v0.4.5.js?231130_26709717"></script>
<style>
#new_header .head_logo {
	padding-top: 25px;
	width: 173px;
	height: 66px;
	margin: 0 auto;
}

</style>
     <style>
        #carouselContainer {
            position: relative;
            width: 100%;
            overflow: hidden;
        }

        #carouselItems {
            display: flex;
            transition: transform 0.5s ease-in-out;
            position: relative; /* 부모 요소에 position: relative; 적용 */
        }

        .carousel-item {
            flex: 0 0 100%;
            width: 800px;
        }
        
        .carousel-item img{
            flex: 0 0 100%;
            width: 800px;
            height: 240px;
        }
        
        #prevButton, #nextButton {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            font-size: 24px;
            cursor: pointer;
            color: white; /* 화살표 색상을 흰색으로 변경 */
        }

        #prevButton {
            left: 10px;
        }

        #nextButton {
            right: 10px;
        }

        .dot-container {
            text-align: center;
            margin-top: 10px;
            position: absolute;
            bottom: 10px; /* 동그라미의 위치를 조절 */
            left: 50%;
            transform: translateX(-50%);
        }

        .dot {
            height: 15px;
            width: 15px;
            margin: 0 5px;
            background-color: #bbb;
            border-radius: 50%;
            display: inline-block;
            transition: background-color 0.6s ease;
            cursor: pointer;
        }

        .dot.on {
            background-color: #ffffff; /* 활성화된 동그라미 색상을 흰색으로 변경 */
        }
    </style>
</head>

<body class=" main tmp_main win chrome chrome119">

  
<jsp:include page="../index_nav/index_head.jsp"></jsp:include>
                
<section class="main_top_section">
<!-- <script src="https://kit.fontawesome.com/d505e57471.js" crossorigin="anonymous"></script> -->
<div class="main_inner">


<!-- KV 배너 & 로그인 정보 영역 -->
<div class="kv_login_area">
<h2>추천강의</h2>
<!-- KV 배너 -->
<div class="kv_banner mooc_spot" id="kv_banner" style="width: 800px;"><!-- #breadcrumb: /modules/main/template/keyvisual.html -->
<div class="slide_wrap NE=a:mkv">
<!-- 메인 캐러셀 부분 -->
<div id="carouselContainer">
    <div id="carouselItems">
    	<c:forEach items="${ BIList }" var="bi" varStatus="i">
        <div class="carousel-item">
        	<a href="courses_detail.do?couCode=${bi.couCode }">
            <img src="http://localhost/daitdayoung/courses_data/${ bi.couCode}/${ bi.bannerImg }" alt="Slide ${ i.count }">
            </a>
        </div>
    	</c:forEach>
    </div>

    <div id="prevButton">&lt;</div>
    <div id="nextButton">&gt;</div>

    <div class="dot-container">
    <c:forEach items="${ BIList }" var="bi" varStatus="i">
        <span class="dot"></span>
	</c:forEach>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<script>
    $(document).ready(function () {
        let currentSlide = 0;

        function goToSlide(slideIndex) {
            currentSlide = slideIndex;
            updateCarousel();
        }

        function updateCarousel() {
            const totalSlides = $('.carousel-item').length;
            const translateValue = -currentSlide * 100 + '%';

            $('#carouselItems').css('transform', 'translateX(' + translateValue + ')');

            $('.dot').removeClass('on');
            $('.dot:eq(' + currentSlide + ')').addClass('on');
        }

        function prevSlide() {
            currentSlide = (currentSlide - 1 + 5) % 5;
            updateCarousel();
        }

        function nextSlide() {
            currentSlide = (currentSlide + 1) % 5;
            updateCarousel();
        }

        $('#prevButton').click(prevSlide);
        $('#nextButton').click(nextSlide);
        $('.dot').click(function () {
            const index = $(this).index();
            goToSlide(index);
        });

        updateCarousel();  // 초기화
    });
</script>
</div>
</div>

<!-- 로그인 정보 -->
<div id="login_box">
<div class="login" id="userBox">
<br/>
	<c:if test="${ empty uiId &&  empty insId }">
    <h2 class="login_title">로그인/회원가입</h2>
    <br/>
     <a href="login/login.do" class="" data-sns-login="naver" data-nclk="log.naver">
    <br/>
     <img src="http://localhost/daitdayoung/common/images/login.png">
    </a>
    <a href="login/userJoin.do" class="join" data-nclk="log.registry">처음이신가요? 회원가입</a>
    </c:if>
    <c:if test="${ not empty uiId }">
    <h2 class="login_title"><c:out value="${ uiId }"/>님 환영합니다</h2>
    <a href="user/myCourses.do" class="join" data-nclk="log.registry">내 강의실</a>
    <a href="logout.do" class="join" data-nclk="log.registry">로그아웃</a>
    </c:if>
    <c:if test="${ not empty insId }">
    <h2 class="login_title"><c:out value="${ insId }"/>님 환영합니다</h2>
    <a href="insMyCourse.do" class="join" data-nclk="log.registry">내 강의실</a>
    <a href="logout.do" class="join" data-nclk="log.registry">로그아웃</a>
    </c:if>
</div>

</div>

</div>
</section>


<!-- 강좌 소개 -->
<section class="main_srch_section">
<div class="main_inner">

<!-- 수동 큐레이션 -->
<div id="manual_curation_wrap">
<div class="class_list_wrap"><!-- #breadcrumb: /modules/main/template/manual.curation.html -->


<c:forEach var="indexMC" items="${MCList}">
  <h3 class="<c:choose>
              <c:when test='${indexMC.mcCode eq "MC_000001"}'>customClass1</c:when>
              <c:when test='${indexMC.mcCode eq "MC_000002"}'>customClass2</c:when>
              <c:when test='${indexMC.mcCode eq "MC_000003"}'>customClass3</c:when>
              <c:otherwise>defaultClass</c:otherwise>
            </c:choose>">
  </h3>
  <div class="link_wrap">
  
    <a href="courses.do?mcCode=${indexMC.mcCode}" class="title_box" target="" data-nclk="mc.title20">
    
    <c:choose>
   <c:when test="${indexMC.mcCode eq 'MC_000001'}">
      <span class="thumb" style="background-image: url(https://cphinf.pstatic.net/mooc/20201215_45/1608025862412BpWqR_PNG/box.png?type=ff252_286)"></span>
   </c:when>      
   <c:when test="${indexMC.mcCode eq 'MC_000002'}">
      <span class="thumb" style="background-image: url(https://cphinf.pstatic.net/mooc/20201215_229/1608027977378cSAmK_PNG/q_box_bg_02_new.png?type=ff252_286)"></span>
   </c:when>      
   <c:when test="${indexMC.mcCode eq 'MC_000003'}">
      <span class="thumb" style="background-image: url(https://cphinf.pstatic.net/mooc/20201215_132/1608026284610nDLQS_PNG/q_box_bg_01.png?type=ff252_286)"></span>
   </c:when>      
   <c:otherwise>
      <span class="thumb" style="background-image: url(https://cphinf.pstatic.net/mooc/20201215_214/160802892484503VWn_PNG/png.png?type=ff252_286)"></span>
   </c:otherwise>
    </c:choose>
   
      
      <em class="title"> <c:out value=" ${indexMC.mcName}" /> </em>
      <p class="text">
        <c:choose>
          <c:when test="${indexMC.mcCode eq 'MC_000001'}">
           근로기준법에 의거한 안전보건교육, 성희롱예방교육, 개인정보보호교육, 직장 내 장애인식개선교육 등
          </c:when>
          <c:when test="${indexMC.mcCode eq 'MC_000002'}">
            직장생활에 필요한 시간관리, 업무관리, 사람관리 방법, 셀프리더십 등 개인역량을 키워 조직적응력 향상
          </c:when>
          <c:when test="${indexMC.mcCode eq 'MC_000003'}">
            직장생활에서 발생할 수 있는 위험 속 적절한 위기상황 대응능력을 익힘으로 산업재해를 예방합니다.
          </c:when>
          <c:otherwise>
            새롭게 준비 중인 교육입니다. 기대해주세요!
          </c:otherwise>
        </c:choose>
      </p>
    </a>



 
    
<div><!-- #breadcrumb: /modules/main/template/manual.curation.item.html -->
<div class="inner_wrap all_list" style="overflow: hidden;">
    <ul class="class_list"  style="width: 1104px;">
        <c:forEach var="cou" items="${ indexMC.list }"> 
        <li class="list_item">
            <a href="courses_detail.do?couCode=${cou.couCode }" class="link" target="" data-nclk="mc.lec21">
                <div class="badge">
                </div>
                <em class="class_name"> <c:out value="${cou.couName }"/></em>
                <div class="info">
                   <span> <c:out value="${cou.insName }"/></span>
                </div>
                <span class="thumb" style="background-image: 
                url(http://localhost/daitdayoung/courses_data/${ cou.couCode}/${ cou.bannerImg })"></span>
                <%-- <span class="thumb">
                <a href="courses_detail.do?couCode=${index.couCode }"><img src="${ index.bannerImg }"/></a>
           <a><img src="http://localhost/daitdayoung/courses_data/${ index.couCode }/${ index.bannerImg }" 
           width="804" height="240"></a>
              <a><img src="http://localhost/daitdayoung/courses_data/COU_999999/hcy_tech.PNG" width="220px" height="88"/></a>
              </span> --%>
           </a>
            <div class="lecture_count">
                <div class="favorite">
                <span class="ic_heart"></span>
                <c:out value="${cou.hits }"/>
                </div>
                
                <div class="clear">
                <span class="ic_student"></span>
                <c:out value="${cou.completionCnt != null ? cou.completionCnt : 0}"/>
                </div>
            </div>
        </li>
        </c:forEach>
    </ul>
</div>

</div>

</div>
</c:forEach>

</div>
</div>

</div>
</section>
 
                
<footer class="bg-dark py-4 mt-auto">
<jsp:include page="../index_nav/index_foot.jsp"></jsp:include>
</footer>


</body>
</html>