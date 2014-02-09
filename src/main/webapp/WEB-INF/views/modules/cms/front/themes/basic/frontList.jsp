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
                <h4>${category.name}</h4>
                <c:if test="${category.module eq 'article'}">
                    <ul>
                        <c:forEach items="${page.list}" var="article">
                            <li>
                                <span class="pull-right"><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></span>

                                &nbsp;&nbsp;|&nbsp;&nbsp;

                                <a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,96)}</a>
                            </li>
                        </c:forEach>
                    </ul>
                    <%--<div class="pagination" >${page}</div>--%>
                    <script type="text/javascript">
                        function page(n,s){
                            location="${ctx}/list-${category.id}${urlSuffix}?pageNo="+n+"&pageSize="+s;
                        }
                    </script>
                </c:if>
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