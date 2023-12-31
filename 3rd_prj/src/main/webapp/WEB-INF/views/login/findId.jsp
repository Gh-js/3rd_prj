<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
     <!-- #breadcrumb:common/_head.gsp -->
     
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta http-equiv="Cache-Control" content="max-age=86400, public">
    <meta http-equiv="origin-trial" content="Ati2DWxlgboPVi6vklPLcKgvC/IgtfpOtYAvD8L+1jONtKz6NAFzU4c+2yCTCypQPs4MNTbytrfX4JlQBsk73g8AAACGeyJvcmlnaW4iOiJodHRwczovL2Vkd2l0aC5vcmc6NDQzIiwiZmVhdHVyZSI6IkRpc2FibGVEaWZmZXJlbnRPcmlnaW5TdWJmcmFtZURpYWxvZ1N1cHByZXNzaW9uIiwiZXhwaXJ5IjoxNjM5NTI2Mzk5LCJpc1N1YmRvbWFpbiI6dHJ1ZX0=">

    <meta name="robots" content="noindex, nofollow">


    
    
    <meta property="og:url" content="http://www.edwith.org">
    
    <meta property="og:type" content="article">
    
    <meta property="og:title" content="에듀케이션위드 로그인  : edwith">
    
    <meta property="og:description" content="에드위드(edwith)는 네이버(NAVER)와 네이버 커넥트재단(NAVER Connect)이 제공하는 온라인 강좌(MOOC : Massive Online Open Course) 교육 플랫폼입니다. 에듀케이션위드(education with) 에드위드(edwith)로 분야별 명품 강좌를 무료(Free Course)로 수강하세요.">
    
    <meta property="og:site_name" content="edwith : 에듀케이션위드">
    
    <meta property="og:image" content="https://ssl.pstatic.net/static/connectfdn/edwith/hold_images/SNS_LOGO_1024x1024.png">
    
    <meta property="fb:app_id" content="1441124829481137">
    

    
    <meta name="keywords" content="열린 강좌, learn with edwith, 커넥트재단, mooc, massive open online courses, 개방형 온라인 공개 강좌, 온라인 강좌, 열린 교육 운동, 무료 강좌, 네이버 커넥트재단">
    
    <meta name="description" content="에드위드(edwith)는 네이버(NAVER)와 네이버 커넥트재단(NAVER Connect)이 제공하는 온라인 강좌(MOOC : Massive Online Open Course) 교육 플랫폼입니다. 에듀케이션위드(education with) 에드위드(edwith)로 분야별 명품 강좌를 무료(Free Course)로 수강하세요.">
    

    
        <meta itemprop="name" content="에듀케이션위드 로그인  : edwith">
    
        <meta itemprop="description" content="에드위드(edwith)는 네이버(NAVER)와 네이버 커넥트재단(NAVER Connect)이 제공하는 온라인 강좌(MOOC : Massive Online Open Course) 교육 플랫폼입니다. 에듀케이션위드(education with) 에드위드(edwith)로 분야별 명품 강좌를 무료(Free Course)로 수강하세요.">
    
        <meta itemprop="image" content="https://ssl.pstatic.net/static/connectfdn/edwith/hold_images/SNS_LOGO_1024x1024.png">
    


<!-- serverURL : https://www.edwith.org -->
<!-- i18n locale : ko -->
<!-- ko -->
<!-- KR -->
<!-- NEXT -->
    
        <link rel="shortcut icon" type="https://ssl.pstatic.net/static/m/mooc/edwithmage/x-icon" href="https://ssl.pstatic.net/static/m/mooc/p/partner/next/favicon.ico">
    

    <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/plugin.css" type="text/css">
    <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/common1.css" type="text/css">
    <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/common2.css" type="text/css">

    
    <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/edwith.css" type="text/css">
    <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/nanumsquare_webfont.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="https://nid.naver.com/inc/user/css/help_inquiry.css?20210317">
	<link href="https://nid.naver.com/favicon_1024.png" rel="apple-touch-icon-precomposed" sizes="1024x1024" /> 
	<link rel="stylesheet" type="text/css" href="https://nid.naver.com/inc/user/css/non_sign.css?20130320">
	<link rel="stylesheet" type="text/css" href="https://nid.naver.com/inc/user/css/non_sign.css?20130320">
	<script type="text/javascript" src="https://nid.naver.com/inc/user/js/idPwInquiryAjax.js?20140106"></script>
	<script type="text/javascript" src="https://nid.naver.com/js/clickcr.js"></script>
	<script type="text/javascript" src="https://nid.naver.com/inc/common/js/commonUtil.js?20170214"></script>
	<script type="text/javascript" src="https://nid.naver.com/inc/common/js/authUi.js?20230703"></script>
	<script type="text/javascript" src="/inc/common/js/lcs_nclicks.js?r=20220411"></script>
	<script type="text/javascript" src="https://nid.naver.com/inc/user/js/browser.js?20220411"></script>
	<script type="text/javascript" src="https://nid.naver.com/inc/common/js/lua.js?r=20220411"></script>
    
    

    
    <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/code_editor/prism.css" type="text/css">
    <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/code_editor/codemirror.css" type="text/css">

    <script src="https://connect.facebook.net/en_US/all.js"></script>
    <script src="/static/js/vendor/html5shiv/dist/html5shiv.min.js?231109_47a067d4"></script>
    <script src="/static/js/vendor/respond/dest/respond.min.js?231109_47a067d4"></script>
    <script src="/static/js/plugins/nclktag.js?231109_47a067d4"></script>
    
    <!-- Google Tag Manager -->
    
        <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':new Date().getTime(),event:'gtm.js'});
        var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';
        j.async=true;j.src='https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','GTM-P2H76TF');</script>
    
    <!-- // Google Tag Manager -->
