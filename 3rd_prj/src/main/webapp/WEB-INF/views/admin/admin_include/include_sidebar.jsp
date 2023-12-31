<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-success sidebar sidebar-dark accordion" id="accordionSidebar" style="background-color: #00C73C;">

            <!-- Sidebar - Brand -->
<!--             <a class="sidebar-brand d-flex align-items-center justify-content-center" 
            href="../admin_dashboard/dashboard.do">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3"><img src="http://localhost/daitdayoung/common/images/logo_1.png"/></div>
            </a>

            Divider
            <hr class="sidebar-divider my-0"> -->

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="../admin_dashboard/dashboard.do">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span style="font-size: 20px;">대시보드</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading" style="font-size: 14px;">
                Manage
            </div>

            <!-- Nav Item - Pages Collapse Menu -->

            <!-- Nav Item - 강좌관리 -->
            <li class="nav-item">
                <a class="nav-link" href="../admin_courses/manageCourses.do">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span style="font-size: 20px;">강좌관리</span></a>
            </li>

            <!-- Nav Item - 일반문의 -->
            <li class="nav-item">
                <a class="nav-link" href="../admin_inquery/manageInquery.do">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span style="font-size: 20px;">일반문의</span></a>
            </li>

            <!-- Nav Item - 강좌문의 -->
            <li class="nav-item">
                <a class="nav-link" href="../admin_couinquery/manageCouInquery.do">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span style="font-size: 20px;">강좌문의</span></a>
            </li>

            <!-- Nav Item - 회원관리 -->
            <li class="nav-item">
                <a class="nav-link" href="../admin_users/manageUsers.do">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span style="font-size: 20px;">회원관리</span></a>
            </li>

            <!-- Nav Item - 공지사항 -->
            <li class="nav-item">
                <a class="nav-link" href="../admin_notice/manageNotice.do">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span style="font-size: 20px;">공지사항</span></a>
            </li>

        </ul>
        <!-- End of Sidebar -->