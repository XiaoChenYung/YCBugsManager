<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageCgontext.request.contextPath}"/>
<div id="header">
    <div id="title">
        <%--<h1><a href="${ctx}">bangbangbang</a>--%>
        <shiro:user>

            <div class="row demo-row" style="margin-top: 20px">
                <div class="col-xs-12">
                    <nav class="navbar navbar-inverse navbar-embossed" role="navigation">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse"
                                    data-target="#navbar-collapse-01">
                                <span class="sr-only">Toggle navigation</span>
                            </button>
                            <a class="navbar-brand" href="${ctx}">同城帮</a>
                        </div>
                        <div class="collapse navbar-collapse pull-right" id="navbar-collapse-01">
                            <ul class="nav navbar-nav navbar-left">
                                    <%--<li><a href="#fakelink">Menu Item<span class="navbar-unread">1</span></a></li>--%>
                                <li class="dropdown">
                                    <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                                        <i class="icon-user"></i> <shiro:principal property="name"/>
                                        <span class="caret"></span>
                                    </a>
                                        <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">Messages <b class="caret"></b></a>--%>
                                    <span class="dropdown-arrow"></span>
                                    <ul class="dropdown-menu">
                                        <shiro:hasRole name="admin">
                                            <li><a href="${ctx}/admin/user">Admin Users</a></li>
                                            <li class="divider"></li>
                                        </shiro:hasRole>
                                        <li><a href="${ctx}/api">APIs</a></li>
                                        <li><a href="${ctx}/profile">Edit Profile</a></li>
                                        <li><a href="${ctx}/logout">Logout</a></li>
                                    </ul>
                                </li>
                                    <%--<li><a href="#fakelink">About Us</a></li>--%>
                            </ul>
                            <form class="navbar-form navbar-right" action="#" role="search">
                                <div class="form-group">
                                    <div class="input-group">
                                        <input class="form-control" id="navbarInput-01" type="search"
                                               placeholder="Search">
                                        <span class="input-group-btn">
                      <button type="submit" class="btn"><span class="fui-search"></span></button>
                    </span>
                                    </div>
                                </div>
                            </form>
                        </div><!-- /.navbar-collapse -->
                    </nav><!-- /navbar -->
                </div>
            </div>
            <!-- /row -->

            <%--<div class="btn-group pull-right">--%>
            <%--<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">--%>
            <%--<i class="icon-user"></i> <shiro:principal property="name"/>--%>
            <%--<span class="caret"></span>--%>
            <%--</a>--%>
            <%----%>
            <%--<ul class="dropdown-menu">--%>
            <%--<shiro:hasRole name="admin">--%>
            <%--<li><a href="${ctx}/admin/user">Admin Users</a></li>--%>
            <%--<li class="divider"></li>--%>
            <%--</shiro:hasRole>--%>
            <%--<li><a href="${ctx}/api">APIs</a></li>--%>
            <%--<li><a href="${ctx}/profile">Edit Profile</a></li>--%>
            <%--<li><a href="${ctx}/logout">Logout</a></li>--%>
            <%--</ul>--%>
            <%--</div>--%>
        </shiro:user>
        </h1>
    </div>
</div>