<style type="text/css">

 div {
    text-align: center; /* 가운데 정렬 */
}

input[type="radio"] {
    margin: 10px; /* 라디오 버튼 간격 조정 */
    transform: scale(1.5); /* 라디오 버튼 크기 조정 */
}

label, input {
    font-size: 17px; /* 텍스트 크기 조정 */
}
.logo2 {
    text-align: center; /* 로고를 가운데 정렬 */
}

.logo2 img {
    width: 150px; /* 이미지 너비를 100픽셀로 설정 */
    height: auto; /* 이미지 높이를 자동으로 설정하여 비율 유지 */
}

.btn_area {
    text-align: center; /* 가운데 정렬 */
}

.btn_confirm2 {
    display: inline-block;
    padding: 10px 20px;
    background-color: #4CAF50; /* 버튼 배경색 */
    color: white; /* 버튼 텍스트 색상 */
    text-decoration: none; /* 링크 밑줄 제거 */
    font-size: 16px; /* 글씨 크기 */
    border: none;
    border-radius: 5px; /* 버튼 모서리 둥글게 */
    cursor: pointer; /* 마우스 오버 시 커서 변경 */
}



.boost_course_main_body.le_info .inc_sub .sub_box .summary span+span::before {
    background-color:#00AB50;
}
.boost_course_main_body.le_info .inc_sub .sub_box .summary .em {
    color:#00AB50;
}
.boost_course_main_body.le_info .lnb #snb .count_info {
    color:#00AB50;
}
.boost_course_main_body.le_info #snb .state_area .info em {
    color:#00AB50;
}
/*추가된 파트너 컬러 적용 style*/
#header .gnb.ly_type2 .ly_dropdown .ly_top+.scroll_wrap ul li .ico_bx {
    background-color:#00AB50;
}
#header .gnb.ly_type2 .ly_dropdown .ly_top+.scroll_wrap ul li .list_title em {
    color:#00AB50;
}
#header .gnb.ly_type2 .ly_dropdown .ly_top+.scroll_wrap ul li .info em {
    color:#00AB50;
}
body#content .page_header .reverse_wrap .ick .checkbox.checked,
#snb .privacy_area .agree_area input[type="checkbox"]:checked + .checkbox_label .check_icon {
    background-color:#00AB50;
}
.class_manager .slc_area .add_top_wrap .ick .checkbox.checked {
    background-color:#00AB50;
}

/* GNB Common */
body,p,h1,h2,h3,h4,h5,h6,menu,ul,ol,li,dl,dt,dd,table,th,td,form,fieldset,legend,input,textarea,button,select{margin:0;padding:0}
body,input,textarea,select,button,table{font-family:'돋움',Dotum,AppleGothic,sans-serif;font-size:12px}
img,fieldset{border:0}
menu,ul,ol{list-style:none}
em,address{font-style:normal}
a{text-decoration:none}
a:hover,a:active,a:focus{text-decoration:underline}
button{cursor:pointer}
button.disabled{cursor:default}
.blind{display:block;overflow:hidden;*position:absolute;top:0;left:0;width:0;height:0;border:0;background:none;font-size:0;line-height:0}
#gnb{float:right;right:3px} 
</style> 
<meta name="decorator" content="USER_INQUIRY">
<script type="text/javascript" src="https://nid.naver.com/inc/user/js/passwdAjax.js?20180530"></script>
<script type="text/javascript" src="https://nid.naver.com/inc/common/js/rsaAll.js"></script>
<script type="text/javascript" src="https://nid.naver.com/inc/user/js/soundCaptcha.js?20220411"></script>
<script type="text/javascript">



