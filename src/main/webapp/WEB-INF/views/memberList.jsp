<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*"%>
<%-- <%response.setHeader("X-UA-Compatible","IE=edge"); %> --%>
<c:set var="webRoot" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html> 
<head>

<%

ArrayList<Object> memberList = (ArrayList)request.getAttribute("memberList");

%>

<script type="text/javascript" src="${webRoot}/common/js/jquery/jquery.min.js"></script>
<script type="text/javascript" src="${webRoot}/common/js/jquery/jquery.form.min.js"></script>
<!-- <script
  src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script> -->
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.9/angular.min.js"></script>
<script>
	var app = angular.module('app',[]);
	app.controller('memberList',function($scope){
		$scope.memberList = <%= memberList %>;
	})
</script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 
<div data-ng-app="app" data-ng-controller="memberList">
	
	<script type="text/javascript">
	
	</script>
	<h1>회원관리</h1>
	<div>
		<table>
			<tr>
				<th>회원번호</th>
				<th>이름</th>
				<th>참석수</th>
				<th>연락처</th>
				<th>거주지역</th>
				<th>성별</th>
				<th>나이</th>
				<th>잔여회비</th>
			</tr>
			<tr data-ng-repeat="item in memberList">
				<td>{{item.memberNo}}</td>
				<td>{{item.memberNm}}</td>
				<td>{{item.attCnt}}</td>
				<td>{{item.telNo}}</td>
				<td>{{item.lctn}}</td>
				<td>{{item.gndr}}</td>
				<td>{{item.age}}</td>
				<td>{{item.feeBalance}}</td>
			</tr>
				
			
		</table>
	</div>




</div><!-- end of controller -->
</body>
</html>