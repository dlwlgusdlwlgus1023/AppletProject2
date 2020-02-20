<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btnUpdate").click(function(){
		document.form1.action="${path}/board_servlet/update.do";
		document.form1.submit();
	});
	$("#btnDelete").click(function(){
		if(confirm("삭제하시겠습니까?")){
			document.form1.action="${path}/board_servlet/delete.do";
			document.form1.submit();			
		}
	});
});
</script>
<style type="text/css">
.tbl04 {width:100%;border-collapse:collapse;border-spacing:0;box-sizing:border-box;border-left:1px solid #aaa;border-right:1px solid #aaa}
.tbl04 caption {overflow:hidden;position:absolute;width:0;height:0;line-height:0;text-indent:-9999px}
.tbl04 th { padding:10px 0 10px 10px;border-top:1px solid #aaa;border-right:1px solid #aaa;border-bottom:1px solid #aaa;background-color:#ddd}
.tbl04 td {padding:10px 0 10px 10px;border-top:1px solid #aaa;border-right:1px solid #aaa;border-bottom:1px solid #aaa}
@media all and (max-width:767px){
	.tbl04,
	.tbl04 thead,
	.tbl04 tbody,
	.tbl04 tr,
	.tbl04 th,
	.tbl04 td {display:block}
	.tbl04 {border-top:1px solid #000}
	.tbl04 tr:after {content:"";display:block;clear:both}
	.tbl04 th {position:relative;border-top:0 none;float:left;width:100%;border-right:0;box-sizing:border-box}
	.tbl04 td {position:relative;border-top:0 none;float:left;width:100%;border-right:0;box-sizing:border-box}
}
</style>
</head>
<body>
<input onclick="history.back()" type="button" value="뒤로가기" class="form-control" style="width: 92%; margin-top : 10px; margin-bottom: 10px; margin-left: auto;margin-right: auto;">
<form name="form1" method="post" enctype="multipart/form-data">
<table class="tbl04" style="text-align: left; margin-top: 10px;  width: 92%; margin-left: auto;margin-right: auto;" ><caption>상세형테이블</caption><colgroup> <col style="width: 25%;"> <col style="width: 25%;"> <col style="width: 25%;"> <col style="width: 25%;"> </colgroup>
  <tr>
    <th>이름</th>
    <td><input name="writer" id="writer" value="${dto.writer}"  style="width: 80%;" class="form-control"></td>
  </tr>
  <tr>
    <th>이용한 객실</th>
    <td>
    <select name="subject" id="subject"  
     style="width: 80%;" class="form-control">
    <option >디럭스 룸</option>
    <option >슈페리얼 룸</option>
    <option >스페셜 룸</option>
    <option >기타</option>
  </select>
    
  </tr>
  <tr>
    <th>내용</th>
    <td><textarea rows="5" cols="60" 
    name="content" id="content" style="width: 80%;" class="form-control">${dto.content}</textarea></td>
  </tr>
  <tr>
    <th>첨부파일</th>
    <td>
      <c:if test="${dto.filesize > 0 }">
				${dto.filename} ( ${dto.filesize / 1024} KB )
				<input type="checkbox" name="fileDel" >첨부파일 삭제	<br>
			</c:if>
    <input type="file" name="file1" ></td>
  </tr>
  <tr>
  </tr>
  <tr>
    <td colspan="2" align="center">
      <!-- 수정,삭제를 위한 처리 -->
      <input type="hidden" name="num" value="${dto.num}" style="width: 50%;" class="form-control">
      <input type="button" value="수정" id="btnUpdate" style="width: 50%;" class="form-control">
      <input type="button" value="삭제" id="btnDelete" style="width: 50%;" class="form-control">
    </td>
  </tr>
</table>
</form>
</body>
</html>