function toggle(){
}

function clearDocs(){
}


function getLenChar(texts) {
	texts = texts + "";
	return String.fromCharCode(texts.length);
}


function reset() {
	document.fm.new_pw.value = "";
	document.fm.new_conf_pw.value = "";
}

function reCaptcha() {
	reCaptchaCount++;
	lua_do('PWInquiry_PC_N' , arguments.callee.name,INFO_CHECK_POINT_RETRY, document.fm.token_help.value, true,'');
	document.getElementById("chptchaimg").src = document.getElementById("chptchaimg").src + "1";
}

function hiddenText(objName){
	document.getElementById(objName).className = "blind";
}

function showText(objName, compName){
	if(document.getElementById(compName).value == ""){
		document.getElementById(objName).className = "lbl_in";
	}
}

function changeFocus(objName, ckValue){
	if(ckValue == "on"){
		if(objName == "bdr_autoValue"){
			document.getElementById(objName).className = "input_box input_box_v2 focus";
		}else{
			document.getElementById(objName).className = "input_box focus";
		} 
	}else{
		if(objName == "bdr_autoValue"){
			document.getElementById(objName).className = "input_box input_box_v2";
		}else{
			document.getElementById(objName).className = "input_box";
		} 	
	}
}

function checkNumber(){
	var captcha = document.getElementById('captcha_image_legend').style.display;
	
	if(captcha == "none"){
		check_num('autoValue', '1');
	}
}

</script>
	
	
	<title>아이디로 로그인 : edwith</title>
	
</head>


<body class="fs ct_middle mbr win chrome chrome119">
	
	
    <!-- Google Tag Manager (noscript) -->
    
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-P2H76TF"
                          height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    
    <!-- End Google Tag Manager (noscript) -->

<input type="hidden" id="__PARTNER_CODE" value="NEXT" />
<input type="hidden" id="__PARTNER_COLOR" value="#00AB50" />
<input type="hidden" id="__ADMIN_PARTNER_CODE" value="" />
<input type="hidden" id="__FILEUPLOAD_DOMAIN" value="//upload.edwith.org" />
<input type="hidden" id="__FILEUPLOAD_ENDPOINT" value="//upload.edwith.org/uploadManager/upload" />
<input type="hidden" id="__USER_ROLE" value="ROLE_GUEST" />
<input type="hidden" id="__USER_PRIORITY" value="1" />
<input type="hidden" id="__USER_ID" value="">
<input type="hidden" id="__COURSE_ID" value="" />
<input type="hidden" id="__COURSE_OPEN_DAY" value="" />
<input type="hidden" id="__COURSE_CLOSE_DAY" value="" />
<input type="hidden" id="__COURSE_URI_PATH" value="" />
<input type="hidden" id="__CURRENT_DATE" value="2023.11.29" />
<input type="hidden" id="__MESSAGE_TITLE" value="알림" />

    <input type="hidden" id="__LOCALE_LANGUAGE" value="ko" />

<input type="hidden" id="__IS_SHARE_PARTNER_CODE" value="false" />
<input type="hidden" id="__IS_PRIVATE_PARTNER" value="false" />
<input type="hidden" id="__IS_BOOST_COURSE_PARTNER" value="false" />
<input type="hidden" id="__IS_WHALE_CLASS" value="false" />
<input type="hidden" id="__IS_BIZ_CLASS" value="false" />
<input type="hidden" id="__IS_MOBILE" value="false" />
<input type="hidden" id="__USE_LMS_PARTNER" value="true" />
<input type="hidden" id="__I18N_RESOURCES_PATH" value="/i18n/" />
<input type="hidden" id="__COURSE_TERM_TYPE" value="" />
<input type="hidden" id="__RESOURCE_VERSION" value="?231109_47a067d4" />
<input type="hidden" id="__CONTROLLER_TYPE" value="neoid" />
<input type="hidden" id="__GITLAB_URL" value="https://gitlab.edwith.org" />
<input type="hidden" id="__EDWITH_PC_URL" value="https://www.edwith.org" />
<input type="hidden" id="__EDWITH_MOBILE_URL" value="https://m.edwith.org" />
<input type="hidden" id="__EDWITH_API_URL" value="https://api.edwith.org" />
<input type="hidden" id="__CBOX_STATIC_DOMAIN" value="https://ssl.pstatic.net/static.cbox" />
<input type="hidden" id="__CBOX_API_DOMAIN" value="https://apis.naver.com/commentBox/cbox8" />
<input type="hidden" id="__CBOX_TICKET" value="mooc" />
<input type="hidden" id="__STANDBY_CAMPAIGN_DOMAIN" value="https://standby-campaign.naver.com" />
<input type="hidden" id="__VTT_API_URL" value="https://vtt.naver.com" />
<input type="hidden" id="__LOG_CONSUMER_DOMAIN" value="https://log-consumer.edwith.org" />
<input type="hidden" id="__LOG_CONSUMER_ENV" value="" />

    <input type="hidden" id="__MESSAGE_CODE" value="" />

