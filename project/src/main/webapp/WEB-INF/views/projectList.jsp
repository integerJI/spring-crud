<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=euc-kr"/>
    <title>Home</title>
</head>

<body>
<h1>Project List</h1>

<div>
	[<a href="<c:url value='/projectRegisterForm.do' />">등록</a>]
</div>
	
<table border="1">
<thead>
  <tr>
    <th>번호</th>
    <th>제목</th>
    <th>본문</th>
    <th>작성일</th>
  </tr>
</thead>
<tbody>
<c:forEach var="item" items="${list}">
  <tr>
    <td>${item.proId}</td>
    <td>${item.proTitle}</td>
    <td>${item.proBody}</td>
    <td>${item.proDate}</td>
  </tr>
</c:forEach>
</tbody>
</table>
</body>
</html>
