<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<c:set var="cpath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
 
<div class="container">
  <h2>스프링 웹 MVC01</h2>
  <div class="panel panel-default">
    <div class="panel-heading">Spring Board</div>
    <div class="panel-body">
    <form action="${cpath}/boardUpdate.do" method="post">
    <input type="hidden" name="idx" value="${vo.idx}">
  		<table class="table table-bordered">
  			<tr>
  				<td>제목</td>
  				<td><input type="text" class="form-control "name="title" value="${vo.title}"></td>	
  			</tr>
  			<tr>
  				<td>내용</td>
  				<td><textarea rows="7" class="form-control" name="contents">${vo.contents}</textarea></td>
  			</tr>
  			<tr>
  				<td>작성자</td>
  				<td><input type="text" class="form-control" value="${vo.writer}" readonly="readonly"></td>
  			</tr>
  			<tr>
  				<td class="2" align="center">
  				 <button type="submit" class="btn btn-primary btn-sm">수정</button>
  				 <button type="reset" class="btn btn-danger btn-sm">취소</button>
  				 <button type="button" class="btn btn-success btn-sm" onclick="location.href='${cpath}/boardList.do'">리스트</button>
  				</td>
  			</tr>
  		</table>
  		</form>
    </div>
    <div class="panel-footer">빅데이터 분석 서비스 개발자 과정(정성수)</div>

  </div>
</div>

</body>
</html>