<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script src="https://vliveplus.pstatic.net/0/mobile/2020/04/standby/f1.1.0.8.js"></script>



<div class="modal_wrap" id="_modal_wrap" style="display:none">
	<div class="modal_inner">
	    <!--애니메이션 영역-->
	    <div class="modal_container" data-md-content>

	    </div>
	    <div class="modal_dimmed"><iframe frameborder="0" src="about:blank" title="버그픽스용"></iframe></div>
    </div>
</div>
<div id="u_skip">
    
    
        <a href="/login" ><span>로그인 바로가기</span></a>
    
    
    <a href="#content" onclick="document.getElementById('content').tabIndex=-1;document.getElementById('content').focus();return false;"><span>본문 바로가기</span></a>
</div>
<!-- #breadcrumb:layouts/etc.gsp -->
<div id="wrap">
	
		<div id="header" class="type2">
			<div class="layout_in" data-wrap-gnb-menu>
				
    
    <h1 class="logo">
        <a class="N=a:gnb.edwith" href="/">
            <img height="" src="https://ssl.pstatic.net/static/m/mooc/p/partner/next/logo_v4.png?_=?231109_47a067d4"
                 
                 alt="edwith">
        </a>
    </h1>



<ul class="gnb ly_type2" id="gnb">
    
    
    
    <!-- #breadcrumb:/common/_loginbox.gsp -->


<li>
    
        <a href="javascript:doLogin()" class="login N=a:gnb.login">로그인 / 회원가입</a>
    
</li>
    <script>
        function doLogin(){
            var returnUrl = location.href.substring(location.href.indexOf(location.host)+location.host.length);
            if(location.pathname == "/login"){
                location.href = "/login" + location.search;
            }else {
                if (returnUrl == "/" || returnUrl == "" || "neoid" == "error" || "neoid" == "neoid") {
                    returnUrl = "";
                } else {
                    returnUrl = "?returnUrl=" + returnUrl;
                }
                location.href = "/login" + returnUrl;
            }
        }
    </script>


</ul>


<input type="hidden" id="__isLogged" value="">


    </div>


		</div>
	
	<div id="container">
		<div id="content">
			
<!-- #breadcrumb:login/emailLogin.gsp-->
<section class="page findId" id="_login">
    <h2 class="tit">아이디 찾기</h2>
    <div class="login_method_email">
        <form role="form" id="findId_form" action="dofindId.do" method="post">
            <fieldset>
                <legend class="sr_only">아이디 찾기</legend>
                
                <input type="hidden" id="returnUrl" name="returnUrl" value="">
                
                <div class="ipt_group">
                    <label class="it stretch _label">
                        <span class="ph _login_email_addr" style="display: none;">이름</span>
                        <input type="text" id="name" name="name" class="_input" placeholder="이름을 입력해주세요" >
                    </label>
	               <label class="it stretch _label _password">
					    <span class="ph _login_password" style="display: none;">생년월일</span>
					    <input type="text" id="birth" name="birth" class="_input" data-global-placeholder="._login_password" placeholder="생일을 입력해주세요 예시 :1990-01-01" onkeyup="formatBirthday(this)">
					</label><br/>
                     <label for="inputPassword" id="type">회원유형</label>
                     <input type="radio" value="user" id="type" name="type" />학생
                     <input type="radio" value="ins" id="type" name="type" />강사<br/>
                    <button type="submit" id="submit" class="btn btn_type1 clr" data-btn-submit>아이디 찾기</button>
                    <div class="btm">
                        
                        <a href="selectJoin.do">회원가입</a>
                        
                    </div>
                </div>
            </fieldset>
		</form>
    </div>
