<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="Description" content="本医生是专业的医院、理念就是责任、品质、关爱" />
    <meta name="Keywords" content="美容、减脂、内科、外科" />
    <title>医院住院管理系统- 责任、品质、关爱</title>

    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
        }
        /* 去掉所有ul和ol的小圆点 */
        ul,ol{
            list-style: none;
        }
        /* 去掉所有超链接的下划线 */
        a{
            text-decoration: none;
        }
        /* 使用继承性,给body标签设置字体 */
        body{
            font: normal 14px/25px '微软雅黑';
        }
        /* 头部 */
        header{

        }
        header .header-top{
            width: 1201px;
            margin: 0 auto;
            /* 清除浮动 */
            overflow: hidden;
        }
        header .header-top .logo{
            padding-top: 27px;
            width: 221px;
            height: 63px;
            float: left;
            font-size: 20px;
            /*color: #015E58;*/
        }

        header .header-top .tool{
            width: 266px;
            height: 77px;
            padding-top: 22px;
            float: right;
        }
        header .header-top .tool .r1{
            margin-bottom: 14px;
        }
        header .header-top .tool .r1 .tel{
            width: 32px;
            height: 25px;
        }
        header .header-top .tool .r1 .telnumber{
            font-size: 20px;
            color: #00978E;
            display: inline-block;
            width: 158px;
            height: 26px;
            text-align: center;
        }
        header .header-top .tool .r1 .icon{
            width: 24px;
            height: 24px;
        }
        header .header-top .tool .r1 .chinese_icon{
            margin-right: 15px;
        }
        header .header-top .tool .r2{
            width: 264px;
            height: 28px;
            border: 1px solid #BDBDBD;
            border-radius: 4px;
        }
        header .header-top .tool .r2 input{
            float: left;
            width: 224px;
            height: 28px;
            /* 去掉边框线 */
            border: none;
            padding-left: 20px;
            /* 去掉鼠标点击时候的蓝色边框 */
            outline: none;
        }
        header .header-top .tool .r2 button{
            float: left;
            width: 20px;
            height: 20px;
            /* 去掉背景 */
            background: none;
            /* 去掉边框 */
            border: none;
            /* 去掉鼠标点击时候的蓝色边框 */
            outline: none;
            /* 设置鼠标悬浮时鼠标指针的样式 */
            cursor: pointer;
            /* 相对定位调节搜索图标的位置 */
            position: relative;
            top: 4px;
            right: 4px;
        }
        header .main-nav{
            /* 不写宽度,即可自动撑满 */
            height: 60px;
            background-color: #00978E;
            margin-top: 20px;
        }
        header .main-nav ul{
            width: 1024px;
            height: 60px;
            margin: 0 auto;
        }
        header .main-nav ul li{
            float: left;
            width: 128px;
            text-align: center;
            /* 让行高等于盒子高，实现垂直居中效果 */
            line-height: 60px;
        }
        /* 又有li,又有cur类 */
        header .main-nav ul li.cur{
            background-color: #015E58;
        }
        header .main-nav ul li a{
            /* 将超链接转为块元素增大鼠标悬浮实现区域 */
            display: block;
            width: 150px;
            height: 60px;
            color: white;
            font-size: 16px;
        }
        header .main-nav ul li a:hover{
            background-color: #015E58;
        }

        /* banner区域 */
        .banner{
            position: relative;
        }
        .banner .banner-img{
            width: 100%;
        }
        .banner .center{
            position: absolute;
            width: 1200px;
            height: 300px;
            top: 50%;
            left: 50%;
            margin-top: -150px;
            margin-left: -600px;
        }
        .banner .center .left-btn{
            position: absolute;
            left: 0;
            top: 50%;
            margin-top: -37px;
            width: 56px;
            height: 74px;
            background-image: url(${pageContext.request.contextPath}/img/左箭头.png);
            border-radius: 6px;
        }
        .banner .center .left-btn:hover{
            background-image: url(${pageContext.request.contextPath}/img/左箭头hover.png);
        }
        .banner .center .right-btn{
            position: absolute;
            right: 0;
            top: 50%;
            /* 垂直居中,拉回负的height的一半 */
            margin-top: -37px;
            width: 56px;
            height: 74px;
            background-image: url(${pageContext.request.contextPath}/img/右箭头.png);
            border-radius: 6px;
        }
        .banner .center .right-btn:hover{
            background-image: url(${pageContext.request.contextPath}/img/右箭头hover.png);
        }
        .banner .center h2{
            position: absolute;
            width: 504px;
            height: 79px;
            font-size: 60px;
            color: #015E58;
            font-weight: normal;
            top: 50%;
            margin-top: -50px;
            left: 114px;
        }
        .banner ol{
            position: absolute;
            width: 120px;
            height: 12px;
            bottom: 20px;
            left: 50%;
            /* 水平居中,拉回负的width的一半 */
            margin-left: -60px;
        }
        .banner ol li{
            float: left;
            width: 20px;
            height: 12px;
            background-color: white;
            margin-right: 10px;
            border-radius: 4px;
        }
        /* 最后一个li没有margin */
        .banner ol li:last-child{
            margin-right: 0;
        }
        .banner ol li.cur{
            width: 30px;
            background-color: #00978E;
        }

        /* 内容部分 */
        .content{
            padding-top: 71px;
        }
        .content h3{
            border-left: 8px solid #00978E;
            padding-left: 10px;
            height: 20px;
            line-height: 20px;
        }
        .content .useful-links{
            width: 904px;
            height: 151px;
            margin: 0 auto;
        }
        .content .useful-links ul{
            /* 清除浮动 */
            overflow: hidden;
        }
        .content .useful-links ul li{
            float: left;
            width: 104px;
            margin-right: 56px;
        }
        .content .useful-links ul li span{
            /* 将span转为块元素后,才能设置文字居中 */
            display: block;
            text-align: center;
            color: #333;
            font-size: 20px;
            line-height: 40px;

        }
        .content .useful-links ul li:last-child{
            margin-right: 0;
        }
        .content .news-and-notice{
            width: 1200px;
            height: 376px;
            margin: 0 auto;
            margin-top: 56px;
        }
        .content .news-and-notice .news{
            float: left;
            width: 877px;
            height: 376px;
        }
        .content .news-and-notice .notice{
            float: left;
            width: 323px;
            height: 376px;
        }
        .content .news-and-notice .news h3{
            margin-bottom: 20px;
        }
        .content .news-and-notice .news .news-content .hot-news{
            float: left;
            width: 422px;
            height: 328px;
            margin-right: 10px;
            position: relative;
        }
        .content .news-and-notice .news .news-content .hot-news .info{
            position: absolute;
            width: 100%;
            height: 40px;
            left: 0;
            bottom: 0;
            background-color: rgba(0,0,0,0.4);
        }
        .content .news-and-notice .news .news-content .hot-news .info a{
            text-align: center;
            color: white;
            line-height: 40px;
        }
        .content .news-and-notice .news .news-content ul{
            float: left;
            width: 400px;
            height: 328px;
        }
        .content .news-and-notice .news .news-content ul li{
            line-height: 41px;
        }
        .content .news-and-notice .news .news-content ul li a{
            float: left;
            color: #666;
        }
        .content .news-and-notice .news .news-content ul li span{
            float: right;
        }
        .content .news-and-notice .news .news-content ul li.spec a{
            color: #00978E;
            font-weight: bold;
        }
        .content .news-and-notice .notice h3{
            margin-bottom: 20px;
        }
        .content .news-and-notice .notice ol li{
            overflow: hidden;
            margin-bottom: 11px;
        }
        .content .news-and-notice .notice ol li .number{
            float: left;
            width: 53px;
            height: 57px;
            background-color: #00978E;
            font-size: 30px;
            color: white;
            text-align: center;
            line-height: 57px;
            margin-right: 9px;
        }
        .content .news-and-notice .notice ol li dl dt a{
            color: #666;
        }
        .content .news-and-notice .notice ol li dl dd a{
            color: #999;
        }
        .content .ad-images{
            width: 1200px;
            margin: 20px auto;
        }
        .content .dep-info{
            height: 400px;
            background-color: #FAFAFA;
        }
        .content .dep-info .center{
            width: 1200px;
            margin: 0 auto;
            overflow: hidden;
            padding-top: 37px;
            position: relative;
        }
        .content .dep-info .center .more{
            position: absolute;
            right: 0;
            top: 37px;
            color: #999;
        }
        .content .dep-info .center .col{
            float: left;
            width: 265px;
            padding-left: 35px;
        }
        .content .dep-info .center .col h4{
            text-align: center;
            margin-bottom: 18px;
            margin-top: 20px;
            position: relative;
        }
        .content .dep-info .center .col h4::before{
            content:'';
            position: absolute;
            width: 40px;
            height: 2px;
            left: 61px;
            top: 12px;
            background-color: #00978E;
        }
        .content .dep-info .center .col h4::after{
            content:'';
            position: absolute;
            width: 40px;
            height: 2px;
            left: 162px;
            top: 12px;
            background-color: #00978E;
        }
        .content .dep-info .center .col li{
            float: left;
            width: 119px;
            height: 34px;
            border: 1px solid #CDCDCD;
            text-align: center;
            line-height: 34px;
            margin-right: 17px;
            margin-bottom: 16px;
            border-radius: 4px;
        }
        .content .dep-info .center .col li a{
            color: #333333;
        }
        .content .dep-info .center .col li.spec a{
            color: #00978E;
            font-weight: bold;
        }
        .content .dep-info .center .col li:nth-child(2n){
            margin-right: 0;
        }
        .content .exp-info{
            width: 1200px;
            margin: 0 auto;
            padding-top: 24px;
            position: relative;
        }
        .content .exp-info .more{
            position: absolute;
            right: 0;
            top: 37px;
            color: #999;
        }
        .content .exp-info ul{
            overflow: hidden;
            padding-top: 40px;
        }
        .content .exp-info ul li{
            float: left;
            width: 400px;
            height: 240px;
        }
        .content .exp-info ul li .picbox{
            float: left;
            width: 152px;
        }
        .content .exp-info ul li .picbox img{
            width: 152px;
        }
        .content .exp-info ul li .wordbox{
            float: left;
            width: 220px;
            padding-left: 10px;
            color: #333333;
            line-height: 27px;
        }

        /* 页脚 */
        footer{
            height: 395px;
            background-color: #FAFAFA;
        }
        footer .center{
            width: 1200px;
            margin: 0 auto;
            padding-top: 26px;
        }
        footer .center h3{
            font-size: 20px;
            color: #333333;
        }
        footer .center .friend-links ul{
            overflow: hidden;
            padding-top: 20px;
        }
        footer .center .friend-links li{
            float: left;
            padding: 0 50px;
        }
        footer .center .friend-links li a{
            color: #333333;
            font-size: 16px;
        }
        footer .center address{
            font-style: normal;
            padding-top: 30px;
        }
        footer .center address ul{
            width: 730px;
            padding-top: 20px;
        }
        footer .center address ul li{
            float: left;
            width: 237px;
            margin-bottom: 20px;
        }
        footer .center address ul li a{
            color: #333333;
        }
        footer .center address ul li a:hover{
            color: blue;
        }
    </style>
