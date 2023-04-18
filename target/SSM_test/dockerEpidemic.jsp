<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<html>
<head>
    <title>实时疫情系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%--    <link rel="stylesheet" href="css/normalize.css">--%>
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <link href='http://fonts.googleapis.com/css?family=Belgrano'
          rel='stylesheet' type='text/css'>
    <!-- jQuery file -->
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.tabify.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
        var $ = jQuery.noConflict();
        $(function () {
            $('#tabsmenu').tabify();
            $(".toggle_container").hide();
            $(".trigger").click(function () {
                $(this).toggleClass("active").next().slideToggle("slow");
                return false;
            });
        });
        $(function () {
            $(".time").text(new Date().toLocaleString());
            //setInterval("$('#currentTime').text(new Date().toLocalsString());",1000);
            setInterval(function () {
                $(".time").text(new Date().toLocaleString());
            }, 1000);
        });
    </script>

    <style type="text/css">
        #bg {
            background: url(${pageContext.request.contextPath}/img/user-icon.jpg)
        }
    </style>

</head>
<body id="bg">
<div id="panelwrap">

    <div class="header">
        <div class="title">
            <a href="#">医院住院管理系统</a>
        </div>
        <div class="header_right">
            当前管理员：<c:out value="${sessionScope.admin.admin_name}" default="默认"></c:out><a href="/alllogin"
                                                                                          class="logout_b"
                                                                                          style="color:red">登出</a> <br>
            <div class="time"></div>
        </div>
        <div class="menu">
            <ul>
                <li><a href="DoctorFrontPage">首页</a></li>
                <li><a href="DoctorPasswordChange">修改密码</a></li>
                <li><a href="javascript:window.location.reload(true);">刷新</a></li>
                <li><a href="DoctorHelpPage">帮助</a></li>
                <li><a href="dockerEpidemic.jsp" class="selected">实时疫情</a></li>
                <li><a href="userHouseofhello.jsp">医院信息网</a></li>
            </ul>
        </div>
    </div>

    <div id="right_wrap">
        <div id="right_content">
            <h2>全国实时疫情</h2>
            <div id="tab2" class="tabcontent" style="height: 100%">
                <div id="container">
                    <div class="top">
                        <div class="top-top">
                            <div class="item">
                                <div>现有确诊</div>
                                <div class="one">488</div>
                                <div>昨日<span class="one">+7</span></div>
                            </div>
                            <div class="item">
                                <div>无症状</div>
                                <div class="two">301</div>
                                <div>昨日<span class="two">+12</span></div>
                            </div>
                            <div class="item">
                                <div>现有疑似</div>
                                <div class="three">1</div>
                                <div>昨日<span class="three">+30</span></div>
                            </div>
                            <div class="item">
                                <div>现有重症</div>
                                <div class="four">3</div>
                                <div>昨日<span class="four">-1</span></div>
                            </div>
                        </div>
                        <div class="top-top top-bottom">
                            <div class="item">
                                <div>累计确诊</div>
                                <div class="five">103113</div>
                                <div>昨日<span class="five">+30</span></div>
                            </div>
                            <div class="item">
                                <div>境外输入</div>
                                <div class="six">5435</div>
                                <div>昨日<span class="six">+14</span></div>
                            </div>
                            <div class="item">
                                <div>累计治愈</div>
                                <div class="seven">97771</div>
                                <div>昨日<span class="seven">+22</span></div>
                            </div>
                            <div class="item">
                                <div>累计死亡</div>
                                <div class="eight">4854</div>
                                <div>昨日<span class="eight">+1</span></div>
                            </div>
                        </div>
                    </div>
                    <div class="tab">
                        <!--内容-->
                        <div class="tab_content">
                            <div class="dom" style="display: block; text-align: center">
                                <div class="center-text">现有确诊病例数，排除治愈、死亡</div>
                                <div ref="fymapbox" style="height: 400px; width: 700px" class="fymp" id="main"></div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>


        </div>
    </div>


    <div class="sidebar" id="sidebar">
        <h2>信息查询</h2>

        <ul>
            <li><a href="DoctorPatientInfo">病人</a></li>
            <li><a href="DoctorDepartmentInfo">科室</a></li>
            <li><a href="DoctorRegisterInfo">预约</a></li>
        </ul>

        <h2>操作</h2>

        <ul>
            <li><a href="DoctorPrescribeChange">处方修改</a></li>
            <li><a href="DoctorInfoChange">个人信息修改</a></li>

        </ul>

    </div>
    <div class="clear"></div><!-- important!!! -->
    <!--end of center_content-->
    <div class="footer">CopyRight©2022 医院住院管理系统</div>
