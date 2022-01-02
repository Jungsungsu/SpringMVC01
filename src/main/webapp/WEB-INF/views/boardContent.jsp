<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<% pageContext.setAttribute("newLineChar", "\n"); %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  	function goDelete(idx){
  		 //location.href="/web/boardDelete.do?idx="+idx;
  		location.href="${cpath}/boardDelete.do/${vo.idx}";
  	}
  	function goUpdate(idx){
 		 //location.href="/web/boardUpdate.do?idx="+idx;
 		location.href="${cpath}/boardUpdate.do/${vo.idx}";
 	}
  </script>
</head>
<body>
 
<div class="container">
  <h2>스프링 웹 MVC01</h2>
  <div class="panel panel-default">
    <div class="panel-heading">Spring Board</div>
    <div class="panel-body">
  		<table class="table table-bordered">
  			<tr>
  				<td> 제목 </td>
  				<td> ${vo.title} </td>
  			</tr>
  			<tr>
  				<td> 내용 </td>
  				<td> ${fn:replace(vo.contents,newLineChar,"<br>")} </td>
  			</tr>
  			<tr>
  				<td> 작성자 </td>
  				<td> ${vo.writer} </td>
  			</tr>
  			<tr>
  				<td> 작성일 </td>
  				<td> ${fn:split(vo.indate," ")[0]} </td>
  			</tr>
  			<tr>
  				<td colspan="2">
  					<button class="btn btn-primary btn-sm" onclick="goUpdate(${vo.idx})">수정</button>
  					<button class="btn btn-danger btn-sm" onclick="goDelete(${vo.idx})">삭제</button>
  					<button class="btn btn-info btn-sm" onclick="location.href='${cpath}/boardList.do'">리스트</button>
  				</td>
  			</tr>
  		</table>
    </div>
    <div class="panel-footer">빅데이터 분석 서비스 개발자 과정(정성수)</div>

  </div>
</div>

</body>
</html>