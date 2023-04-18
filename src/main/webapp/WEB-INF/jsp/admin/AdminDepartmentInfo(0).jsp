<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

    <title>科室列表</title>

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
        $(function () {
            $("#department_select").change(function () {
                var department_id = ($("#department_select").children('option:selected').val());
                $.ajax({
                    url: "/AdminChangeDepartment",
                    type: "post",
                    data: {
                        selected_department_id: department_id
                    },
                    success: function () {
                        window.location.reload(true);
                    }
                })
                return true;
            })
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
                <li><a href="AdminHelpPage">帮助</a></li>
                <li><a href="../../../epidemic.jsp" class="selected">实时疫情</a></li>
                <li><a href="adminhouseofhello.jsp">医院信息网</a></li>
            </ul>
        </div>
    </div>
    <div class="center_content">
        <div id="right_wrap">
            <div id="right_content">
                <h2>全部科室信息</h2>
                <div id="tab1" class="tabcontent">
                    <div class="form">
                        <div class="form_row">
                            <label>科室编号：</label> <select class="form_select"
                                                         name="department_select" id="department_select"
                                                         style="width: 20%">
                            <c:forEach items="${departments}" var="d1" varStatus="cntd1">
                                <option <c:if test="${d1.department_id == selected_department.department_id}">selected</c:if>>
                                        ${d1.department_id}
                                </option>
                            </c:forEach>
                        </select>

                        </div>
                        <div class="form_row">
                            <label>科室名：</label> <input type="text" class="form_input"
                                                       value="${selected_department.department_name}" name=""
                                                       readonly="readonly"
                                                       style="width: 20%"/>
                        </div>
                        <div class="form_row">
                            <label>科室电话：</label> <input type="text" class="form_input"
                                                        value="${selected_department.department_ph}" name=""
                                                        readonly="readonly"
                                                        style="width: 40%"/>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <h3>科室人员</h3>
                    <table id="rounded-corner" style="text-align: center">
                        <thead>
                        <tr>
                            <th>医生编号</th>
                            <th>姓名</th>
                            <th>性别</th>
                            <th>年龄</th>
                            <th>联系方式</th>
                        </tr>
                        </thead>
                        <tfoot>
                        <tr>
                            <td colspan="12"></td>
                        </tr>
                        </tfoot>
                        <tbody>
                        <c:forEach items="${doctors}" var="doc" varStatus="cntdoc">
                        <tr class="odd">
                            <td>${doc.doctor_id}
                            </td>
                            <td>${doc.doctor_name}
                            </td>
                            <td>${doc.doctor_sex}
                            </td>
                            <td>${doc.doctor_age}
                            </td>
                            <td>${doc.doctor_ph}
                            </td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
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
                <li><a href="AdminDepartmentInfo" class="selected">科室</a></li>
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
