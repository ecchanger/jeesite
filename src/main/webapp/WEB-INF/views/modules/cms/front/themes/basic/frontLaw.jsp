<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<html>
<head>
    <title>吉林吉翔律师事务所</title>
    <meta charset="utf-8">
    <link rel="icon" href="${ctxStatic}/jilinjixiang/images/favicon.ico">
    <link rel="shortcut icon" href="${ctxStatic}/jilinjixiang/images/favicon.ico" />
    <link rel="stylesheet" href="${ctxStatic}/jilinjixiang/css/style.css">
    <link rel="stylesheet" href="${ctxStatic}/jilinjixiang/css/slider.css">
    <script src="${ctxStatic}/jilinjixiang/js/jquery.js"></script>
    <script src="${ctxStatic}/jilinjixiang/js/jquery-migrate-1.1.1.js"></script>
    <script src="${ctxStatic}/jilinjixiang/js/superfish.js"></script>
    <script src="${ctxStatic}/jilinjixiang/js/jquery.equalheights.js"></script>
    <script src="${ctxStatic}/jilinjixiang/js/jquery.easing.1.3.js"></script>
    <script src="${ctxStatic}/jilinjixiang/js/tms-0.4.1.js"></script>
    <script>
        $(window).load(function(){
            $('.slider')._TMS({
                show:0,
                pauseOnHover:false,
                prevBu:'.prev',
                nextBu:'.next',
                playBu:false,
                duration:800,
                preset:'fade',
                pagination:true,//'.pagination',true,'<ul></ul>'
                pagNums:false,
                slideshow:8000,
                numStatus:false,
                banners:true,
                waitBannerAnimation:false,
                progressBar:false
            })
        });


    </script>
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
                        <li><a href="/f">首页 </a></li>
                        <li><a href="/f/aboutTeam">律师团队 </a></li>
                        <li><a href="/f/business">业务领域 </a></li>
                        <li><a href="/f/job">招贤纳士 </a></li>
                        <li class="current"><a href="/f/law">诉讼与仲裁 </a></li>
                        <li><a href="/f/guestbook">联系我们 </a></li>
                    </ul>
                </nav>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</header>
<div class="top_block">
    <div class="slider-relative">
        <div class="slider-block">
            <div class="slider">
                <ul class="items">
                    <li><img src="${ctxStatic}/jilinjixiang/images/slide.jpg" alt="">
                        <div class="banner">值得信任的经验</div>
                    </li>
                    <li><img src="${ctxStatic}/jilinjixiang/images/slide1.jpg" alt="">
                        <div class="banner">正确选择</div>
                    </li>
                    <li><img src="${ctxStatic}/jilinjixiang/images/slide2.jpg" alt="">
                        <div class="banner">助你一臂之力</div>
                    </li>
                    <li><img src="${ctxStatic}/jilinjixiang/images/slide3.jpg" alt="">
                        <div class="banner">客户第一</div>
                    </li>
                </ul>
            </div>
        </div>

    </div>
    <div class="container_12">
        <div class="grid_4">
            <div class="box"><img src="${ctxStatic}/jilinjixiang/images/l-m-1.jpg" alt=""><a href="#" class="maxheight">融资<img src="${ctxStatic}/jilinjixiang/images/link_bg.png" alt=""></a></div>
        </div>
        <div class="grid_4">
            <div class="box"><img src="${ctxStatic}/jilinjixiang/images/l-m-2.jpg" alt=""><a href="#" class="maxheight">房地产建设工程<img src="${ctxStatic}/jilinjixiang/images/link_bg.png" alt=""></a></div>
        </div>
        <div class="grid_4">
            <div class="box"><img src="${ctxStatic}/jilinjixiang/images/l-m-3.jpg" alt=""><a href="#" class="maxheight">能源矿产 <img src="${ctxStatic}/jilinjixiang/images/link_bg.png" alt=""></a></div>
        </div>
        <div class="grid_4">
            <div class="box"><img src="${ctxStatic}/jilinjixiang/images/l-m-4.jpg" alt=""><a href="#" class="maxheight">资本市场证券 <img src="${ctxStatic}/jilinjixiang/images/link_bg.png" alt=""></a></div>
        </div>
    </div>
</div>
<!--=======content================================-->

LAW
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