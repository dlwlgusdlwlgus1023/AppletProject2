<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약정보</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript">

function chkBox() {
	if (document.getElementById('chk1').checked == false) {
		  alert('약관을 동의하여주십시오.');
		return false;
		}else{
			alert('결제가 완료되었습니다.');
			location.href="boos.jsp";
		}
}


</script>
    <style>
  body {
    font: 400 15px/1.8 Lato, sans-serif;
    color: #777;
  }
  h3, h4 {
    margin: 10px 0 30px 0;
    letter-spacing: 10px;      
    font-size: 20px;
    color: #111;
  }
  .container {
    padding: 80px 120px;
  }
  @media (max-width: 600px) {
    .container {
    padding: 80px 0px;
    }
  }
  .person {
    border: 10px solid transparent;
    margin-bottom: 25px;
    width: 50%;
    height: 50%;
    opacity: 0.8;
  }
  .person:hover {
    border-color: #f1f1f1;
  }
  .carousel-inner img {
    width: 100%; 
    margin: auto;
  }
  .carousel-caption h3 {
    color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  @media (max-width: 600px) {
    #info {
      display: none; 
    }
  }
  .bg-1 {
    background: #2d2d30;
    color: #bdbdbd;
  }
  .bg-1 h3 {color: #fff;}
  .bg-1 p {font-style: italic;}
  .list-group-item:first-child {
    border-top-right-radius: 0;
    border-top-left-radius: 0;
  }
  .list-group-item:last-child {
    border-bottom-right-radius: 0;
    border-bottom-left-radius: 0;
  }
  .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail p {
    margin-top: 15px;
    color: #555;
  }
  .btn {
    padding: 10px 20px;
    background-color: #333;
    color: #f1f1f1;
    border-radius: 0;
    transition: .2s;
  }
  .btn:hover, .btn:focus {
    border: 1px solid #333;
    background-color: #fff;
    color: #000;
  }
  .modal-header, h4, .close {
    background-color: #333;
    color: #fff !important;
    text-align: center;
    font-size: 30px;
  }
  .modal-header, .modal-body {
    padding: 40px 50px;
  }
  .nav-tabs li a {
    color: #777;
  }
  #googleMap {
    width: 100%;
    height: 400px;
    -webkit-filter: grayscale(100%);
    filter: grayscale(100%);
  }  
  .navbar {
    font-family: Montserrat, sans-serif;
    margin-bottom: 0;
    background-color: #2d2d30;
    border: 0;
    font-size: 11px !important;
    letter-spacing: 4px;
    opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand { 
    color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
    color: #fff !important;
  }
  .navbar-nav li.active a {
    color: #fff !important;
    background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
    border-color: transparent;
  }
  .open .dropdown-toggle {
    color: #fff;
    background-color: #555 !important;
  }
  .dropdown-menu li a {
    color: #000 !important;
  }
  .dropdown-menu li a:hover {
    background-color: blue !important;
  }
  footer {
    background-color: #2d2d30;
    color: #f5f5f5;
    padding: 32px;
  }
  footer a {
    color: #f5f5f5;
  }
  footer a:hover {
    color: #777;
    text-decoration: none;
  }  
  .form-control {
    border-radius: 0;
  }
  textarea {
    resize: none;
  }
  </style>
</head>
<body>
<%request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
String rooms = request.getParameter("rooms");
Object date = request.getParameter("date");
String email = request.getParameter("email");
int money = Integer.parseInt(request.getParameter("money"));
int tel1 = Integer.parseInt(request.getParameter("tel1"));
int tel2 = Integer.parseInt(request.getParameter("tel2"));
int tel3 = Integer.parseInt(request.getParameter("tel3"));
%>


<div id="myModal" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h4>예약정보</h4>
		</div> <div class="modal-body">
 	 	 <div class="form-group">
		 <label for="name"><span class="glyphicon glyphicon-user"></span>이름</label>
		  : <%=name %>
		</div>  
 	 	 <div class="form-group">
		<label for="rooms"><span class="glyphicon glyphicon-ok"></span>객실</label>
		  : <%=rooms %>
		</div>  	
            <div class="form-group">
              <label for="date"><span class="glyphicon glyphicon-calendar"></span>투숙일</label>
           		: <%=date %>
			</div>
            <div class="form-group">
              <label for="email"><span class="glyphicon glyphicon-envelope"></span>이메일</label>
           		: <%=email %>              
            </div>      			
			<div class="form-group">
            <label for="hp"><span class="glyphicon glyphicon-phone"></span>핸드폰번호</label>
             : 0<%=tel1%>-<%=tel2%>-<%=tel3%>
            </div><hr>
            <div>
			    <label for="money"><span class="glyphicon glyphicon-piggy-bank"></span>총금액</label>
			    : <%=money%>원
			   </div><hr>


<iframe src="clause.html"width="100%" height="200px;" name="iframe">
 
 
 </iframe>
	<div>
	<label for="money"><span class="	glyphicon glyphicon-certificate"></span>약관동의</label>
	<input name ="chk1" id="chk1" type="checkbox" style="text-align: left;" >
	</div> 
<hr>
 

<a href="boos.jsp" class="btn btn-danger btn-default pull-left"><b >다시예약하기</b></a>

<button class="btn btn-danger btn-default pull-right" type="submit" onclick="chkBox()"><b>결제</b></button>
<BR><BR><BR>

</div>
</div></div>



</body>
</html>