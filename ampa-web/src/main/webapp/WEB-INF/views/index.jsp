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

    <script src="${ctx}/static/lib/jquery-1.8.1.min.js" type="text/javascript"></script>

    <!-- Demo page code -->


    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
</head>

<!--[if lt IE 7 ]>
<body class="ie ie6"> <![endif]-->
<!--[if IE 7 ]>
<body class="ie ie7"> <![endif]-->
<!--[if IE 8 ]>
<body class="ie ie8"> <![endif]-->
<!--[if IE 9 ]>
<body class="ie ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<body>
<!--<![endif]-->

<jsp:include page="header.jsp"></jsp:include>

<div class="container-fluid">

    <div class="row-fluid">
        <jsp:include page="menubar.jsp"></jsp:include>
        <div class="span10">
            <script type="text/javascript" src="static/lib/jqplot/jquery.jqplot.min.js"></script>
            <script type="text/javascript" charset="utf-8" src="static/javascripts/graphDemo.js"></script>

            <div class="stats">
            </div>
            <h1 class="page-title">概况</h1>

            <div class="row-fluid">
                <div class="block">
                    <p class="block-heading" data-toggle="collapse" data-target="#chart-container">Performance Chart</p>

                    <div id="chart-container" class="block-body collapse in">
                        <div id="line-chart"></div>
                    </div>
                </div>
            </div>

            <div class="row-fluid">
                <div class="block span12">
                    <div class="block-heading" data-toggle="collapse" data-target="#tablewidget">Users</div>
                    <div id="tablewidget" class="block-body collapse in">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Username</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Mark</td>
                                <td>Tompson</td>
                                <td>the_mark7</td>
                            </tr>
                            <tr>
                                <td>Ashley</td>
                                <td>Jacobs</td>
                                <td>ash11927</td>
                            </tr>
                            <tr>
                                <td>Audrey</td>
                                <td>Ann</td>
                                <td>audann84</td>
                            </tr>
                            <tr>
                                <td>John</td>
                                <td>Robinson</td>
                                <td>jr5527</td>
                            </tr>
                            <tr>
                                <td>Aaron</td>
                                <td>Butler</td>
                                <td>aaron_butler</td>
                            </tr>
                            <tr>
                                <td>Chris</td>
                                <td>Albert</td>
                                <td>cab79</td>
                            </tr>
                            </tbody>
                        </table>
                        <p><a href="users.html">More...</a></p>
                    </div>
                </div>

            </div>



        </div>
    </div>


    <jsp:include page="footer.jsp"></jsp:include>

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${ctx}/static/lib/bootstrap/js/bootstrap.js"></script>


</body>
</html>