</section>
<script type="text/javascript" src="https://nid.naver.com/inc/mobile/js/m.jquery.js?20140912" ></script>
<script type="text/javascript"> 
var ua = window.navigator.userAgent.toLowerCase();
var result = (/android+\s+((\d)\.(\d))(?:\.(\d))?/igm).exec(ua);
var uad = navigator.userAgentData;
var isMobile = (uad && uad.mobile) || (ua.indexOf('Mobi') !== -1) || (/windows ce/.test( ua ) && /polar/.test( ua )) || ( /mozilla/.test( ua ) && /natebrowser/.test( ua ) ) || ( /opera/.test( ua ) && (/windows ce/.test( ua ) || /skt/.test( ua )) ) || ( /iphone/.test( ua ) || /ipod/.test( ua ) ) || ( /android/.test( ua ) && !( /.*shw-m180(s|k|l|w).*/.test( ua ) ) && !( result != null && result.length > 0 && result[1] >=3.0 ) ) || ( /dolfin/.test( ua )) || ( /windows ce/.test( ua ) && /iemobile/.test( ua ) ) || ( /mozilla/.test( ua ) &&  /(wv[0-9]+)/.test( ua ) && /lgtelecom/.test( ua ) ) || ( (/mozilla/.test( ua ) && /((010|011|016|017|018|019)\d{3,4}\d{4}$)/.test( ua )) ) || ( /windows phone os/.test( ua ) && /iemobile/.test( ua ) );


var cur_container_height = Number(document.getElementById("container").clientHeight); // container 높이
var min_container_height = 647;
var header_height = 86;
var footer_height = isMobile ? 160: 30;

window.onload   = changeContentSize; // Window 창 로드시
window.onresize = changeContentSize; // Window 창 크기를 조정할때마다

function changeContentSize() {
	var container_height = min_container_height;
	var window_height = Number(document.documentElement.clientHeight) - header_height - footer_height; // Window 창 높이
	if (window_height > cur_container_height) {
		if (window_height > min_container_height) {
			container_height = window_height;
		}
	} else {
		if (cur_container_height > min_container_height) {
			container_height = cur_container_height;
		}
	}
	
    if (navigator.appName == 'Netscape' && navigator.userAgent.search('Trident') != -1) { // ie11 추가
        document.getElementById("container").style.height = container_height + "px";
    }else if (window.navigator.userAgent.indexOf("MSIE") == -1 || (document.all && window.XMLHttpRequest)) { // ie6 제외
        document.getElementById("container").style.height = container_height + "px";
    } else {
        document.getElementById("container").style.height ="100%";
    }
}

function setContainerHeight(height) {
	if (height >= 0) {
		cur_container_height = height;
	} else {
		cur_container_height = Number(document.getElementById("container").clientHeight);
	}
	changeContentSize();
}
function formatBirthday(input) {
    let value = input.value.replace(/\D/g, ''); // 숫자만 남기기

    // 연도 처리
    if (value.length > 4) {
        let year = parseInt(value.substr(0, 4), 10);
        year = (year >= 1900 && year <= 2100) ? year : '';
        value = year + (year ? '-' : '') + value.substr(4);
    }

    // 월 처리
    if (value.length > 7) {
        let month = parseInt(value.substr(5, 2), 10);
        month = (month >= 1 && month <= 12) ? month : '';
        month = month.toString().padStart(2, '0');
        value = value.substr(0, 5) + month + (month ? '-' : '') + value.substr(7);
    }

    // 일 처리
    if (value.length > 10) {
        let year = parseInt(value.substr(0, 4), 10);
        let month = parseInt(value.substr(5, 2), 10);
        let day = parseInt(value.substr(8, 2), 10);
        let lastDayOfMonth = new Date(year, month, 0).getDate(); // 해당 월의 마지막 날짜를 구함

        day = (day >= 1 && day <= lastDayOfMonth) ? day : '';
        day = day.toString().padStart(2, '0');
        value = value.substr(0, 8) + day;
    }

    input.value = value;
}
</script>
</body>	



<!-- Build 231109.47a067d4 -->


<!-- lcs file -->
 <!-- FOOTER -->
            
<!-- #breadcrumb:common/_whaleclass_footer.gsp -->
<jsp:include page="../user/nav/footer.jsp"></jsp:include>
<!-- Build 231109.47a067d4 -->

<style>
    .tit2 {
        font-size: 24px; /* 글자 크기 */
        color: #333333; /* 글자 색상 */
        font-family: 'Arial', sans-serif; /* 폰트 스타일 */
        text-align: center; /* 가운데 정렬 */
        /* 추가적인 스타일링 */
        font-weight: bold; /* 글씨 굵기 */
        margin-bottom: 20px; /* 아래쪽 여백 */
    }
</style>
</html>