</head>
<body>
<!-- 页面头部 -->
<header>
    <!-- 网页的导航条 -->
    <nav class="main-nav">
        <ul>
            <li><a href="AdminFrontPage">首页</a></li>
            <li><a href="AdminPasswordChange">修改密码</a></li>
            <li><a href="javascript:window.location.reload(true);">刷新</a></li>
            <li><a href="AdminHelpPage">帮助</a></li>
            <li><a href="../../../epidemic.jsp" class="selected">实时疫情</a></li>
            <li><a href="adminhouseofhello.jsp">医院信息网</a></li>
        </ul>
    </nav>
</header>
<!-- 网页的banner -->
<section class="banner">
    <img src="${pageContext.request.contextPath}/img/banner.png" alt="" class="banner-img">
    <div class="center">
        <h2>医院住院管理系统</h2>
        <a href="" class="left-btn"></a>
        <a href="" class="right-btn"></a>
    </div>
    <!-- 轮播图小圆点, ol是绝对定位，但li是浮动的-->
    <ol>
        <li class="cur"></li>
        <li></li>
        <li></li>
        <li></li>
    </ol>
</section>

<!-- 网页的主要内容 -->
<section class="content">
    <!-- 常用链接 -->
    <div class="useful-links">
        <ul>
            <li>
                <a href="">
                    <img src="${pageContext.request.contextPath}/img/icon_jzxz.png">
                    <span>就诊须知</span>
                </a>
            </li>
            <li>
                <a href="">
                    <img src="${pageContext.request.contextPath}/img/icon_jylc.png">
                    <span>就医流程</span>
                </a>
            </li>
            <li>
                <a href="">
                    <img src="${pageContext.request.contextPath}/img/icon_zjjs.png">
                    <span>专家介绍</span>
                </a>
            </li>
            <li>
                <a href="">
                    <img src="${pageContext.request.contextPath}/img/icon_ksjs.png">
                    <span>科室介绍</span>
                </a>
            </li>
            <li>
                <a href="">
                    <img src="${pageContext.request.contextPath}/img/icon_ybjy.png">
                    <span>医保就医</span>
                </a>
            </li>
            <li>
                <a href="">
                    <img src="${pageContext.request.contextPath}/img/icon_jktj.png">
                    <span>健康体检</span>
                </a>
            </li>
        </ul>
    </div>

    <!-- 医院动态和医院公告 -->
    <div class="news-and-notice">
        <!-- 医院动态 -->
        <div class="news">
            <h3>医院动态</h3>
            <div class="news-content">
                <!-- 图片新闻 -->
                <div class="hot-news">
                    <!-- 放新闻的大图片 -->
                    <img src="${pageContext.request.contextPath}/img/news_pic.png">
                    <div class="info">
                        <a href="">“全国首届健康预防与商业医疗保险论坛”在北京医院举办</a>
                    </div>
                </div>
                <!-- 新闻列表 -->
                <ul>
                    <li><a href="">年度医疗机构用血自查评分表和科室基本信息表</a><span>03-30</span></li>
                    <li><a href="">关于上报北京市医疗机构临床用血信息的通知</a><span>03-30</span></li>
                    <li><a href="">北京医院输血科通过验收并获批开展临床基…</a><span>03-30</span></li>
                    <li class="spec"><a href="">国家药品监督管理局关于修订都梁软胶囊非处…</a><span>03-30</span></li>
                    <li><a href="">关于将多拉司琼注射剂等药品纳入本市基本医…</a><span>03-30</span></li>
                    <li><a href="">关于调整完善本市基本医疗保险门诊特殊疾病…</a><span>03-30</span></li>
                    <li><a href="">广东省药学会：关于印发《超药品说明书用药…</a><span>03-30</span></li>
                    <li><a href="">人力资源社会保障部关于将36种药品纳入国家…</a><span>03-30</span></li>
                </ul>
            </div>
        </div>
        <!-- 医院公告 -->
        <div class="notice">
            <h3>医院公告</h3>
            <ol>
                <li>
                    <div class="number">01</div>
                    <dl>
                        <dt><a href="">《养生堂》</a></dt>
                        <dd><a href="">公郭立新主任 特殊时期糖尿病人的新冠…</a></dd>
                    </dl>
                </li>
                <li>
                    <div class="number">02</div>
                    <dl>
                        <dt><a href="">《养生堂》</a></dt>
                        <dd><a href="">王少为主任 新型冠状病毒防控指引十八…</a></dd>
                    </dl>
                </li>
                <li>
                    <div class="number">03</div>
                    <dl>
                        <dt><a href="">《我要当医生》</a></dt>
                        <dd><a href="">谭玲副主任 李同舟 姚晨蕊药师</a></dd>
                    </dl>
                </li>
                <li>
                    <div class="number">04</div>
                    <dl>
                        <dt><a href="">《全民健康学院》</a></dt>
                        <dd><a href="">王建业院长 “医”路有你 健康同行</a></dd>
                    </dl>
                </li>
                <li>
                    <div class="number">05</div>
                    <dl>
                        <dt><a href="">《健康北京》</a></dt>
                        <dd><a href="">王建业院长 莫把衰老当病治</a></dd>
                    </dl>
                </li>
            </ol>
        </div>
    </div>



    <!-- 科室介绍 -->
    <div class="dep-info">
        <div class="center">
            <h3>科室介绍</h3>
            <a href="" class="more">查看更多&gt;&gt;</a>
            <div class="dep-content">
                <div class="col">
                    <h4>内科</h4>
                    <ul>
                        <li class="spec"><a href="">呼吸内科</a></li>
                        <li class="spec"><a href="">消化内科</a></li>
                        <li><a href="">神经内科</a></li>
                        <li><a href="">心血管内科</a></li>
                        <li><a href="">肾内科</a></li>
                        <li><a href="">血液内科</a></li>
                        <li><a href="">免疫科</a></li>
                        <li><a href="">內分泌科</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h4>肿瘤科</h4>
                    <ul>
                        <li class="spec"><a href="">肿瘤内科</a></li>
                        <li class="spec"><a href="">肿瘤外科</a></li>
                        <li><a href="">肿瘤妇科</a></li>
                        <li><a href="">骨肿瘤科</a></li>
                        <li><a href="">放疗科</a></li>
                        <li><a href="">肿瘤康复科</a></li>
                        <li><a href="">肿瘤综合科</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h4>外科</h4>
                    <ul>
                        <li class="spec"><a href="">普通外科</a></li>
                        <li class="spec"><a href="">神经外科</a></li>
                        <li><a href="">心胸外科</a></li>
                        <li><a href="">泌尿外科</a></li>
                        <li><a href="">肝胆外科</a></li>
                        <li><a href="">肛肠外科</a></li>
                        <li><a href="">心血管外科</a></li>
                        <li><a href="">烧伤科</a></li>
                        <li><a href="">骨外科</a></li>
                        <li><a href="">乳腺外科</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h4>儿科</h4>
                    <ul>
                        <li class="spec"><a href="">儿科综合</a></li>
                        <li class="spec"><a href="">小儿内科</a></li>
                        <li><a href="">小儿外科</a></li>
                        <li><a href="">新生儿科</a></li>
                        <li><a href="">儿童营养科</a></li>
                        <li><a href="">消化内科</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!-- 专家介绍 -->
    <div class="exp-info">
        <h3>专家介绍</h3>
        <a href="" class="more">查看更多&gt;&gt;</a>
        <ul>
            <li>
                <div class="picbox">
                    <a href="">
                        <img src="${pageContext.request.contextPath}/img/Mask%20group1.png">
                    </a>
                </div>
                <div class="wordbox">
                    <p>姓名：李琳</p>
                    <p>科室：肿瘤内科</p>
                    <p>职称：主任医师</p>
                    <p>介绍：北京医院肿瘤内科科室主任，党支部书记，副教授，硕士研究生导师，中国老年肿瘤专业委员会肺癌分委会常务委员，北京医学……</p>
                </div>
            </li>
            <li>
                <div class="picbox">
                    <a href="">
                        <img src="${pageContext.request.contextPath}/img/Mask%20group2.png">
                    </a>
                </div>
                <div class="wordbox">
                    <p>姓名：毛永辉</p>
                    <p>科室：肾脏内科</p>
                    <p>职称：主任医师</p>
                    <p>介绍：北京医院肿瘤内科科室主任，党支部书记，副教授，硕士研究生导师，中国老年肿瘤专业委员会肺癌分委会常务委员，北京医学……</p>
                </div>
            </li>
            <li>
                <div class="picbox">
                    <a href="">
                        <img src="${pageContext.request.contextPath}/img/Mask%20group3.png">
                    </a>
                </div>
                <div class="wordbox">
                    <p>姓名：黄慈波</p>
                    <p>科室：风湿免疫科</p>
                    <p>职称：主任医师</p>
                    <p>介绍：教授主任医师研究生导师卫生部北京医院风湿免疫科主任，北京大学医学部风湿免疫系副主任；海峡两岸医师交流协会风湿免疫……</p>
                </div>
            </li>
            <li>
                <div class="picbox">
                    <a href="">
                        <img src="${pageContext.request.contextPath}/img/Mask%20group4.png">
                    </a>
                </div>
                <div class="wordbox">
                    <p>姓名：曹素艳</p>
                    <p>科室：特需医疗部</p>
                    <p>职称：主任医师</p>
                    <p>介绍：北京医院特需医疗部（健康管理中心）/全科医疗部主任，老年与全科医学中心副主任，主任医师，医学硕士。北京大学医学部硕士……</p>
                </div>
            </li>
            <li>
                <div class="picbox">
                    <a href="">
                        <img src="${pageContext.request.contextPath}/img/Mask%20group5.png">
                    </a>
                </div>
                <div class="wordbox">
                    <p>姓名：陈海波</p>
                    <p>科室：神经内科</p>
                    <p>职称：主任医师</p>
                    <p>介绍：北京医院神经内科主任，主任医师，北京大学医学部神经病学系副主任、教授。中国医师协会神经内科医师分会副会长兼帕金……</p>
                </div>
            </li>
            <li>
                <div class="picbox">
                    <a href="">
                        <img src="/img/Mask%20group6.png">
                    </a>
                </div>
                <div class="wordbox">
                    <p>姓名：Jack</p>
                    <p>科室：普通外科</p>
                    <p>职称：主任医师</p>
                    <p>介绍：北京医院普通外科主任，胃肠外科主任，北京大学医学部硕士研究生导师，1985年毕业于白求恩医科大学，从事普外科临床工……</p>
                </div>
            </li>
        </ul>
    </div>
</section>
</body>
</html>
