<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<html>
<head>
    <title>律师团队 -- 吉林吉翔律师事务所</title>
    <meta charset="utf-8">
    <link rel="icon" href="${ctxStatic}/jilinjixiang/images/favicon.ico">
    <link rel="shortcut icon" href="${ctxStatic}/jilinjixiang/images/favicon.ico" />
    <link rel="stylesheet" href="${ctxStatic}/jilinjixiang/css/style.css">
    <script src="${ctxStatic}/jilinjixiang/js/jquery.js"></script>
    <script src="${ctxStatic}/jilinjixiang/js/jquery-migrate-1.1.1.js"></script>
    <script src="${ctxStatic}/jilinjixiang/js/superfish.js"></script>
    <script src="${ctxStatic}/jilinjixiang/js/jquery.equalheights.js"></script>
    <script src="${ctxStatic}/jilinjixiang/js/jquery.easing.1.3.js"></script>

    <!--[if lt IE 9]>
    <script src="${ctxStatic}/jilinjixiang/js/html5shiv.js"></script>
    <link rel="stylesheet" media="screen" href="${ctxStatic}/jilinjixiang/css/ie.css">

    <![endif]-->
</head>
<body>
<!--==============================header=================================-->
<header>
    <div class="container_12">
        <div class="grid_12">
            <h1><a href="/f"><img src="${ctxStatic}/jilinjixiang/images/logo.png" alt="吉林吉翔律师事务所"></a> </h1><div class="clear"></div>

            <div class="menu_block">
                <nav  class="" >
                    <ul class="sf-menu">
                        <li class="current"><a href="/f">首页 </a></li>
                        <li><a href="/f/aboutTeam">律师团队 </a></li>
                        <li><a href="/f/business">业务领域 </a></li>
                        <li><a href="/f/job">招贤纳士 </a></li>
                        <li><a href="/f/law">诉讼与仲裁 </a></li>
                        <li><a href="/f/guestbook">联系我们 </a></li>
                    </ul>
                </nav>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</header>

<!--=======content================================-->
<div class="top_block tb1">
    <div class="container_12" style="width: 1000px;">


            <div class="extra_wrapper">
                <div class="span10">
                    <h3 style="color:#fff;font-size:20px;text-align:center;border-bottom:1px solid #ddd;padding-bottom:15px;margin:25px 0;">${article.title}</h3>
                    <c:if test="${not empty article.description}"><div>摘要：${article.description}</div></c:if>
                    <div>${article.articleData.content}</div>
                    <div style="border-top:1px solid #ddd;padding:10px;margin:25px 0;">发布者：${article.createBy.name} &nbsp; 点击数：${article.hits} &nbsp; 发布时间：<fmt:formatDate value="${article.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/> &nbsp; 更新时间：<fmt:formatDate value="${article.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
                </div>
            </div>
    </div>
</div>
<!--==============================footer=================================-->

<footer>
    <div class="container_12">
        <div class="grid_12">

            <p>&copy; Copyright &copy; 2013-2014.吉林吉翔律师事务所 All rights reserved.<a target="_blank" href="#"></a></p>
            <address>
                吉林省长春市朝阳区东朝阳路669号1508<br>
                电话: 0431-81902707&nbsp;&nbsp;&nbsp;&nbsp;传真: 0431-81902709
            </address>

        </div>
        <div class="clear"></div>
    </div>
</footer>
</body>
</html>