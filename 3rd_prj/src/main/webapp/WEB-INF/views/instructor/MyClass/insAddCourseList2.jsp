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
	 
 });//ready
 </script>
    <jsp:include page="../common/jsp/instructor_script.jsp"/>
</head>
<body>

<!-- #breadcrumb:whaleclass/main/index.gsp -->
<div class="modal_wrap whale_look" id="_modal_wrap" style="display:none; z-index: 10000">
    <!--애니메이션 영역-->
    <div class="modal_container" data-md-content></div>
    <div class="modal_dimmed"><iframe frameborder="0" src="about:blank" title="버그픽스용"></iframe></div>
</div>
<input type="hidden" name="partnerUrl" value="https://www.edwith.org/">
<input type="hidden" id="__isLogged" value="org.nhnnext.mooc.user.SecUser : 2674262">


    

<body class="win chrome chrome119 re_pack new_color edwith">
    <div class="wrap">
        <!-- container -->
        <div class="container new_layout ">
            <!-- HEADER -->
            

<!-- #breadcrumb:common/_whaleclass_header.gsp -->
<header id="header" class="default_ly2 ">
  <jsp:include page="../common/jsp/header.jsp"/>
</header>

            <!-- [D] 모바일에서 snb 딤드 노출시 class open 추가해주세요
				딤드 노출시 html, body에 style="overflow:hidden" 추가해주세요 -->
            <span class="snb_dimed" id="snb_dimed"></span>

            <!--SNB-->
            
<!-- #breadcrumb:common/_whaleclass_snb.gsp -->


            
<div class="content">
    <div class="page">
        <div class="main_top b_none" data-main-top>
            <button type="button" id="test" class="btn_gnb" data-gnb-on-btn><span class="blind">메뉴 펼치기</span></button>
            <!-- my_btn_area  mo ~ 1279px 에 노출 -->
            <div class="my_btn_area">
                <a href="#" class="btn_my" data-my-btn>
                    <img src="" width="32" height="32" alt="" class="my_thumb" style="display: none" data-profile-btn-image>
                </a>
                <div class="badge_box" style="display: none" data-badge-box>
                    <span class="blind">알림</span><em class="badge_new" data-badge-box-count></em>
                </div>
            </div>
            <h3 class="tit_home">나의 강좌</h3>
        </div>
        <div class="tab_area">
            <ul class="tab_list" role="tablist">
                    <li role="tab" aria-selected="false"><a href="?searchType=all">신청 목록</a></li>
                    <li role="tab" aria-selected="true"><a href="?searchType=closed">강좌 공개</a></li>
            </ul>
        </div>
<jsp:include page="../common/jsp/nav_bar.jsp"/>
<div class="course_group course_join" data-course-group>
    <div class="course_lst class_area">
        
            <ul data-course-card-ul>
                    <li class="" data-course="4317" data-course-uri="web326" data-course-name="웹 백엔드">
                        <div class="info_area ">
                            <div class="thumb">
                                    <a href="https://www.boostcourse.org/web326/home" target="_self">
                                    <img src="https://cphinf.pstatic.net/mooc/20201217_105/1608193449146qDyyJ_PNG/img_boost_web3.png?type=ffn176_96" width="88" height="48" alt="강좌 썸네일">
                                </a>
                            </div>
                            <div class="tit">
                                    <a href="https://www.boostcourse.org/web326/home" target="_self">
                                    <strong class="title">웹 백엔드</strong>
                                </a>
                                <div class="author">
                                    <span class="name">강경미</span>
                                        <span class="bar"></span>
                                        부스트코스
                                </div>
                            </div>
                             <div class="info_btns" >
		                            <button type="button" style="margin:5px;"><strong class="title">공개하기</strong></button><br/>
		                        </div>
                            </div>
                        </div>
                   	</li>
                
                
            </ul>
        
    </div>
</div>
            
        
        
            <!-- paginate -->
            <nav class="paginate" role="navigation"><div class="inner"><a href="#" class="pre" onclick="return false;">이전</a><ul class="page_list"><li><a href="/myPage/home?searchType=&amp;searchText=&amp;sortType=REG&amp;offset=0&amp;max=20" sort="regYmdt" order="desc" class="selected">1</a></li></ul><a href="#" class="next" onclick="return false;">다음</a></div></nav>
            
        
    </div>
</div>


