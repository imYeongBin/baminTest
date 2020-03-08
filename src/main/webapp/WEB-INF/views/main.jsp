<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- <%response.setHeader("X-UA-Compatible","IE=edge"); %> --%>
<c:set var="webRoot" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${webRoot}/common/js/underscore/underscore-min.js"></script>
<script type="text/javascript" src="${webRoot}/common/js/jquery/jquery.min.js"></script>
<script type="text/javascript" src="${webRoot}/common/js/jquery/jquery.form.min.js"></script>
<script type="text/javascript" src="${webRoot}/common/js/library_allinone.js"></script>
<script type="text/javascript" src="${webRoot}/resources/js/main.js"></script>

</head>
<body>

<a href="memberList.do">회원리스트</a>
<a href="meetingList.do">정모리스트</a>
<a href="etcMng.do">기타관리</a>

</body>
</html>