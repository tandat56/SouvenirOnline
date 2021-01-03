<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
	
   
<%--    <link rel="shortcut icon" type="image/x-icon" href="<c:url value='/template/web/assets/img/logo/favicon.png'/>">--%>

    <link href="<c:url value='/template/web/assets/css/vendor/vendor.min.css'/>" rel="stylesheet" type="text/css">
    <script src="https://kit.fontawesome.com/2c4dbbb156.js" crossorigin="anonymous"></script>
    <link href="<c:url value='/template/web/assets/css/plugins/plugins.min.css'/>" rel="stylesheet" type="text/css">
    <link href="<c:url value='/template/web/assets/css/style.min.css'/>" rel="stylesheet" type="text/css">
    <script src='https://cdn.jsdelivr.net/g/lodash@4(lodash.min.js+lodash.fp.min.js)'></script>
</head>


<body>
    
<%@ include file="/common/web/header.jsp" %>

<dec:body/>

<%@ include file="/common/web/footer.jsp" %>

<script src="<c:url value='/template/web/assets/js/vendor/vendor.min.js'/>"></script>
<script src="<c:url value='/template/web/assets/js/plugins/plugins.min.js'/>"></script>
<script src="<c:url value='/template/web/assets/js/main.js'/>"></script>
<script src="<c:url value='/template/admin/assets/js/bootstrap.min.js' />"></script>
<script src="<c:url value='/template/admin/assets/js/jquery-ui.custom.min.js' />"></script>
<dec:getProperty property="page.script"></dec:getProperty>
</body>
</html>