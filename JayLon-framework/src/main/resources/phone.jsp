<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@page isELIgnored="false" %>--%>
<%--首页--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>手机商城管理系统</title>
    <link href="./static/css/index.css" rel="stylesheet">
    <link rel="stylesheet" href="./static/css/minireset.css" />
    <link rel="stylesheet" href="./static/css/common.css" />
    <link rel="stylesheet" href="./static/css/iconfont.css" />
    <link rel="stylesheet" href="./static/css/index.css" />
    <link rel="stylesheet" href="./static/css/swiper.min.css" />
</head>
<body>
<%--<h1>${user.username},欢迎登录手机商城管理系统</h1>--%>

<%--       <input type="button" value="新增" ><br>--%>
<%--<hr>--%>
<div>
<table border="1" cellspacing="0" width="80%" >
    <div id="app" style="background: black">
        <div class="topbar" style="background: black">
            <div class="w">
                <font size="3">欢迎来到iPhone官网(山寨版)</font>
                <div class="topbar-right" style="background: black">
<%--                    <a href="login.html" class="login">登录</a>--%>
<%--                    <a href="regist.html" class="register">注册</a>--%>
                        <h1>${user.username},欢迎登录</h1>
                    <a
                            href="cart.html"
                            class="cart iconfont icon-gouwuche
			"
                    >
                        购物车

                    </a>
                    <a href="login.html" class="admin">后台管理</a>
                </div>

            </div>
        </div>
<%--        <div class="header w" style="background: #2a2a2a">--%>

<%--            <div class="header-search" style="background: #2a2a2a">--%>
<%--                <input type="text" placeholder="iPad" />--%>
<%--                <button class="iconfont icon-search"></button>--%>
<%--            </div>--%>
<%--        </div>--%>
        <div class="banner w clearfix" style="background: black">
            <div class="banner-left" style="background: black">
                <ul>
                    <li>
                        <a href="">
                            <span>Mac</span>
                            <i class="iconfont icon-jiantou"></i
                            ></a>
                    </li>
                    <li>
                        <a href="">
                            <span>iPad</span>
                            <i class="iconfont icon-jiantou"></i
                            ></a>
                    </li>
                    <li>
                        <a href="">
                            <span>iPhone</span>
                            <i class="iconfont icon-jiantou"></i
                            ></a>
                    </li>
                    <li>
                        <a href="">
                            <span>Watch</span>
                            <i class="iconfont icon-jiantou"></i
                            ></a>
                    </li>
                    <li>
                        <a href="">
                            <span>AidPods</span>
                            <i class="iconfont icon-jiantou"></i
                            ></a>
                    </li>
                    <li>
                        <a href="">
                            <span>AirTag</span>
                            <i class="iconfont icon-jiantou"></i
                            ></a>
                    </li>
                    <li>
                        <a href="">
                            <span>iOS16</span>
                            <i class="iconfont icon-jiantou"></i
                            ></a>
                    </li>
                </ul>
            </div>
            <div class="banner-right">
                <div class="swiper-container" >
                    <ul class="swiper-wrapper">
                        <li class="swiper-slide">
                            <img src="./images/img_3.png" alt="" style="background: #2a2a2a">
                            <!-- <div class="banner-img"></div> -->
                        </li>
                        <li class="swiper-slide">
                            <img src="./images/img_1.png" alt="" style="background: #2a2a2a">
                            <!-- <div class="banner-img"></div> -->
                        </li>
                        <li class="swiper-slide">
                            <img src="./images/img_4.png" alt="" style="background: #2a2a2a">
                            <!-- <div class="banner-img"></div> -->
                        </li>
                    </ul>
                    <div class="swiper-button-prev"></div>

                    <div class="swiper-button-next"></div>

                    <!-- Add Pagination -->
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </div>
        <div class="books-list " style="background: aliceblue">
            <div class="w">
                <div class="list">
                    <div class="list-header">

                    </div>
                    <div class="list-content" style="background: aliceblue">
                        <form action="/cart/addToCart" method="post">
                        <c:forEach items="${phones}" var="phone" varStatus="status">

                            <div class="list-item" style="background: aliceblue">
                                    <img width="55px" height="70px"
                                         src="${pageContext.request.contextPath}/images/${phone.phoneImage}">
                                    <p>手机型号: ${phone.phoneName}</p>
                                    <p>手机id: ${phone.phoneId}</p>
                                    <p>手机数量: ${phone.phoneCounts}</p>
                                    <p>手机发行日期: ${phone.phoneIssuingDate}</p>
                                <button><a href="/phone/getPhone?phoneId=${phone.phoneId}">加入购物车</a></button>
<%--                                <input type="hidden" name="phoneId" value='${phone.phoneId}'/>--%>
<%--                                <input type="hidden" name="phoneCounts" value="${phone.phoneCounts}"/>--%>
<%--                                <input type="hidden" name="phoneName" value="${phone.phoneName}"/>--%>
                            </div>
                        </c:forEach>
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>
<%--    <tr>--%>
<%--        <th>手机id</th>--%>
<%--        <th>手机型号</th>--%>
<%--        <th>手机数量</th>--%>
<%--        <th>手机发行日期</th>--%>
<%--        <th>手机图片</th>--%>
<%--        <th>操作</th>--%>
<%--    </tr>--%>


<%--    <c:forEach items="${phones}" var="phone" varStatus="status">--%>
<%--        <tr align="center">--%>
<%--            <td>${phone.phoneId}</td>--%>
<%--            <td>${phone.phoneName}</td>--%>
<%--            <td>${phone.phoneCounts}</td>--%>
<%--            <td>${phone.phoneIssuingDate}</td>--%>
<%--            <td><img width="55px" height="70px"--%>
<%--                     src="${pageContext.request.contextPath}/images/${phone.phoneImage}"></td>--%>

<%--            <td><a href="phone.html">具体操作</a>--%>
<%--&lt;%&ndash;                <a href="#">删除</a></td>&ndash;%&gt;--%>
<%--        </tr>--%>

<%--    </c:forEach>--%>

</table>
</div>


<%--<script>--%>
<%--    document.getElementById("add").onclick = function (){--%>
<%--        location.href = "/brand-demo/addBrand.jsp";--%>
<%--    }--%>

<%--</script>--%>
</body>
</html>