<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter" %>
<%@ page import="org.apache.shiro.authc.ExcessiveAttemptsException" %>
<%@ page import="org.apache.shiro.authc.IncorrectCredentialsException" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>登录页</title>
</head>

<body>
<div class="container">
    <div class="login">
        <div class="login-screen">
            <div class="login-icon">
                <img src="${ctx}/static/images/img/login/icon.png" alt="Welcome to Mail App"/>
                <h4>Welcome to
                    <small>Mail App</small>
                </h4>
            </div>

            <div class="login-form">
                <form action="${ctx}/login" method="post" id="loginForm">
                    <div class="form-group">
                        <input type="text" class="form-control login-field" value="" placeholder="Enter your name"
                               id="username" name="username" value="${username}" />
                        <label class="login-field-icon fui-user" for="username"></label>
                    </div>

                    <div class="form-group">
                        <input type="password" class="form-control login-field" value="" placeholder="Password"
                                id="password" name="password"/>
                        <label class="login-field-icon fui-lock" for="password"></label>
                    </div>

                    <input id="submit_btn" class="btn btn-primary btn-lg btn-block" type="submit" value="登录">
                    <a class="login-link" href="#">Lost your password?</a>
                </form>
            </div>
        </div>
    </div>

    <%--<form id="loginForm" action="${ctx}/login" method="post" class="form-horizontal">--%>
        <%--<%--%>
            <%--String error = (String) request.getAttribute(FormAuthenticationFilter.DEFAULT_ERROR_KEY_ATTRIBUTE_NAME);--%>
            <%--if (error != null) {--%>
        <%--%>--%>
        <%--<div class="alert alert-error input-medium controls">--%>
            <%--<button class="close" data-dismiss="alert">×</button>--%>
            <%--登录失败，请重试.--%>
        <%--</div>--%>
        <%--<%--%>
            <%--}--%>
        <%--%>--%>
        <%--<div class="control-group">--%>
            <%--<label for="username" class="control-label">用户名:</label>--%>
            <%--<div class="controls">--%>
                <%--<input type="text" id="username" name="username" value="${username}" class="input-medium required"/>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="control-group">--%>
            <%--<label for="password" class="control-label">密码:</label>--%>
            <%--<div class="controls">--%>
                <%--<input type="password" id="password" name="password" class="input-medium required"/>--%>
            <%--</div>--%>
        <%--</div>--%>

        <%--<div class="control-group">--%>
            <%--<div class="controls">--%>
                <%--<label class="checkbox" for="rememberMe"><input type="checkbox" id="rememberMe" name="rememberMe"/> 记住我</label>--%>
                <%--<input id="submit_btn" class="btn btn-primary" type="submit" value="登录"/> --%>
                <%--<a class="btn" href="${ctx}/register">注册</a>--%>
                <%--&lt;%&ndash;<span class="help-block">(管理员: <b>admin/admin</b>, 普通用户: <b>user/user</b>)</span>&ndash;%&gt;--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</form>--%>

    <script>
        $(document).ready(function () {
            $("#loginForm").validate();
        });

    </script>
</div>
</body>
</html>
