<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>CLIENTS</title>
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
    <meta name="decorator" content="cms_default_${site.theme}"/>
    <meta name="description" content="${article.description} ${category.description}" />
    <meta name="keywords" content="${article.keywords} ${category.keywords}" />
    <script type="text/javascript">
        $(document).ready(function() {
            if ("${category.allowComment}"=="1" && "${article.articleData.allowComment}"=="1"){
                $("#comment").show();
                page(1);
            }
        });
        function page(n,s){
            $.get("${ctx}/comment",{theme: '${category.site.theme}', 'category.id': '${category.id}',
                contentId: '${article.id}', title: '${article.title}', pageNo: n, pageSize: s, date: new Date().getTime()
            },function(data){
                $("#comment").html(data);
            });
        }
    </script>
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