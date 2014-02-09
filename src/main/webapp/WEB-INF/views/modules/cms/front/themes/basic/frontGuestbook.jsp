<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<html>
<head>
    <title>吉林吉翔律师事务所</title>
    <meta charset="utf-8">
    <link rel="icon" href="${ctxStatic}/jilinjixiang/images/favicon.ico">
    <link rel="shortcut icon" href="${ctxStatic}/jilinjixiang/images/favicon.ico" />
    <link rel="stylesheet" href="${ctxStatic}/jilinjixiang/css/style.css">
    <script src="${ctxStatic}/jilinjixiang/js/jquery.js"></script>
    <script src="${ctxStatic}/jilinjixiang/js/jquery-migrate-1.1.1.js"></script>
    <script src="${ctxStatic}/jilinjixiang/js/superfish.js"></script>
    <script src="${ctxStatic}/jilinjixiang/js/forms.js"></script>
    <script src="${ctxStatic}/jilinjixiang/js/jquery.equalheights.js"></script>
    <script src="${ctxStatic}/jilinjixiang/js/jquery.easing.1.3.js"></script>
    <link href="${ctxStatic}/jquery-validation/1.11.1/jquery.validate.min.css" type="text/css" rel="stylesheet" />
    <script src="${ctxStatic}/jquery-validation/1.11.1/jquery.validate.min.js" type="text/javascript"></script>
    <script src="${ctxStatic}/jquery-validation/1.11.1/jquery.validate.method.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="${ctxStatic}/jilinjixiang/css/form.css">
    <script type="text/javascript">
        $(document).ready(function() {
            <c:if test="${not empty message}">alert("${message}");</c:if>
            $("#inputForm").validate({
                rules: {
                    validateCode: {remote: "${pageContext.request.contextPath}/servlet/validateCodeServlet"}
                },
                messages: {
                    content: {required: "请填写留言内容"},
                    validateCode: {remote: "验证码不正确"}
                },
                errorContainer: "#messageBox",
                errorPlacement: function(error, element) {
                    if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
                        error.appendTo(element.parent().parent());
                    } else {
                        error.insertAfter(element);
                    }
                }
            });
            $("#main_nav li").each(function(){
                $(this).toggleClass("active", $(this).text().indexOf('公共留言')>=0);
            });
        });
        function page(n,s){
            location="${ctx}/guestbook?pageNo="+n+"&pageSize="+s;;
        }
    </script>

    <!--[if lt IE 9]>
    <script src="${ctxStatic}/jilinjixiang/js/html5shiv.js"></script>
    <link rel="stylesheet" media="screen" href="${ctxStatic}/jilinjixiang/css/ie.css">

    <![endif]-->
    <!--引用百度地图API-->
    <style type="text/css">
        html,body{margin:0;padding:0;}
        .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
        .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
    </style>
    <script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>

</head>
<body>
<!--==============================header=================================-->
<style>
    #inputForm input {
        font-size:16px;
        color:#5e5e5e;
        line-height: 20px;
        border: 1px solid #e6e6e6;
        padding: 5px 14px;
        width: 100%;
        height: 30px;
        font-family: Arial, Helvetica, sans-serif;
        box-sizing: border-box;
        -moz-box-sizing: border-box; /*Firefox 1-3*/
        -webkit-box-sizing: border-box; /* Safari */
    }


    #inputForm select {
        font-size:16px;
        color:#5e5e5e;
        line-height: 20px;
        border: 1px solid #e6e6e6;
        padding: 5px 14px;
        width: 100%;
        height: 30px;
        font-family: Arial, Helvetica, sans-serif;
        box-sizing: border-box;
        -moz-box-sizing: border-box; /*Firefox 1-3*/
        -webkit-box-sizing: border-box; /* Safari */
    }

    #inputForm textarea {
        font-size:16px;
        color:#5e5e5e;
        height: 273px;
        overflow: auto;
        border: 1px solid #e6e6e6;
        padding: 5px 14px;
        line-height: 20px;
        width: 100%;
        position: relative;
        resize:none;
        box-sizing: border-box;
        -moz-box-sizing: border-box; /*Firefox 1-3*/
        -webkit-box-sizing: border-box; /* Safari */
        font-family: Arial, Helvetica, sans-serif;
        margin: 0;

    }
</style>
<header>
    <div class="container_12">
        <div class="grid_12">
            <h1><a href="#"><img src="${ctxStatic}/jilinjixiang/images/logo.png" alt="吉林吉翔律师事务所"></a> </h1><div class="clear"></div>

            <div class="menu_block">
                <nav  class="" >
                    <ul class="sf-menu">
                        <li><a href="#">首页 </a></li>
                        <li><a href="#">律师团队 </a></li>
                        <li><a href="#">业务领域 </a></li>
                        <li><a href="#">招贤纳士 </a></li>
                        <li><a href="#">诉讼与仲裁 </a></li>
                        <li class="current"><a href="/f/guestbook">联系我们 </a></li>
                    </ul>
                </nav>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</header>
