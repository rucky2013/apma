<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="span2">
    <div class="sidebar-nav">
        <div class="nav-header" data-toggle="collapse" data-target="#dashboard-menu"><i
                class="icon-dashboard"></i>应用监控
        </div>
        <ul id="dashboard-menu" class="nav nav-list collapse in">
            <c:forEach items="${menus}" var="menu" varStatus="status">
                <li><a href="/chartDetail">${menu.name}</a></li>
            </c:forEach>
        </ul>
        <div class="nav-header" data-toggle="collapse" data-target="#accounts-menu"><i
                class="icon-briefcase"></i>JVM监控</div>
        <ul id="accounts-menu" class="nav nav-list collapse in">
            <li><a href="sign-in.html">死锁监控</a></li>
            <li><a href="sign-up.html">内存监控</a></li>
            <li><a href="reset-password.html">GC</a></li>
        </ul>

        <div class="nav-header" data-toggle="collapse" data-target="#settings-menu"><i
                class="icon-exclamation-sign"></i>统计分析
        </div>
        <ul id="settings-menu" class="nav nav-list collapse in">
            <li><a href="403.html">日活跃用户</a></li>
            <li><a href="404.html">日留存用户</a></li>
            <li><a href="500.html">统计项3</a></li>
            <li><a href="503.html">统计项4</a></li>
        </ul>

        <div class="nav-header" data-toggle="collapse" data-target="#error-menu"><i
                class="icon-briefcase"></i>Error<span class="label label-info">on</span></div>
        <ul id="error-menu" class="nav nav-list collapse in">
            <li><a href="sign-in.html">Error</a></li>
        </ul>

        <div class="nav-header" data-toggle="collapse" data-target="#legal-menu"><i class="icon-legal"></i>后台管理
        </div>
        <ul id="legal-menu" class="nav nav-list collapse in">
            <li><a href="/menu/list">菜单管理</a></li>
            <li><a href="/menu/addPage">报警策略</a></li>
        </ul>
    </div>
</div>
