<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.4.1.min.js"></script>
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
<table class="tbl04" style="text-align: left;"><caption>상세형테이블</caption><colgroup> <col style="width: 100%;"> </colgroup>
<c:forEach var="row" items="${list}">
	<tr >
		<td >
			${row.writer}
			( <fmt:formatDate value="${row.reg_date}"
				pattern="yyyy-MM-dd hh:mm:ss" /> )<br>
			${row.content}
		</td>
	</tr>
</c:forEach>
</table>
</body>
</html>


