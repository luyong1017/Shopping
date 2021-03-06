<%--
  Created by IntelliJ IDEA.
  User: Maggie
  Date: 2018/3/6
  Time: 下午7:19
  To change this template use File | Settings | File Templates.
--%>
<%@page import="com.shopp.model.UserOperations"%>
<%@page import="com.shopp.bean.User"%>

<%@ page language="java" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%
    String uid = String.valueOf(session.getAttribute("uid"));
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>个人信息</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link href="../css/showMessage.css" rel="stylesheet" type="text/css" media="all" />
    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />

    <script src="js/kit.js"></script>
    <!--[if IE]>
    <script src="js/ieFix.js"></script>
    <![endif]-->
    <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push([ '_setAccount', 'UA-30210234-1' ]);
        _gaq.push([ '_trackPageview' ]);
        (function() {
            var ga = document.createElement('script');
            ga.type = 'text/javascript';
            ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl'
                    : 'http://www')
                + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(ga, s);
        })();
    </script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="js/user.js"></script>

    <script src="js/dom.js"></script>
    <script src="js/form.js"></script>
    <link rel="stylesheet" href="css/css.css" />
    <link rel="stylesheet" href="css/login.css" />
    <link rel="stylesheet" href="css/validator.css" />
    <!--validator-->
    <script src="js/validator.js"></script>
    <script src="js/autowired.validator.js"></script>

    <style>
        table td {
            font-size: 19px;
        }

        label {
            cursor: pointer;
            margin-right: 1em;
        }
    </style>

    <script type="text/javascript">
        function editInfo() {
            if (document.getElementById("submit").value == "编辑个人信息") {
                document.getElementById("username").disabled = false;
                document.getElementById("password").disabled = false;
                document.getElementById("submit").value = "确认修改";
                return false;
            }
            return true;
        }
    </script>


</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<%
    UserOperations uo = new UserOperations();
    User user = uo.queryByUid(uid);
    if (user != null) {

    }
%>
<div class="inform-background">
    <div class="head-photo">
        <img id="head-photo" class="head-image" src="https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2004010330,3706086301&fm=27&gp=0.jpg"
        alt="静好">
    </div>
    <h1 class="profile-title">
        <span class="field-validation-valid" data-valmsg-for="username" data-valmsg-replace="true"></span>
            <span class="name"><%=user.getUname()%></span>
    </h1>
    <ul class="user-statistic">
        <li class="user-statistic-item">邮箱 <%=user.getPhoneNum()%></li>
        <li class="user-statistic-item">上次登录时间 <%=session.getAttribute("LastLoginTime")%></li>
    </ul>
</div>

<div class="main">
    <ul class="mod-tab profile-nav">
        <li class="mod-tab-item mod-tab-current" data-id="collection">我的收藏</li>
        <li class="mod-tab-item" data-id="myGoods">我的商品</li>
    </ul>
    <div id="content"></div>


</div>




</body>
</html>