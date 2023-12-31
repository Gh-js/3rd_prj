<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="   " %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="ko" itemscope itemtype="http://schema.org/Article">
<head>
    <!-- #breadcrumb:boostcourse/common/_head.gsp -->
<meta charset="utf-8">

<link rel="shortcut icon" type="https://ssl.pstatic.net/static/m/mooc/edwithmage/x-icon" href="https://ssl.pstatic.net/static/m/mooc/p/partner/next/favicon.ico">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/plugin.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/boostcourse_common.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/edwith.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/nanumsquare_webfont.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/code_editor/prism.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/code_editor/codemirror.css" type="text/css">
<script src="https://www.edwith.org/static/js/vendor/html5shiv/dist/html5shiv.min.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/vendor/respond/dest/respond.min.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/plugins/nclktag.js?231109_47a067d4"></script>
<!-- courses css -->
<link rel="stylesheet" href="http://localhost/daitdayoung/common/css/user/courses.css" type="text/css">
<!-- courses_notice_table css -->
<link rel="stylesheet" href="http://localhost/daitdayoung/common/css/user/courses_notice_table.css" type="text/css">

        <title>강의실 공지사항 : edwith </title>
<!-- jQuery CDN시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        
</head>
<body class="re_pack win chrome chrome119">

<script src="https://www.edwith.org/static/js/vendor/vendor.compressed.min.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/src/entries/common/_head.entry.browserfied.min.js?231109_47a067d4"></script>
<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script src="https://vliveplus.pstatic.net/0/mobile/2020/04/standby/f1.1.0.8.js"></script>
<div id="wrap">
<jsp:include page="../nav/header_courses.jsp"></jsp:include>
    
<div id="container">

<!-- nav -->
<jsp:include page="../nav/nav_courses.jsp"></jsp:include>
<!-- nav -->

	<div id="content">
	<section class="page mg_menu">
	
	<!--//page_header-->
<header class="page_header">
	<div class="group_lr">
		<div class="group_l">
			<h1 class="page_title"><c:out value="${ ucnDomain.cnTitle }"/></h1>
		</div>
	</div>
</header>
<article class="forum_view">
        <!-- [D] 권한에 따라 노출되는 UI가 다름 -->
        <div class="forum_func group_lr" style="margin-top: 20px; margin-bottom: 20px;">
            <div class="group_l">
                <div class="user_info">
                        <span class="ic_ad vamiddle"><c:out value="${ ucnDomain.insName }"/></span>
                    <time class="time" ><c:out value="${ ucnDomain.cnDate }"/></time>
                </div>
            </div>
        </div>
        <div class="ce ce_view">
            <article class="material_view material_text">
                <div class="material_desc editor_reset" style="min-height: 300px;">
                    <c:out value="${ ucnDomain.cnContent }"/>
                </div>
                <hr>
                <div class="group_lr" style="border-bottom: 1px">
        		<div class="group_r">
            		<a href="courses.do?crgCode=${ param.crgCode}&couCode=${ param.couCode }" class="btn btn_type2 bold N=a:lec.list" data-selector="backToListBtn">메인으로</a>
        		</div>
    		</div>
            </article>
        </div>
    </article>
</section>

</div>
<!-- footer -->     
<jsp:include page="../nav/footer_courses.jsp"></jsp:include>   
<!-- footer -->        
</div>
</div>
</body>
</html>