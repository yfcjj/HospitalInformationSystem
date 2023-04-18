<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

    <title>帮助</title>
    <meta name="viewport"
          content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
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
            background: url(${pageContext.request.contextPath}/img/user-icon.jpg);
            padding: 0px;
            text-align: center;
        }
    </style>

</head>
<body id="bg">
<div id="panelwrap" >

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
                <li><a href="AdminFrontPage">首页</a></li>
                <li><a href="AdminPasswordChange">修改密码</a></li>
                <li><a href="javascript:window.location.reload(true);">刷新</a></li>
                <li><a href="AdminHelpPage" class="selected">帮助</a></li>
                <li><a href="../../../epidemic.jsp" class="selected">实时疫情</a></li>
                <li><a href="adminhouseofhello.jsp">医院信息网</a></li>
            </ul>
        </div>
    </div>

    <div class="center_content">
        <div id="right_wrap">
            <div id="right_content">
                <h2>帮助</h2>
                <div id="tab2" class="tabcontent" style="height: 100%">
                    <h3>医院住院系统使用说明书：<a target="_blank" href="${pageContext.request.contextPath}/document/医院住院管理系统用户使用手册.pdf">点击立即下载</a></h3>
                    <div class="mxgraph" style="max-width:100%;border:1px solid transparent;" data-mxgraph="{&quot;highlight&quot;:&quot;#0000ff&quot;,&quot;nav&quot;:true,&quot;resize&quot;:true,&quot;toolbar&quot;:&quot;zoom layers lightbox&quot;,&quot;edit&quot;:&quot;_blank&quot;,&quot;xml&quot;:&quot;&lt;mxfile host=\&quot;Electron\&quot; modified=\&quot;2022-04-04T03:43:35.239Z\&quot; agent=\&quot;5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) draw.io/14.9.6 Chrome/89.0.4389.128 Electron/12.0.16 Safari/537.36\&quot; etag=\&quot;iNbMjVzpoMH0wLdx8XWg\&quot; version=\&quot;14.9.6\&quot; type=\&quot;device\&quot;&gt;&lt;diagram name=\&quot;Page-1\&quot; id=\&quot;c7558073-3199-34d8-9f00-42111426c3f3\&quot;&gt;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&lt;/diagram&gt;&lt;/mxfile&gt;&quot;}"></div>
                    <script type="text/javascript" src="https://viewer.diagrams.net/js/viewer-static.min.js"></script>
                </div>

            </div>
        </div>
        <!-- end of right content-->


        <div class="sidebar" id="sidebar">
            <h2>信息查询</h2>

            <ul>
                <li><a href="AdminPatientInfo">病人</a></li>
                <li><a href="AdminDoctorInfo">医生</a></li>
                <li><a href="AdminWardInfo">病房</a></li>
                <li><a href="AdminDepartmentInfo">科室</a></li>
            </ul>

            <h2>操作</h2>

            <ul>
                <li><a href="AdminAddDoctor">医生录入</a></li>
                <li><a href="AdminAddPatient">病人录入</a></li>
                <li><a href="AdminAddWard">新增病房</a></li>
                <li><a href="AdminAddDepartment">新增科室</a></li>
                <li><a href="AdminConfirm">申请核实</a></li>
            </ul>

        </div>


        <div class="clear"></div><!-- important!!! -->
    </div>
    <!--end of center_content-->

    <div class="footer">CopyRight©2022 医院住院管理系统</div>

</div>
</body>

</html>