</div>
</body>
<script src="http://upcdn.b0.upaiyun.com/libs/jquery/jquery-2.0.2.min.js"></script>
<!-- <script src="https://cdn.jsdelivr.net/npm/echarts@5.2.2/dist/echarts.js.map"></script> -->
<script src="${pageContext.request.contextPath}/js/echarts.js"></script>
<script src="${pageContext.request.contextPath}/js/china.js"></script>
<script>
    // 每一小时获取一次
    let yqTime = setInterval(function () {
        let fyTime = new Date().valueOf();
    }, 3600000);
    const option = {
        title: {
            text: "最新疫情地图", //显示标题
            textStyle: {
                fontSize: 14
            }
        },
        tooltip: {
            trigger: 'item'
        },
        series: [{
            name: "确诊人数", //鼠标移动提示文字
            type: "map",
            map: "china", //渲染中国地图
            label: {
                //控制显示对于地区的汉字
                show: true,
                color: "#545454", //控制地区名的字体颜色
                fontSize: 10
            },
            itemStyle: {
                areaColor: "#fff", //设置地图背景色
                borderColor: "#33ccff", //设置地图边线颜色
            },
            roam: false, //支持滚轮放大缩小 以及拖拽
            zoom: 1.2, //控制地图的放大和缩小
            emphasis: {
                //控制鼠标滑过之后的背景色和字体颜色
                label: {
                    color: "#000",
                    fontSize: 12,
                },
                itemStyle: {
                    areaColor: "#33ccff",
                    borderColor: "#33ccff",
                },
            },
            data: [],
        },],
        visualMap: [{
            type: "piecewise",
            show: true,
            itemWidth: 10,
            itemHeight: 10,
            left: "left",
            textGap: 1,
            itemGap: 2,
            pieces: [

                //分段
                {
                    min: 10000
                },
                {
                    min: 1000,
                    max: 9999
                },
                {
                    min: 100,
                    max: 999
                },
                {
                    min: 10,
                    max: 99
                },
                {
                    min: 0,
                    max: 9
                },
                {
                    min: 0,
                    max: 0
                },
            ],
            //  orient:'horizontal', //修改横向显示 默认垂直显示
            inRange: {
                symbol: "rect", //显示数据方块小图标形状
                color: ["#e2ecf5", "#ed4343"], // 显示颜色
            },
        },],
    };
    window.onload = function () {
        var mychart = echarts.init(document.getElementById('main'));
        $.ajax({
            url: `https://interface.sina.cn/news/wap/fymap2020_data.d.json?_=${yqTime}`,
            type: 'get',
            dataType: 'jsonp', // 请求方式为jsonp
            success: function (res) {
                console.log(res);
                let list = res.data.list.map((item) => ({
                    name: item.name,
                    value: item.econNum,
                }));
                option.series[0].data = list; //将数据赋给series里面的data然后进行渲染
                mychart.setOption(option);
            }
        });
    };
</script>
<style>
    .fymp {
        background-color: #ffffff;
        border: 1px solid #bbb;
        border-radius: 10px;
    }

    .title {
        font-weight: 600;
        font-size: 0.5rem;
    }
</style>
</style>
</html>