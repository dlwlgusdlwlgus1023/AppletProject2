<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<style type="text/css">
:root   {
    filename : ${dto.filename}
}
	#img {
	background-repeat : no-repeat;
	background-size : contain;
    background-position: center;
    height: 500px;
	}

</style>
<script src="../include/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(function(){
	comment_list();
	$("#btnSave").click(function(){
		comment_add();
	});
	$("#btnList").click(function(){
		location.href="${path}/board_servlet/list.do";
	});
	$("#btnReply").click(function(){
		document.form1.action="${path}/board_servlet/reply.do";
		document.form1.submit();
	});
	$("#btnEdit").click(function(){
		document.form1.action="${path}/board_servlet/pass_check.do";
		document.form1.submit();
	});
});

function comment_add(){
	var param="board_num=${dto.num}&writer="+$("#writer").val()
	+"&content="+$("#content").val();
	$.ajax({
		type: "post",
		url: "${path}/board_servlet/comment_add.do",
		data: param,
		success: function(){
			$("#writer").val("");
			$("#content").val("");
			comment_list();
		}
	});
}


function comment_list(){
	$.ajax({
		type: "post",
		url: "${path}/board_servlet/commentList.do",
		data: "num=${dto.num}",
		success: function(result){
			$("#commentList").html(result);
		}
	});
}

</script>
<style type="text/css">
.tbl04 {border-collapse:collapse;border-spacing:0;box-sizing:border-box;border-left:1px solid #aaa;border-right:1px solid #aaa}
.tbl04 caption {overflow:hidden;position:absolute;width:0;height:0;line-height:0;text-indent:-9999px}
.tbl04 th { padding:10px 0 10px 10px;border-top:1px solid #aaa;border-right:1px solid #aaa;border-bottom:1px solid #aaa;background-color:#ddd}
.tbl04 td {padding:10px 0 10px 10px;border-top:1px solid #aaa;border-right:1px solid #aaa;border-bottom:1px solid #aaa}
@media all and (max-width:767px){
	.tbl04,
	.tbl04 thead,
	.tbl04 tbody,
	.tbl04 tr,
	.tbl04 th ,
	.tbl04 td {display:block}
	.tbl04 {border-top:1px solid #000}
	.tbl04 tr:after {content:"";display:block;clear:both}
	.tbl04 th {position:relative;border-top:0 none;float:left;width:100%;border-right:0;box-sizing:border-box; padding: 15px;}
	.tbl04 td {position:relative;border-top:0 none;float:left;width:100%;border-right:0;box-sizing:border-box; padding:15px;}
}
</style>
</head>
<body>
<form name="form1" method="post">
<input type="button" value="목록" id="btnList" class="form-control" style="width: 92%; margin-top : 10px; margin-bottom: 10px; margin-left: auto;margin-right: auto;">
<table  class="tbl04" style="text-align: left; margin-top: 10px;  width: 92%; margin-left: auto;margin-right: auto;" ><caption>상세형테이블</caption><colgroup> <col style="width: 25%;"> <col style="width: 25%;"> <col style="width: 25%;"> <col style="width: 25%;"> </colgroup>
	
  <tr>
    <th>　날짜</th>
    <td>${dto.reg_date}</td>
    <th>　조회수</th>
    <td>${dto.readcount}</td>
  </tr>
  <tr>
    <th>　이름</th>
    <td colspan="3">${dto.writer}</td>
  </tr>
  <tr>
    <th>　이용한 객실</th>
    <td colspan="3">${dto.subject}</td>
  </tr>  
  <tr>
    <th>　본문</th>
    <td colspan="3">${dto.content}</td>
  </tr>
  <tr>
    <th>　비밀번호</th>
    <td colspan="3">
      <input type="password" name="passwd" id="passwd" style="width: 50%;" class="form-control">
        <c:if test="${param.message == 'error'}">
          <span style="color: red">
           비밀번호가 일치하지 않습니다.
          </span>
        </c:if>
    </td>   
  </tr>

  <tr>
    <th>　첨부파일</th>
    <td colspan="3">
      <c:if test="${dto.filesize > 0}">
        ${dto.filename}( ${dto.filesize} bytes )
        <a href="${path}/board_servlet/download.do?num=${dto.num}">
        [다운로드]</a>
      </c:if>
    </td>
  </tr>
      <tr>
    <td  colspan="4" style=" background-image: url('../upload/${dto.filename}');
    " id = "img"> <!-- 일단 아이디 지움 -->
    </td>
  </tr>
  <tr>
    <td colspan="4" align="center">
      <input type="hidden" name="num" value="${dto.num}" class="form-control" id="usr" style="width: 50%;">
      <input type="button" value="수정/삭제" id="btnEdit" class="form-control" style="width: 50%;">
      
    </td>  
  </tr>
</table>
</form>
<!-- 댓글 쓰기 폼 -->
<table class="tbl04" style="  margin-top: 10px; margin-bottom: 10px; width: 92%;margin-left: auto;margin-right: auto;" ><caption>상세형테이블</caption><colgroup> <col style="width: 75%;"> <col style="width: 25%;"> </colgroup>
  <tr>
  <th colspan="2">　댓글입력 </th>
  </tr>
  <tr>
    <td colspan="2" style="text-align: center;">
    <input id="writer" placeholder="이름" style="width: 80%; margin-left: auto;margin-right: auto;" class="form-control" >
    <textarea rows="5" cols="80" placeholder="내용을 입력하세요"
    id="content" style="width: 80%; margin-left: auto;margin-right: auto;" class="form-control" ></textarea>
    <button id="btnSave" type="button" class="form-control"style="width: 80%;margin-left: auto;margin-right: auto;">댓글입력</button>
    </td>
      
  </tr>


</table>
<div id="commentList" style="text-align: left; margin-top: 10px;  width: 92%; margin-left: auto;margin-right: auto;" >></div>
<!-- 댓글 목록을 출력할 영역 -->

</body>
</html>