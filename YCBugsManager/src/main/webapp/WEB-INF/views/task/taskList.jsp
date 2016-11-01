<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>任务管理</title>
</head>

<body>




	<c:if test="${not empty message}">
		<div id="message" class="alert alert-success"><button data-dismiss="alert" class="close">×</button>${message}</div>
	</c:if>
	<div class="row">
		<div>
			<form class="form-horizontal" role="form" action="#">
                <div class="form-group form-group-lg">
                    <label class="col-md-1 control-label col-sm-8" for="serchInput">名称：</label>
                    <div class="col-md-8">
                        <input type="text" id="serchInput" name="search_LIKE_title" class="form-control" value="${param.search_LIKE_title}">
                    </div>

                    <div class="col-md-2 pull-right">
                        <button type="submit" class="btn btn-success col-sm-8" id="search_btn">搜索</button>
                    </div>


                </div>
		    </form>
	    </div>
	    <tags:sort/>
	</div>
	<div class="table-responsive">
	    <table id="contentTable" class="table table-striped table-bordered table-hover">
		<thead><tr><th>任务</th><th>管理</th><th>备注</th></tr></thead>
		<tbody>
		<c:forEach items="${tasks.content}" var="task">
			<tr>
				<td class="bar-danger"><a href="${ctx}/task/update/${task.id}">${task.title}</a></td>
				<td><a href="${ctx}/task/delete/${task.id}">删除</a></td>
                <td>哈哈哈哈哈</td>
			</tr>
		</c:forEach>
		</tbody>
	    </table>
    </div>
	<tags:pagination page="${tasks}" paginationSize="5"/>

	<div><a class="btn" href="${ctx}/task/create">创建任务</a></div>
</body>
</html>
