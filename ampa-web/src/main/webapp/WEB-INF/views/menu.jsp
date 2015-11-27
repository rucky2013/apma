<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" scope="session"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>后台监控系统</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/lib/bootstrap/css/bootstrap-responsive.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/stylesheets/theme.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/stylesheets/index.css">
    <link rel="stylesheet" href="${ctx}/static/lib/font-awesome/css/font-awesome.css">

    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
</head>

<body>

<jsp:include page="header.jsp"></jsp:include>

<div class="container-fluid">

    <div class="row-fluid">
        <jsp:include page="menubar.jsp"></jsp:include>
        <div class="span10">
            <div class="row-fluid">
                <div class="block span12">
                    <div class="block-heading" data-toggle="collapse" data-target="#tablewidget">监控菜单列表</div>
                    <div class="btn-toolbar " style="margin-left: 30px">
                        <button id="menu-add-btn" class="btn btn-primary right"><i class="icon-plus"></i>添加</span>
                        </button>
                    </div>
                    <div id="tablewidget" class="block-body collapse in">
                        <table class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>菜单id</th>
                                <th>名称</th>
                                <th>简介</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${menus}" var="menu" varStatus="status">
                                <tr>
                                    <td>${menu.id}</td>
                                    <td>${menu.name}</td>
                                    <td>${menu.info}</td>
                                </tr>
                            </c:forEach>

                            </tbody>
                        </table>
                    </div>
                </div>

            </div>


        </div>
    </div>

    <jsp:include page="footer.jsp"></jsp:include>


    <script src="${ctx}/static/lib/jquery-1.8.1.min.js" type="text/javascript"></script>
    <script src="${ctx}/static/lib/jquery-1.8.1.min.js" type="text/javascript"></script>
    <script src="${ctx}/static/ampa/menu.js" type="text/javascript"></script>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>

</body>
</html>


