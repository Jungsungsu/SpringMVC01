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
    	<!-- 여기에 게시판 글쓰기 화면좀 만들어라. -->
    	<form class="form-horizontal" action="${cpath}/boardInsert.do" method="post">
  			<div class="form-group">
    			<label class="control-label col-sm-2" for="title">제목:</label>
    			<div class="col-sm-10">
      				<input type="text" class="form-control" id="title" name="title" placeholder="Enter email">
    			</div>
  			</div>
  			<!--  -->
  			<div class="form-group">
    			<label class="control-label col-sm-2" for="contents">내용:</label>
    			<div class="col-sm-10">
      				<textarea class="form-control" rows="10" id="contents" name="contents"></textarea>
    			</div>
  			</div>
  			<!--  -->
  <div class="form-group">
    <label class="control-label col-sm-2" for="writer">작성자:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="writer" name="writer" placeholder="Enter writer">
    </div>
  </div>
  		<div class="form-group">
    		<div class="col-sm-offset-2 col-sm-10">
      		<button type="submit" class="btn btn-success btn-sm">글쓰기</button>
      		<button type="reset" class="btn btn-warning btn-sm">취소</button>
      		<button class="btn btn-warning btn-sm" onClick="location.href='${cpath}/boardList.do'">돌아가기</button>
    		</div>
  		</div>
		</form>
    	
    	
    </div>
    <div class="panel-footer">빅데이터 분석 서비스 개발자 과정(정성수)</div>

  </div>
</div>

</body>
</html>