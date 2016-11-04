<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>用户注册</title>
	
	<script>
		$(document).ready(function() {
			//聚焦第一个输入框
			$("#loginName").focus();
			//为inputForm注册validate函数
			$("#inputForm").validate({
				rules: {
					loginName: {
						remote: "${ctx}/register/checkLoginName"
					}
				},
				messages: {
					loginName: {
						remote: "用户登录名已存在"
					}
				}
			});
		});
	</script>
</head>

<body>
	<form id="inputForm" action="${ctx}/register" method="post" role="form" class="form-horizontal">
		<%--<fieldset>--%>
			<legend><small>用户注册</small></legend>
			<div class="form-group">
				<label for="loginName" class="control-label col-sm-2 center-block">登录名:</label>
				<div class="controls col-sm-10">
					<input type="text" id="loginName" name="loginName" class="form-control" minlength="3"/>
				</div>
			</div>
			<div class="form-group">
				<label for="name" class="control-label col-sm-2">用户名:</label>
				<div class="controls col-sm-10">
					<input type="text" id="name" name="name" class="form-control"/>
				</div>
			</div>
			<div class="form-group">
				<label for="plainPassword" class="control-label col-sm-2">密码:</label>
				<div class="controls col-sm-10">
					<input type="password" id="plainPassword" name="plainPassword" class="form-control"/>
				</div>
			</div>
			<div class="form-group">
				<label for="confirmPassword" class="control-label col-sm-2">确认密码:</label>
				<div class="controls col-sm-10">
					<input type="password" id="confirmPassword" name="confirmPassword" class="form-control" equalTo="#plainPassword"/>
				</div>
			</div>
            <br> <br>
			<div class="form-actions row">
                <div class="col-md-6 color">
                    <input id="submit_btn" class="btn btn-primary col-sm-10 center" type="submit" value="提交"/>&nbsp;
                </div>
                <div class="col-md-6 color">
                    <input id="cancel_btn" class="btn col-sm-10 center" type="button" value="返回" onclick="history.back()"/>
                </div>
			</div>
		<%--</fieldset>--%>
	</form>
</body>
</html>