<!-- lcs file -->
<script src="/static/lcs-js/lcslog.js?231109_47a067d4"></script>
<script src="/static/js/src/entries/common/_lcs.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
    $(document).ready(function(){
        var entry = require("/entries/common/_lcs.entry.js");
        entry.initialize({
            environment: "PRODUCTION",
            useSti: true // 반응형 페이지일경우 PC/모바일 구분 플래그로 sti 사용
        });
    });
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/mobile-detect/1.4.5/mobile-detect.min.js?231109_47a067d4"></script>
<script>
    $(document).ready(function(){
        var md = new MobileDetect(window.navigator.userAgent);
        if (md.tablet()) {
            $("body").removeClass("view_mobile");
            $("body").addClass("view_tablet");
            return;
        } else if (md.mobile()) {
            $("body").addClass("view_mobile");
        }
    });
</script>

<script src="/static/js/src/entries/whaleclass/main/index.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
    $(function(){
        var entry = require("/entries/whaleclass/main/index.entry.js");
        entry.initialize({
            searchType: "all"
        });
    });
</script>
<style>
    .re_pack .snb_wrap .snb .menu_area li[aria-selected="true"] a,
    .re_pack #header .gnb.ly_type2 .ly_dropdown .ly_top + ul li .list_title em,
    .re_pack #header .gnb.ly_type2 .ly_dropdown .ly_top + ul li .info em,
    .re_pack .class_area .class_card > li .todo_list strong,
    .re_pack .tab_area .tab_list li[aria-selected="true"] a,
    .re_pack .class_area .class_card > li .lk_guide .ly_guide em,
    .re_pack .content .paginate a.selected,
    .re_pack .class_area .finish_guide a.btn_certificate,
    .re_pack.edwith .course_join .course_lst .desc_area .complete_info .info_standard dl dd em {
        color:#00AB50;
    }
    .re_pack .class_area .finish_guide a.btn_certificate {
        border-color:#00AB50;
    }
    .re_pack .snb_wrap .snb .menu_area li[aria-selected="true"] a i svg path:first-child,
    .re_pack .snb_wrap .snb .menu_area li[aria-selected="true"] a i svg rect:first-child{
        fill:#00AB50;
    }
    .re_pack .snb_wrap .snb .menu_area li[aria-selected="true"] a:after,
    .re_pack #header .gnb.ly_type2 .ly_dropdown .ly_top + ul li .ico_bx,
    .re_pack .main_top .btn_area .btn_type,
    .re_pack .class_area .class_card > li .bar_full .value,
    .re_pack .tab_area .tab_list li[aria-selected="true"]:after,
    .re_pack .class_area .class_card > li .class_info .btn_live:before,
    .re_pack .class_area .class_none .noti_wrap .btn_apply,
    .re_pack.edwith .course_lst .info_btns .btn_whaleclass .icon_video,
    .re_pack.edwith .btn.btn_type6,
    .course_lst .ly_prof_area .ly_prof .tab .ick .radio.checked,
    .edwith .ick .checkbox.checked {
        background-color:#00AB50;
    }
    .re_pack #header .gnb.ly_type2 .ly_dropdown .ly_top + ul li .read {
        background-color:#ccd1d0;
    }
    .class_area .edit_box input[type=checkbox]:checked + .chk_submit:before {
        background-color:#00AB50;
    }
    .re_pack .course_lst > ul > li .status,
    .course_lst .info_lec > ul > li .progress .progress_bar,
    .re_pack .project_list li.pass .pj_state::before {
        background-color: #00AB50;
    }
    .course_lst .done_lst li strong.yellow {
        color:#00AB50;
    }
    input[type=checkbox]:checked + .chk_submit:before {
        background-color:#00AB50;
    }
    .new_layout .class_area .class_card .study_wrap .todo_info_box .my_todo_list li .inner strong {
        color: #00AB50;
    }
</style>


            <!-- FOOTER -->
            
<!-- #breadcrumb:common/_whaleclass_footer.gsp -->

    



    <div class="footer whale_main">
        <div class="f_inner">
            <p class="copyright">ⓒ NAVER Connect Foundation</p>
            <div class="f_menu">
                <ul>
                    <li class="menu"><a href="/help/advice-info">도움말</a></li>
                    <li class="menu"><a href="/voc">문의</a></li>
                    <li class="menu"><a href="/rules/intg/service">이용약관</a></li>
                    <li class="menu"><a href="/rules/intg/privacy"><em>개인정보처리방침</em></a></li>
                </ul>
            </div>
            
                <button type="button" class="btn_logout"><a href="/logout">로그아웃</a></button>
            
        </div>
    </div>


<!-- Build 231109.47a067d4 -->

<!-- lcs file -->
<script src="/static/lcs-js/lcslog.js?231109_47a067d4"></script>
<script src="/static/js/src/entries/footer/index.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
    $(document).ready(function(){
    });
</script>
        </div>
    </div>
</body>
</html>
