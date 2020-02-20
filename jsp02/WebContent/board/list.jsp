<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>

  
<%!
public static final String IMG_PATH = "../upload/";
%>
<script type="text/javascript">
	var filename = ${dto.filename}
</script>
<style type="text/css">
	body {
	font: 400 15px/1.8 Lato, sans-serif;
	}
:root   {
    filename : ${dto.filename}
} 
	#img {
	text-align: center;
	color: #404040;
	line-height : 2.5em;
	background-repeat : no-repeat;
	background-size : cover;
	opacity : 0.7;
    -moz-transition:  opacity 1s;
	-o-transition:  opacity 1s;
	-webkit-transition:  opacity 1s;
    transition : opacity 1s;	
	height: 200px;
	min-height: 100%;
    background-position: center;
	}
	#img a {
	vertical-align:bottom;
	display : block;
	width:100%;
	height:100%;
	-webkit-text-stroke: 0.7px #000;
	color: #fff;
	font-size: 1.3em;
	opacity: 1.0;
	-moz-transition:  opacity 1s;
	-o-transition:  opacity 1s;
	-webkit-transition:  opacity 1s;
    transition : opacity 1s;
	}
	#img:hover {
	opacity: 1.0;
	}
	#img a:hover {
	opacity: 0;
	}
.tbl01 {width:100%;border-collapse:collapse;border-spacing:0;box-sizing:border-box;border-top:1px solid #aaa;border-left:1px solid #aaa}
.tbl01 caption {overflow:hidden;position:absolute;width:0;height:0;line-height:0;text-indent:-9999px}
.tbl01 th {padding:10px 0;border-right:1px solid #aaa;border-bottom:1px solid #aaa;background-color:#ddd}
.tbl01 td {padding:10px 0 10px 10px;border-right:1px solid #aaa;border-bottom:1px solid #aaa;  }
@media (max-width: 600px) {

	.tbl01 .date {display:none}
	.tbl01 .jo {display:none}
	.tbl01 .name {width:20% !important;}
	.tbl01 .img {width:80% !important;}
}
</style>

<script src="../include/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btnWrite").click(function(){
		location.href="${path}/board/write.jsp";
	});
});

//클릭한 페이지로 이동
function list(page){
	location.href="${path}/board_servlet/list.do?curPage="+page;
}

</script>

</head>
<body>
<button id="btnWrite" class="form-control" style="width: 92%; margin-left: auto;margin-right: auto;margin-top: 10px;">글쓰기</button>
<table class="tbl01"style="margin-top: 10px;  width: 92%; margin-left: auto;margin-right: auto;" ><caption>목록형테이블</caption><colgroup> <col style="width: 12%;"> <col style="width: 65%;"> <col style="width: 13%;"> <col style="width: 10%;"> </colgroup>
<thead>
  <tr>
    <th  class="name" scope="col">고객 성함</th>
    <th  class="img" scope="col">이용한 객실(사진)</th>
    <th  class="date" scope="col">날짜</th>
    <th  class="jo" scope="col">조회수</th>
  </tr>
 <c:forEach var="dto" items="${list}">
   <c:choose>
     <c:when test="${dto.show == 'y'}">
  <tr>
    <td class="name" scope="col">${dto.writer}</td>
    
    <td style="background-image: url('../upload/${dto.filename}');
    " id = "img" class="img" scope="col" style="cursor:pointer;"> <!-- 일단 아이디 지움 -->

      
       <c:forEach var="i" begin="1" end="${dto.re_level}">
         &nbsp;&nbsp;&nbsp;
       </c:forEach>
    <a href="${path}/board_servlet/view.do?num=${dto.num}">
      ${dto.subject}
          <c:if test="${dto.comment_count > 0}">
    	<span style="color: red;">(${dto.comment_count})</span>
    </c:if>
      </a>


    </td>           
    <td class="date" scope="col">${dto.reg_date}</td>
    <td class="jo" scope="col">${dto.readcount}</td>

  
    
  </tr>
  </c:when>
  <c:otherwise>
    <tr>
     
    </tr>
  </c:otherwise>
  </c:choose>
 </c:forEach> 
 <tr>
   <td colspan="7" align="center">
     <c:if test="${page.curBlock > 1 }">
       <a href="#" onclick="list('1')">[처음]</a>
     </c:if>
     <c:if test="${page.curBlock > 1 }">
       <a href="#" onclick="list('${page.prevPage}')">[이전]</a>
     </c:if>
     <c:forEach var="num" begin="${page.blockStart}" 
     end="${page.blockEnd}">
       <c:choose>
         <c:when test="${num == page.curPage}">
           <span style="color: red">${num}</span>
         </c:when>
         <c:otherwise>
           <a href="#" onclick="list('${num}')">${num}</a>
         </c:otherwise>
       </c:choose>
     </c:forEach>
     <c:if test="${page.curBlock < page.totBlock}">
       <a href="#" onclick="list('${page.nextPage}')">[다음]</a>
     </c:if>
     <c:if test="${page.curBlock < page.totBlock}">
       <a href="#" onclick="list('${page.totPage}')">[끝]</a>
     </c:if>
 </tr>
</table>
</body>
</html>