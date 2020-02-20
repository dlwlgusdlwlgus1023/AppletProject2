




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
	$("#btnSave").click(function(){
		document.form1.submit();
	});
});



</script>
<style type="text/css">
.tbl04 {width:100%;border-collapse:collapse;border-spacing:0;box-sizing:border-box;border-left:1px solid #aaa;border-right:1px solid #aaa}
.tbl04 caption {overflow:hidden;position:absolute;width:0;height:0;line-height:0;text-indent:-9999px}
.tbl04 th {padding:10px 0;border-top:1px solid #aaa;border-right:1px solid #aaa;border-bottom:1px solid #aaa;background-color:#ddd}
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
<form name="form1" method="post" enctype="multipart/form-data"
action="${path}/board_servlet/insert.do">
<table class="tbl04" style="text-align: left; margin-top: 10px;  width: 92%; margin-left: auto;margin-right: auto;" ><caption>상세형테이블</caption><colgroup> <col style="width: 25%;"> <col style="width: 75%;"> </colgroup>
  <tr>
    <th>　이름</th>
    <td><input class="form-control"name="writer" id="writer" style="width: 80%; "></td>
  </tr>
  <tr>
    <th>　객실</th>
    <td>
     <select name="subject" id="subject"  style="width: 80%; " class="form-control">
    <option >디럭스 룸</option>
    <option >슈페리얼 룸</option>
    <option >스페셜 룸</option>
    <option >기타</option>
  </select>
  </td>
  </tr>

  <tr>
    <th >　본문</th>
    <td ><textarea rows="5" cols="60"  class="form-control"
    name="content" id="content" style="width: 80%; "></textarea></td>
  </tr>
  <tr>
    <th >　사진첨부</th>
    <td style="text-align: left;"><input type="file" name="file1" style="width: 80%; " ></td>
  </tr>
  <tr>
    <th>　비밀번호</th>
    <td ><input type="password" class="form-control"name="passwd" id="passwd" style="width: 80%; "></td>
  </tr>
  <tr>
    <td colspan="2" align="center" >
      <input type="button" class="form-control"value="확인" id="btnSave" style="width: 40%; ">
    </td>
  </tr>
</table>
</form>
</body>
</html>