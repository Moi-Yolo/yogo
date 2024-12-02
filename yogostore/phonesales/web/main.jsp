<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/javascript" src="<%=path %>/js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="<%=path %>/js/slider.js"></script>
    <link href="<%=path %>/css/css.css" type="text/css" rel="stylesheet">
</head>
<body>
<jsp:include flush="true" page="/incTop.jsp"></jsp:include>

<!--main-->
<div id="main">
    <!--中-->
    <div class="zhong">
        <div class="banner_as">
            <div id="demo02" class="flexslider">
                <ul class="slides">
                    <li>
                        <div class="img"><img src="<%=path%>/image/iphone.png" alt="" /></div>
                    </li>
                    <li>
                        <div class="img"><img src="<%=path%>/image/iqqo.jpg" alt="" /></div>
                    </li>
                    <li>
                        <div class="img"><img src="<%=path%>/image/oppoFind.png" alt="" /></div>
                    </li>
                    <li>
                        <div class="img"><img src="<%=path%>/image/iqqo2.png" alt="" /></div>
                    </li>


                </ul>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(function(){

            $('#demo01').flexslider({
                animation: "slide",
                direction:"horizontal",
                easing:"swing"
            });

            $('#demo02').flexslider({
                animation: "slide",
                direction:"vertical",
                easing:"swing"
            });

        });
    </script>
    <div style="clear:both"></div>
</div>
<!--热卖产品-->
<div id="main3">
    <div class="tittle_pp">最新上架<a href="<%=path %>/commodityQuery"><img src="<%=path %>/image/mone.jpg"></a></div>

    <c:forEach  items="${commodityList}"  var="commodity" varStatus="sta">
        <div class="conent_warp" style="margin-left:0px;">
            <div class="conent_nei">
                <div class="tupian"><a href="<%=path%>/commoditycontent?id=${commodity.commid}"><img src="<%=path %>/${commodity.commpicture1}"></a></div>
                <div class="conent_wenzi">
                    <p>${commodity.commname}</p>
                    <p><span>￥${commodity.modprice}</span></p>
                </div>
            </div>
        </div>
    </c:forEach>
    <script type="text/javascript">
        $(document).ready(function(){
            $(".conent_warp").mouseover(function(){
                $(this).children(".conent_nei").css("border","1px solid #d62c2c")

            });
            $(".conent_warp").mouseout(function(){
                $(this).children(".conent_nei").css("border","1px solid #e2e2e2")

            });

        });

    </script>

</div>


<div style="clear:both"></div>
<jsp:include flush="true" page="/incFoot.jsp"></jsp:include>
</body>
</html>