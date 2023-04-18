<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/6/19
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Login Page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/login.js"></script>


    <script type="text/javascript">
        $(function () {
            $("#user_login").submit(function () {
                    $.ajax(
                        {
                            url: "/UsersLogin",
                            data: $('#user_login').serialize(),
                            type: "post",
                            success: function (result) {
                                if (result === "ok") {
                                    <!-- alert("Users Login Success"); -->
                                    location.href='/UserFrontPage';
                                }
                                else {
                                    alert("账号名或密码错误！");
                                }
                            }
                        }
                    );
                    return false;
                }
            );
            $("#admin_login").submit(function () {
                    $.ajax(
                        {
                            url: "/AdminsLogin",
                            data: $('#admin_login').serialize(),
                            type: "post",
                            success: function (result) {
                                if (result === "ok") {
                                    <!-- alert("Admins Login Success");-->
                                    location.href='/AdminFrontPage';
                                }
                                else {
                                    alert("账号名或密码错误！");
                                }
                            }
                        }
                    );
                    return false;
                }
            );
            $("#doctor_login").submit(function () {
                    $.ajax(
                        {
                            url: "/DoctorsLogin",
                            data: $('#doctor_login').serialize(),
                            type: "post",
                            success: function (result) {
                                if (result === "ok") {
                                    <!-- alert("Doctors Login Success");  -->
                                    location.href='/DoctorFrontPage';
                                }
                                else {
                                    alert("账号名或密码错误！");
                                }
                            }
                        }
                    );
                    return false;
                }
            );

        });

    </script>

    <style type="text/css">
        #bg{
            background: url(${pageContext.request.contextPath}/img/user-icon.jpg)
        }
        a, body, button, dd, div, dl, dt, h1, h2, h3, h4, h5, h6, input, li, ol, p, td, textarea, ul { margin: 0; padding: 0; }
        body, button, input, select, textarea { font: 9pt/1.5 tahoma,arial,Hiragino Sans GB,\5b8b\4f53,sans-serif; }
        button, h1, h2, h3, h4, h5, h6, input, select, textarea { font-size: 100%; }
        ol, ul { list-style: none; }
        a { color: #666; text-decoration: none; }
        a:hover { color: #043559; text-decoration: underline; }
        body { background: #fff; font-size: 9pt; font-family: \\5FAE\8F6F\96C5\9ED1,Tahoma,Geneva,sans-serif; min-width: 750pt; }
        img { border: 0; vertical-align: top; }
        textarea { resize: none; }
        a, button, input, select, textarea { outline: 0; }
        a, button { cursor: pointer; }
        button { border: none; }
        /*.pagewrap { background-color:AliceBlue; }*/
        .main { position: relative; margin: 0 auto; width: 100%; height: 100%;}
        .header { padding: 13px 0 0; height: 67px; }
        .header h1 a { display: block; }
        .content { overflow: hidden; }

        .content .con_left { float: left; padding: 75pt 0 0 230px; width: 181px; }

        .content .con_right .con_r_top { padding: 0 0 0 39px; width: 409px; height: 110px; border-top: 8px solid #2e558e; }
        .content .con_right .con_r_top .left, .content .con_right .con_r_top .right, .content .con_right .con_r_top .middle { float: left; padding: 35px 0 0; width: 124px; height: 35px; text-align: center; text-decoration: none; font-size: 18px; font-family: "΢���ź�"; }
        .content .con_right .con_r_top .left { border-bottom: 2px solid #dedede; color: #999; }
        .content .con_right .con_r_top .middle { border-bottom: 2px solid #dedede; color: #999; }
        .content .con_right .con_r_top .right { border-bottom: 2px solid #2e558e; color: #333; }
        .content .con_right ul .con_r_right p { padding: 24px 0 0 135px; background: url(../img/user-icon.jpg) 111px 2pc no-repeat; color: #2f548e; font-size: 25px; font-family: "΢���ź�"; }
        .content .con_right ul .con_r_left .user input { margin: 0 0 21px -1px; padding-left: 7px; width: 324px; height: 33px; border: 1px solid #dedede; color: #999; font-size: 14px; font-family: "΢���ź�"; line-height: 2pc; }
        .content .con_right ul .con_r_left .user { padding: 0 0 0 39px; }
        .content .con_right ul .con_r_left .user .user-icon { float: left; width: 36px; height: 35px; background: url(../img/user-icon.jpg) left top no-repeat; }
        .content .con_right ul .con_r_left .user .mima-icon { float: left; width: 36px; height: 35px; background: url(../img/user-icon.jpg) left top no-repeat; }
        .content .con_right ul .con_r_left .user .yzmz-icon { float: left; width: 36px; height: 35px; background: url(../img/user-icon.jpg) left top no-repeat; }
        .content .con_right ul .con_r_left p { overflow: hidden; padding: 0 39px 37px; color: #666; font-size: 13px; font-family: "΢���ź�"; }
        .content .con_right ul .con_r_left p .mima { float: left; padding-left: 5px; text-decoration: none; }
        .content .con_right ul .con_r_left button { margin: 8pt 0 0pt 75pt; width: 250px; height: 44px; background: #2e558e; color: #fff; font-size: 1pc; font-family: "΢���ź�"; }
        .content .con_right ul .con_r_right { display: none; }

        .content .con_right { float: left; margin: 65px 0 0; width: 28pc; height: 398px; border: 1px solid #dedede; background: #fff; }

        .content .con_right .con_r_top { padding: 0 0 0 39px; width: 409px; height: 110px; border-top: 8px solid #2e558e; }
        .content .con_right .con_r_top .left, .content .con_right .con_r_top .right { float: left; padding: 35px 0 0; width: 124px; height: 35px; text-align: center; text-decoration: none; font-size: 18px; font-family: "΢���ź�"; }
        .content .con_right .con_r_top .left { border-bottom: 2px solid #dedede; color: #999; }
        .content .con_right .con_r_top .middle { border-bottom: 2px solid #dedede; color: #999; }
        .content .con_right .con_r_top .right { border-bottom: 2px solid #2e558e; color: #333; }
        .content .con_right ul .con_r_left p { padding: 24px 0 0 135px; background: url(../img/user-icon.jpg) 111px 2pc no-repeat; color: #2f548e; font-size: 25px; font-family: "΢���ź�"; }
        .content .con_right ul .con_r_right .user input { margin: 0 0 21px -1px; padding-left: 7px; width: 324px; height: 33px; border: 1px solid #dedede; color: #999; font-size: 14px; font-family: "΢���ź�"; line-height: 2pc; }
        .content .con_right ul .con_r_right .user { padding: 0 0 0 39px; }
        .content .con_right ul .con_r_right .user .user-icon { float: left; width: 36px; height: 35px; background: url(../img/user-icon.jpg) left top no-repeat; }
        .content .con_right ul .con_r_right .user .mima-icon { float: left; width: 36px; height: 35px; background: url(../img/user-icon.jpg) left top no-repeat; }
        .content .con_right ul .con_r_right .user .yzmz-icon { float: left; width: 36px; height: 35px; background: url(../img/user-icon.jpg) left top no-repeat; }
        .content .con_right ul .con_r_right p { overflow: hidden; padding: 0 39px 37px; color: #666; font-size: 13px; font-family: "΢���ź�"; }
        .content .con_right ul .con_r_right p .mima { float: left; padding-left: 5px; text-decoration: none; }
        .content .con_right ul .con_r_right button { margin: 8pt 0 0 75pt; width: 250px; height: 44px; background: #2e558e; color: #fff; font-size: 1pc; font-family: "΢���ź�"; }
        .content .con_right ul .con_r_left { display: none; }

        .content .con_right .con_r_top { padding: 0 0 0 39px; width: 409px; height: 110px; border-top: 8px solid #2e558e; }
        .content .con_right .con_r_top .left, .content .con_right .con_r_top .right { float: left; padding: 35px 0 0; width: 124px; height: 35px; text-align: center; text-decoration: none; font-size: 18px; font-family: "΢���ź�"; }
        .content .con_right .con_r_top .left { border-bottom: 2px solid #dedede; color: #999; }
        .content .con_right .con_r_top .middle { border-bottom: 2px solid #dedede; color: #999; }
        .content .con_right .con_r_top .right { border-bottom: 2px solid #2e558e; color: #333; }
        .content .con_right ul .con_r_right p { padding: 24px 0 0 135px; background: url(../img/user-icon.jpg) 111px 2pc no-repeat; color: #2f548e; font-size: 25px; font-family: "΢���ź�"; }
        .content .con_right ul .con_r_middle .user input { margin: 0 0 21px -1px; padding-left: 7px; width: 324px; height: 33px; border: 1px solid #dedede; color: #999; font-size: 14px; font-family: "΢���ź�"; line-height: 2pc; }
        .content .con_right ul .con_r_middle .user { padding: 0 0 0 39px; }
        .content .con_right ul .con_r_middle .user .user-icon { float: left; width: 36px; height: 35px; background: url(../img/user-icon.jpg) left top no-repeat; }
        .content .con_right ul .con_r_middle .user .mima-icon { float: left; width: 36px; height: 35px; background: url(../img/user-icon.jpg) left top no-repeat; }
        .content .con_right ul .con_r_middle .user .yzmz-icon { float: left; width: 36px; height: 35px; background: url(../img/user-icon.jpg) left top no-repeat; }
        .content .con_right ul .con_r_middle p { overflow: hidden; padding: 0 39px 37px; color: #666; font-size: 13px; font-family: "΢���ź�"; }
        .content .con_right ul .con_r_middle p .mima { float: left; padding-left: 5px; text-decoration: none; }
        .content .con_right ul .con_r_middle button { margin: 8pt 0 0pt 75pt; width: 250px; height: 44px; background: #2e558e; color: #fff; font-size: 1pc; font-family: "΢���ź�"; }
        .content .con_right ul .con_r_middle { display: none; }

        .divimg { position: absolute; top: 50%; left: 50%; z-index: 100; overflow: hidden; margin-top: -15px; margin-left: -30px; padding: 1px; width: 60px; height: 30px; border: 1px solid #eee; border-radius: .5rem; background: #fff; opacity: .9; filter: alpha(opacity=90); -moz-opacity: .9; }
        .content .con_right .con_r_top { *height: 90px; }
    </style>

</head>

<body style="overflow:hidden; " id="bg" >
<div class="pagewrap" >
    <div class="main">
        <div class="header"></div>
        <div class="content">
            <div class="con_left"></div>
            <div class="con_right">
                <div class="con_r_top"><!--切换标签-->
                    <a href="javascript:;" class="left" style="color: rgb(153, 153, 153); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(222, 222, 222);">管理员登录</a>
                    <a href="javascript:;" class="middle" style="color: rgb(153, 153, 153); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(222, 222, 222);">医生登录</a>
                    <a href="javascript:;" class="right" style="color: rgb(51, 51, 51); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(46, 85, 142);">病人登录</a>
                </div>
                <ul>
                    <li class="con_r_left" style="display: none;"><!--con_r_left 管理员登录界面，form2-->
                        <form name="form2" id="admin_login" method="post" action="" autocomplete="off">
                            <div class="user">
                                <div>
                                    <span class="user-icon"></span>
                                    <input type="text" id="admin_name" name="admin_name" placeholder="输入账号" value="" >
                                </div>
                                <br>
                                <div>
                                    <span class="mima-icon"></span>
                                    <input type="password" id="admin_password" name="admin_password" placeholder="输入密码" value="">
                                </div>
                            </div><br>
                            <button id="btn_Login_admin" type="submit">登 录</button><!--按钮btn_Login_admin-->
                        </form>
                    </li>

                    <li class="con_r_middle" style="display: none;"><!--con_r_right 医生登录界面，form3-->
                        <form name="form3" id="doctor_login" method="post" action="" autocomplete="off">
                            <div class="user">
                                <div>
                                    <span class="user-icon"></span>
                                    <input type="text" id="doctor_username" name="doctor_username" placeholder="输入账号" value="">
                                </div>
                                <br>
                                <div>
                                    <span class="mima-icon"></span>
                                    <input type="password" id="doctor_password" name="doctor_password" placeholder="输入密码" value="">
                                </div>
                            </div><br>
                            <button id="btn_Login_doctor" type="submit">登 录</button><!--按钮btn_Login_guest-->
                        </form>
                    </li>

                    <li class="con_r_right" style="display: block;"><!--con_r_right 病人登录界面，form1-->
                        <form name="form1" id="user_login" method="post" action="" autocomplete="off">
                            <div class="user">
                                <div>
                                    <span class="user-icon"></span>
                                    <input type="text" id="username" name="username" placeholder="输入账号" value="">
                                </div>
                                <br>
                                <div>
                                    <span class="mima-icon"></span>
                                    <input type="password" id="password" name="password" placeholder="输入密码" value="">
                                </div>
                            </div><br>
                            <button id="btn_Login_guest" type="submit">登 录</button><!--按钮btn_Login_guest-->
                        </form>
                    </li>

                </ul>
            </div>
        </div>
    </div>
</div>

</body>
</html>
