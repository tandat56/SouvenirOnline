<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <title>Trang chủ</title> -->
</head>
<body>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="<c:url value='/trang-chu'/>">Trang chủ </a>
                </li>
            </ul><!-- /.breadcrumb -->
        </div>
        <div class="page-content">
            <div class="row" >
                <div class="col-xs-12">

                </div>
            </div>
        </div>
        <div class="page-content-wrapper">
            <div class="page-content">
                <!-- start widget -->
                <div class="row" style="margin-bottom: 150px; margin-left: 10px">
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="analysis-box m-b-0 bg-b-purple">
                            <h3 class="text-white box-title">
                                Số lượng hóa đơn
                                <span class="pull-right position-absolute" style="margin-left: 15px" >${order}</span>
                            </h3>
                            <i class="fa fa-credit-card text-white fa fa-2x" ></i>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="analysis-box m-b-0 bg-b-danger">
                            <h3 class="text-white box-title">
                                Số lượng sản phẩm <span class="pull-right position-absolute" style="margin-left: 15px">${product}</span>
                            </h3>
                            <i class="fa fa-tasks text-white fa fa-2x"></i>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="analysis-box m-b-0 bg-b-cyan">
                            <h3 class="text-white box-title">
                                Số lượng tài khoản<span class="pull-right position-absolute" style="margin-left: 15px">${accout}</span>
                            </h3>
                            <i class="fa fa-users text-white fa fa-2x"></i>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="analysis-box m-b-0 bg-b-blue">
                            <h3 class="text-white box-title">
                                Số lượng bài viết <span class="pull-right position-absolute" style="margin-left: 15px">${post}</span>
                            </h3>
                            <i class="fa fa-file text-white fa fa-2x"></i>
                        </div>
                    </div>
                </div>
                <!-- end widget -->
                <!-- chart start -->

                <!-- Chart end -->
                <!-- start course list -->

                <div>
                    <form:form id="formSubmit" role="form" class="row " cssStyle="margin-left: 10px">
                        <c:forEach var="item44" items="${entity}">
                            <div class="col-lg-3 col-md-6 col-12 col-sm-6" style="margin-bottom: 60px">
                                <div class="blogThumb">
                                    <div class="thumb-center">
                                        <c:set var="image" value="/repository/${item44.image}"/>
                                        <img src="${image}" id="viewImage" width="300px" height="300px">
                                    </div>
                                    <div class="white-box">
                                        <div class="text-muted">
                                            <span class="m-r-10">${item44.createdDate}</span> <a
                                                class="text-muted m-l-10" href="#"><i
                                                class="fa fa-heart-o"></i></a>
                                        </div>
                                        <h3 class="m-t-20 m-b-20">${item44.title}</h3>
                                        <p>${item44.sortName}</p>

                                        <a href="<c:url value="/chi-tiet-san-pham/${item44.id}" />"
                                           class="btn btn-success btn-rounded waves-effect waves-light m-t-20">
                                            Xem thêm</a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </form:form>
                </div>
                <!-- end page content -->
                <!-- start chat sidebar -->

                <!-- end chat sidebar -->
            </div>
            <!-- end page container -->

    </div>
</div><!-- /.main-content -->
</body>
</html>