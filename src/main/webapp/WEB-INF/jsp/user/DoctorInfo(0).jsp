<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

    <title>主治医生</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="../css/style.css"/>
    <link href='http://fonts.googleapis.com/css?family=Belgrano'
          rel='stylesheet' type='text/css'>
    <!-- jQuery file -->
    <script src="../js/jquery.min.js"></script>
    <script src="../js/jquery.tabify.js" type="text/javascript" charset="utf-8"></script>
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
        #bg{
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
            当前用户：<c:out value="${sessionScope.user_name}" default="默认"></c:out><a href="/alllogin" class="logout_b"
                                                                                  style="color:red">登出</a> <br>
            <div class="time"></div>
        </div>
        <div class="menu">
            <ul>
                <li><a href="UserFrontPage">首页</a></li>
                <li><a href="PasswordChange">修改密码</a></li>
                <li><a href="javascript:window.location.reload(true);">刷新</a></li>
                <li><a href="HelpPage">帮助</a></li>
                <li><a href="../../../UserEpidemic.jsp" class="selected">实时疫情</a></li>
                <li><a href="userHouseofhello.jsp">医院信息网</a></li>
            </ul>
        </div>
    </div>
    <div class="center_content">
        <div id="right_wrap">
            <div id="right_content">
                <h2>主治医生信息</h2>
                <div id="tab1" class="tabcontent">
                    <h3>基本信息</h3>
                    <div class="form">

                        <img alt="个人照片" src="img/${doctor_id}.jpg"
                             style="float: right;height: 150px;width: 150px;margin-right: 10%">

                        <div class="form_row" style="width: 60%;clear:none">
                            <label>姓名：</label> <input type="text" class="form_input"
                                                      value="${doctor_name}" name="" readonly="readonly"
                                                      style="width: 20%"/>
                        </div>

                        <div class="form_row" style="width: 60%;clear:none">
                            <label>工作编号：</label> <input type="text" class="form_input"
                                                        value="${doctor_id}" name="" readonly="readonly"
                                                        style="width: 40%"/>
                        </div>
                        <div class="form_row" style="width: 60%;clear:none">
                            <label>性别：</label> <input type="text" class="form_input"
                                                      value="${doctor_sex}" name="" readonly="readonly"
                                                      style="width: 10%;margin-right: 20px"/>
                        </div>
                        <div class="form_row" style="width: 60%;clear:none">
                            <label>年龄：</label> <input type="text" class="form_input"
                                                      value="${doctor_age}" name="" readonly="readonly"
                                                      style="width: 10%;float:left;"/>
                        </div>
                        <div class="form_row" style="width: 60%;clear:none">
                            <label>联系方式：</label> <input type="text" class="form_input"
                                                        value="${doctor_ph}" name="" readonly="readonly"
                                                        style="width: 40%"/>
                        </div>
                        <div class="form_row" style="width: 60%;clear:none">
                            <label>科室：</label> <input type="text" class="form_input" name=""
                                                      value="${department_name}" readonly="readonly"
                                                      style="width: 20%"/>
                        </div>
                        <div class="form_row" style="width: 60%;clear:none">
                            <label>个人简介：</label>
                            <textarea class="form_textarea" name="" readonly="readonly"
                                      style="width: 300px;">${introduction}</textarea>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>

            </div>
        </div>
        <!-- end of right content-->


        <div class="sidebar" id="sidebar">
            <h2>信息查询</h2>

            <ul>
                <li><a href="PatientInfo">病人</a></li>
                <li><a href="PrescribeInfo">处方</a></li>
                <li><a href="ReportInfo">检验报告</a></li>
                <li><a href="DoctorInfo" class="selected">主治医生</a></li>
            </ul>

            <h2>病房操作</h2>

            <ul>
                <li><a href="WardInfo">病房信息</a></li>
                <li><a href="WardChange">换房申请</a></li>
            </ul>

            <h2>挂号</h2>

            <ul>
                <li><a href="RegisterDoc">医生预约</a></li>
            </ul>

            <h2>出院</h2>
            <ul>
                <li><a href="OutHospital">出院申请</a></li>
                <li><a href="PayPrice">费用缴纳</a></li>
                <li><a href="History">住院历史</a>
            </ul>

        </div>


        <div class="clear"></div>
        <!-- important!!! -->
    </div>
    <!--end of center_content-->

    <div class="footer">CopyRight©2022 医院住院管理系统</div>

</div>
</body>

</html>
