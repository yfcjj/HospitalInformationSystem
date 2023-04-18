<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

    <title>密码修改</title>

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

        function ispasswd(s) {
            var patrn = /^(\w){5,20}$/;
            if (!patrn.exec(s)) return false;
            return true;
        }


        function cheek() {

            var str1 = document.getElementById("oldpassword").value;
            var str2 = document.getElementById("newpassword").value;
            var str3 = document.getElementById("checkpassword").value;
            var trueoldpassword = "<%=session.getAttribute("old_pwd")%>";
            if (str1 == null) {
                alert("请输入原始密码");
                return false;
            }
            else if (str1 != trueoldpassword) {
                alert("输入的原始密码不正确!");
                return false;
            }
            if (!ispasswd(str2) || !ispasswd(str3)) {
                alert("新密码应该是5-20位数字或字母或下划线");
                return false;
            }
            if (str2 != str3) {
                alert("新密码与确认新密码不一致!");
                return false;
            }
            return true;
        }


        $(function () {
            $("#pwdchange1").submit(function () {
                if (!cheek()) {
                    return;
                }
                var x = ($(this).serialize());
                $.ajax({
                    url: "/ChangeAdminPassword",
                    type: "post",
                    data: {newpassword: x.split("&")[1].split("=")[1]},
                    success: function () {
                        alert("修改密码成功!");
                        window.location.reload(true);
                    }
                })
                return false;
            })
        })

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
            当前管理员：<c:out value="${sessionScope.admin.admin_name}" default="默认"></c:out><a href="/alllogin"
                                                                                          class="logout_b"
                                                                                          style="color:red">登出</a> <br>
            <div class="time"></div>
        </div>
        <div class="menu">
            <ul>
                <li><a href="AdminFrontPage">首页</a></li>
                <li><a href="AdminPasswordChange" class="selected">修改密码</a></li>
                <li><a href="javascript:window.location.reload(true);">刷新</a></li>
                <li><a href="AdminHelpPage">帮助</a></li>
                <li><a href="../../../epidemic.jsp" class="selected">实时疫情</a></li>
                <li><a href="adminhouseofhello.jsp">医院信息网</a></li>
            </ul>
        </div>
    </div>

    <div class="center_content">
        <div id="right_wrap">
            <div id="right_content">
                <ul id="tabsmenu" class="tabsmenu">
                    <li class="active"><a href="#tab1">修改密码</a></li>
                </ul>
                <div id="tab1" class="tabcontent">
                    <h3>密码要求5-20位，包含数字或字母或下划线</h3>
                    <form action="" class="form"
                          method="post" name="form1" id="pwdchange1">

                        <div class="form_row">
                            <label>原始密码：</label> <input type="password" class="form_input"
                                                        name="oldpassword" id="oldpassword"/>
                        </div>

                        <div class="form_row">
                            <label>新密码：</label> <input type="password" class="form_input"
                                                       name="newpassword" id="newpassword"/>
                        </div>
                        <div class="form_row">
                            <label>确认新密码：</label> <input type="password" class="form_input"
                                                         name="checkpassword" id="checkpassword"/>
                        </div>

                        <div class="form_row">
                            <input type="submit" class="form_submit" value="提交"/> <input
                                type="reset" class="form_reset" value="重置"/>
                        </div>
                        <div class="clear"></div>
                    </form>
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


        <div class="clear"></div>
        <!-- important!!! -->
    </div>
    <!--end of center_content-->

    <div class="footer">CopyRight©2022 医院住院管理系统</div>

</div>

</body>
</html>
