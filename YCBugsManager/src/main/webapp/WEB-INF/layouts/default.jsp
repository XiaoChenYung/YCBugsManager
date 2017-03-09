<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="zh-cn">
<head>
<title>任务管理:<sitemesh:title/></title>
<%--<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />--%>
<%--<meta http-equiv="Cache-Control" content="no-store" />--%>
<%--<meta http-equiv="Pragma" content="no-cache" />--%>
<%--<meta http-equiv="Expires" content="0" />--%>
	<%--<meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
	<%--<meta name="viewport" content="width=device-width, initial-scale=1">--%>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<link type="image/x-icon" href="${ctx}/static/images/favicon.ico" rel="shortcut icon">
<link href="${ctx}/static/bootstrap/3.3.0/css/bootstrap.css" type="text/css" rel="stylesheet" />
	<%--<link href="${ctx}/static/bootstrap/2.3.2/css/bootstrap.min.css" type="text/css" rel="stylesheet" />--%>
<link href="${ctx}/static/jquery-validation/1.11.1/validate.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/static/styles/default.css" type="text/css" rel="stylesheet" />
<script src="${ctx}/static/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="${ctx}/static/jquery-validation/1.11.1/jquery.validate.min.js" type="text/javascript"></script>
<script src="${ctx}/static/jquery-validation/1.11.1/messages_bs_zh.js" type="text/javascript"></script>
<link href="${ctx}/static/styles/assets/css/demo.css" rel="stylesheet">
<%--<link href="${ctx}/static/styles/dist/css/flat-ui.css" rel="stylesheet">--%>

<sitemesh:head/>
</head>

<body class="bodyColor">
	<div class="container">
		<%@ include file="/WEB-INF/layouts/header.jsp"%>
		<div id="content">
			<sitemesh:body/>
		</div>
		<%@ include file="/WEB-INF/layouts/footer.jsp"%>
	</div>
	<script src="${ctx}/static/bootstrap/3.3.0/js/bootstrap.js" type="text/javascript"></script>
</body>
</html>