<!--=======content================================-->

<div class="content">
    <div class="container_12">
        <div class="grid_6">
            <h3 class="head2">联系信息</h3>
            <div class="map">
                <div style="width:450px;height:400px;border:#ccc solid 1px;" id="dituContent"></div>
                <address>
                    <dl>
                        <dt><p>吉林省长春市朝阳区东朝阳路669号1508</p>
                        </dt>
                        <dd><span>电话：</span>0431-81902707</dd>
                        <dd><span>传真：</span>0431-81902709</dd>

                    </dl>
                </address>

            </div>
        </div>
        <div class="grid_6 prefix_1">
            <h3 class="head2">联系我们</h3>
            <form:form id="inputForm" action="" method="post" class="form-horizontal">
            <fieldset>
                <div class="control-group">
                    <label class="control-label">名称:</label>
                    <div class="controls">
                        <input type="text" name="name" maxlength="11" class="required" style="width:300px;"/>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">邮箱:</label>
                    <div class="controls">
                        <input type="text" name="email" maxlength="50" class="required email" style="width:300px;"/>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">电话:</label>
                    <div class="controls">
                        <input type="text" name="phone" maxlength="50" class="required phone" style="width:300px;"/>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">单位:</label>
                    <div class="controls">
                        <input type="text" name="workunit" maxlength="50" class="required" style="width:300px;"/>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">留言分类:</label>
                    <div class="controls">
                        <select name="type" class="txt required" style="width:100px;">
                            <option value="">请选择</option>
                            <c:forEach items="${fns:getDictList('cms_guestbook')}" var="type">
                                <option value="${type.value}">${type.label}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">留言内容:</label>
                    <div class="controls">
                        <textarea name="content" rows="4" maxlength="200" class="required" style="width:400px;"></textarea>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">验证码:</label>
                    <div class="controls">
                        <tags:validateCode name="validateCode" />
                    </div>
                </div>
                <div class="form-actions">
                    <input class="btn" type="submit" value="提 交" style="height: 30px"/>&nbsp;
                </div>
                <div id="messageBox" class="alert alert-error" style="display:none">输入有误，请先更正。</div>
                </fieldset>
            </form:form>
<%--
            <form id="form">
                <div class="success_wrapper">
                    <div class="success">Contact form submitted!<br>
                        <strong>We will be in touch soon.</strong> </div></div>
                <fieldset>
                    <label class="name">
                        <input type="text" value="Name:">
                        <br class="clear">
                        <span class="error error-empty">*This is not a valid name.</span><span class="empty error-empty">*This field is required.</span> </label>
                    <label class="email">
                        <input type="text" value="E-mail:">
                        <br class="clear">
                        <span class="error error-empty">*This is not a valid email address.</span><span class="empty error-empty">*This field is required.</span> </label>
                    <label class="phone">
                        <input type="tel" value="Phone:">
                        <br class="clear">
                        <span class="error error-empty">*This is not a valid phone number.</span><span class="empty error-empty">*This field is required.</span> </label>
                    <label class="message">
                        <textarea>Message:</textarea>
                        <br class="clear">
                        <span class="error">*The message is too short.</span> <span class="empty">*This field is required.</span> </label>
                    <div class="clear"></div>
                    <div class="btns"><a data-type="reset" class="btn">clear</a><a data-type="submit" class="btn">send</a>
                        <div class="clear"></div>
                    </div></fieldset></form>
--%>
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
<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMarker();//向地图中添加marker
    }

    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(125.323706,43.888818);//定义一个中心点坐标
        map.centerAndZoom(point,17);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }

    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }

    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
        var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
        map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
        var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
        map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
        var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
        map.addControl(ctrl_sca);
    }

    //标注点数组
    var markerArr = [{title:"吉林吉翔律师事务所",content:"吉林吉翔律师事务所",point:"125.322844|43.889273",isOpen:1,icon:{w:21,h:21,l:0,t:0,x:6,lb:5}}
    ];
    //创建marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
            var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point,{icon:iconImg});
            var iw = createInfoWindow(i);
            var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
            marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                borderColor:"#808080",
                color:"#333",
                cursor:"pointer"
            });

            (function(){
                var index = i;
                var _iw = createInfoWindow(i);
                var _marker = marker;
                _marker.addEventListener("click",function(){
                    this.openInfoWindow(_iw);
                });
                _iw.addEventListener("open",function(){
                    _marker.getLabel().hide();
                })
                _iw.addEventListener("close",function(){
                    _marker.getLabel().show();
                })
                label.addEventListener("click",function(){
                    _marker.openInfoWindow(_iw);
                })
                if(!!json.isOpen){
                    label.hide();
                    _marker.openInfoWindow(_iw);
                }
            })()
        }
    }
    //创建InfoWindow
    function createInfoWindow(i){
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        return iw;
    }
    //创建一个Icon
    function createIcon(json){
        var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        return icon;
    }

    initMap();//创建和初始化地图
</script>
</html>
