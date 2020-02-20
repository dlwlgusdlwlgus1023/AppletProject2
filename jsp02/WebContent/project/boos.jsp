<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>::대한민국 1등호텔 지현호텔 ::</title>
<script src="../include/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
function roomDisplay(frm) {
    var room = frm.rooms.selectedIndex;
    switch( room ){
	   case 0:
		     frm.room.value = null;
		 	op1.checked = false;
			op2.checked = false;
			op3.checked = false;
			op4.checked = false;
			document.getElementById("option").value = 0;
			document.getElementById("money").value = '';
			 break;
			 
	   case 1:
	     frm.room.value = 80000;
	 	op1.checked = false;
		op2.checked = false;
		op3.checked = false;
		op4.checked = false;
		document.getElementById("option").value = 0;
		document.getElementById("money").value = 80000;
		 break;
	   case 2:
	     frm.room.value = 120000;
	 	op1.checked = false;
		op2.checked = false;
		op3.checked = false;
		op4.checked = false;
		document.getElementById("option").value = 0;
		document.getElementById("money").value = 120000;
		 break;
	   case 3:
	     frm.room.value = 350000;
	 	op1.checked = false;
		op2.checked = false;
		op3.checked = false;
		op4.checked = false;
		document.getElementById("option").value = 0;
		document.getElementById("money").value = 350000;
		 break;
    }
    return true;
	op1.checked = false;
	op2.checked = false;
	op3.checked = false;
	op4.checked = false;
	document.getElementById("option").value = 0;
}
function op(){
	var option = 
		Number(document.getElementById("option").defaultValue);
	for (var i=1; i<=4; i++){

		var chkObj = document.getElementById("op"+i);
		if (chkObj.checked){
			option = option+Number(chkObj.value);
			} 
	}
		
		document.getElementById("option").value = option;
		var r = document.getElementById("room").value;
		document.getElementById("money").value = parseInt(option)+parseInt(r);
			
		
}



</script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">JihyunHotel</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#infoma">호텔소개</a></li>
        <li><a href="#tour">객실예약</a></li>
        <li><a href="#hoho">고객후기</a></li>
        <li><a data-toggle="modal" data-target="#myModal">바로예약</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#" >MORE
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#contact">호텔역사</a></li>
            <li><a href="#contact">부대시설</a></li>
            <li><a href="#contact">호텔조식</a></li> 
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="images/ho2.jpg" alt="Seoul" width="1200" height="500">
        <div class="carousel-caption">
          <h3>JihyunHotel in Seoul</h3>
          <p>지현호텔 인 서울에서 도심속 여유를 즐기세요!</p>
        </div>      
      </div>

      <div class="item">
        <img src="images/ho1.jpg" alt="Jeju" width="1200" height="500">
        <div class="carousel-caption">
          <h3>JihyunHotel in Jeju</h3>
          <p>지현호텔 인 제주에서 자연의 향기에 취하세요!</p>
        </div>      
      </div>
    
      <div class="item">
        <img src="images/ho3.jpg" alt="NewYork" width="1200" height="500">
        <div class="carousel-caption">
          <h3>JihyunHotel in NewYork</h3>
          <p>지현호텔 인 뉴욕에서 새로운 문화를 접해보세요!</p>
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>

<!-- Container (The Band Section) -->
<div class="container text-center" id="infoma">
  <h3>JihyunHotel</h3>
  <p id = "info"><em>지현호텔은 대한민국 최대규모 호텔입니다.</em></p>
  <p id = "info">이제 아시아를 넘어 세계로 뻗어가는 글로벌 호텔로서 전세계 어디에서나 한결같이 품격있는 서비스와 시설로 고객에게 깊은 감동을 주는 브랜드를 지향하고 있습니다.
균형 있는 라이프스타일을 추구하며 품격의 가치를 아는 고객을 위해 세련되고 모던한 감각을 지닌 안락한 객실과 세심한 배려가 묻어나는 서비스를 준비합니다.
또한 지현호텔만의 감각적인 오트 퀴진과 다양한 경험을 제공하는 호텔시설은 감동을 더해드립니다.
지현호텔에서 품격 있는 휴식으로 삶의 균형을 완성해가시길 바랍니다.</p>
  <br>
  <div class="row">
    <div class="col-sm-4" style="width: 100%">
      <p class="text-center"><strong>JihyunHotel in Seoul</strong></p><br>
      <a href="#demo" data-toggle="collapse">
        <img src="images/ho2.jpg" class="img-circle person" alt="Seoul" width="255" height="255">
      </a>
      <div id="demo" class="collapse">
        <p style="font-size: 1.3em; background-color: #555; color: #fff">JihyunHotel in Seoul<p>
        <p>서울특별시 강남구 테헤란로235</p>
        <p>since 2013</p>
        <button class="btn" data-toggle="modal" data-target="#myModal2">객실보기</button>
      </div>
    </div>
    
    <div class="col-sm-4"style="width: 100%">
    
    <br><br>    <br>
      <p class="text-center"><strong>JihyunHotel in Jeju</strong></p><br>
      <a href="#demo2" data-toggle="collapse">
        <img src="images/ho1.jpg" class="img-circle person" alt="Jeju" width="255" height="255">
      </a>
      <div id="demo2" class="collapse" >
        <p style="font-size: 1.3em; background-color: #555; color: #fff">JihyunHotel in Jeju<p>
        <p>제주 서귀포시 표선면 537</p>
        <p>since 2015</p>
		<button class="btn" data-toggle="modal" data-target="#myModal3">객실보기</button>
      </div>
    </div>
    
    <div class="col-sm-4"style="width: 100%">
    <br><br><br>
      <p class="text-center"><strong>JihyunHotel in New York</strong></p><br>
      <a href="#demo3" data-toggle="collapse">
        <img src="images/ho3.jpg" class="img-circle person" alt="New York" width="255" height="255">
      </a>
      <div id="demo3" class="collapse">
        <p style="font-size: 1.3em; background-color: #555; color: #fff">JihyunHotel in New York<p>
        <p>America New York HaHaHoHo</p>
        <p>since 2018</p>
        <button class="btn" data-toggle="modal" data-target="#myModal4">객실보기</button>
      </div>
    </div>
  </div>
</div>

<!-- Container (TOUR Section) -->
<div id="tour" class="bg-1">
  <div class="container">
    <h3 class="text-center">객실예약</h3>
    <div class="row text-center">
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="images/ho2.jpg" alt="Paris" width="400" height="300">
          <p><strong>JihyunHotel in Seoul</strong></p>
          <p>서울특별시 강남구</p>
          <button class="btn" data-toggle="modal" data-target="#myModal">예약하기</button>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="images/ho1.jpg" alt="New York" width="400" height="300">
          <p><strong>JihyunHotel in Jeju</strong></p>
          <p>제주 서귀포시</p>
          <button class="btn" data-toggle="modal" data-target="#myModal">예약하기</button>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="images/ho3.jpg" alt="San Francisco" width="400" height="300">
          <p><strong>JihyunHotel in N.Y</strong></p>
          <p>America New York</p>
          <button class="btn" data-toggle="modal" data-target="#myModal">예약하기</button>
        </div>
      </div>
    </div>
  </div>
  
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4>
reservation</h4>
        </div>
        <div class="modal-body">
          <form name = "form" action="reservation.jsp" method="post">
            <div class="form-group">
              <label for="name"><span class="glyphicon glyphicon-user"></span>예약자명</label>
              <input type="text"  required="required" class="form-control" id="name" name="name" placeholder="ex)홍길동">
            </div>
            <div class="form-group">
              <label for="rooms"><span class="glyphicon glyphicon-ok"></span>객실선택</label>
              <select class="form-control" name="rooms" onchange="roomDisplay(this.form)">
				<option value="" >-선택하세요-</option>
				<option value="스탠다드 룸" >스탠다드 룸</option>
				<option value="디럭스 룸" >디럭스 룸</option>
				<option value="스페셜 룸" >스페셜 룸</option>
			  </select>
            </div>
            <div class="form-group">
              <label for="date"><span class="glyphicon glyphicon-calendar"></span>투숙일 선택</label>
              <input class="form-control" name="date" type="date" val="z" required="required" min="2020-01-17" max="2099-01-01" id="now_date">
            <script>
				document.getElementById('now_date').valueAsDate = new Date();
				</script>              
            </div>
            <div class="form-group">
              <label for="email"><span class="glyphicon glyphicon-envelope"></span>이메일</label>
              <input class="form-control" type="email" required="required" name="email" placeholder="이메일을 입력하시오">
            </div>            
            
            <div class="form-group">
              <label for="hp"><span class="glyphicon glyphicon-phone"></span>핸드폰번호</label>
              <table ><tr ><td width="30%">
                 <select class="form-control" name="tel1">
					<option value=010>010</option>
					<option value=019>019</option>
					<option value=011>011</option>
					<option value=012>012</option>
   				  </select>
   				  </td><td>
   				  -</td><td>
					<input class="form-control" type="tel" pattern="\d{3,4}" name="tel2"
	 				title="숫자 3~4자리" required placeholder="***~****">
	 				</td><td>-</td><td>
	   				<input class="form-control" type="tel" pattern="\d{4}" name="tel3"
	   				title="숫자 4자리" required placeholder="****"></td>
            </tr></table>
            </div>
				  
				 <label for="op"><span class="glyphicon glyphicon-paperclip"></span>옵션선택</label><br><div align="center" style="background-color: rgba(0,0,0,0.7); color: white; height: 150px; padding-top: 20px; border: dotted 3px; ">
				  오션뷰(미선택시 객실 임의지정/+20000) - <input  type="checkbox" name = "op1" id = "op1" value="20000" onclick="op()"><br>
				 조식포함(+15000) - <input type="checkbox" name = "op2" id = "op2" value="15000" onclick="op()"><br>
				  2인조식포함(+30000) - <input type="checkbox" name = "op3" id = "op3" value="30000" onclick="op()"><br>
				 엑스트라 베드추가(+30000)<input type="checkbox" name = "op4" id = "op4" value="30000" onclick="op()"><br>
				</div>
				<br>
				<div>
				  <label for="room"><span class="glyphicon glyphicon-piggy-bank"></span>객실금액</label>
				<input type="text" name="room" id = "room" class="form-control" placeholder="원하시는 객실은 선택해주세요."  required  readonly="readonly">
				</div>
				<div>
				  <label for="option"><span class="glyphicon glyphicon-piggy-bank"></span>추가요금</label>
				<input type="text"  readonly="readonly" name="option" id = "option" class="form-control" required >
				</div>			
				<div>
				 <label for="money"><span class="glyphicon glyphicon-piggy-bank"></span>총금액</label>
				<input  readonly="readonly" name="money" id = "money" class="form-control" required readonly="readonly" >
				</div><br><br>					
              <button class="btn btn-block" data-target="#myModal5">Pay
               <span class="glyphicon glyphicon-ok"></span></button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
          
            <span class="glyphicon glyphicon-remove"></span> Cancel
          </button>
        </div>
      </div>
    </div>
  </div>
</div>


    
    <!-- 서울지점 객실 슬라이드 -->
   <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header" >
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4>Seoul branch</h4>
        </div>
<div id="myroom1" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myroom1" data-slide-to="0" class="active"></li>
      <li data-target="#myroom1" data-slide-to="1"></li>
      <li data-target="#myroom1" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="images/room11.jpg" alt="Seoul" width="1200" height="500">
        <img src="images/room12.jpg" alt="Seoul" width="1200" height="500">
        <div class="carousel-caption">
          <h3>Standard Room</h3>
          <p>일~목 : 80,000원</p>
          <p>금~토 : 80,000원(리뉴얼 기념할인)</p>
        </div>      
      </div>

      <div class="item">
        <img src="images/room21.jpg" alt="Jeju" width="1200" height="500">
        <img src="images/room22.jpg" alt="Jeju" width="1200" height="500">
        <div class="carousel-caption">
          <h3>Deluxe Room</h3>
          <p>일~목 : 120,000원</p>
          <p>금~토 : 120,000원(리뉴얼 기념할인)</p>          
        </div>      
      </div>
    
      <div class="item">
        <img src="images/room31.jpg" alt="NewYork" width="1200" height="500">
        <img src="images/room32.jpg" alt="NewYork" width="1200" height="500">
        <div class="carousel-caption">
          <h3>Special Room</h3>
          <p>일~목 : 350,000원</p>
          <p>금~토 : 350,000원(리뉴얼 기념할인)</p> 
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myroom1" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myroom1" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>        
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
            <span class="glyphicon glyphicon-remove"></span> Cancel
          </button>

        </div>
      </div>
    </div>
  </div>
    <!-- 제주지점 객실 슬라이드 -->
   <div class="modal fade" id="myModal3" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header" >
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4>Jeju branch</h4>
        </div>
<div id="myroom2" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myroom2" data-slide-to="0" class="active"></li>
      <li data-target="#myroom2" data-slide-to="1"></li>
      <li data-target="#myroom2" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="images/room11.jpg" alt="Seoul" width="1200" height="500">
        <img src="images/room12.jpg" alt="Seoul" width="1200" height="500">
        <div class="carousel-caption">
          <h3>Standard Room</h3>
          <p>일~목 : 80,000원</p>
          <p>금~토 : 80,000원(리뉴얼 기념할인)</p>
        </div>      
      </div>

      <div class="item">
        <img src="images/room21.jpg" alt="Jeju" width="1200" height="500">
        <img src="images/room22.jpg" alt="Jeju" width="1200" height="500">
        <div class="carousel-caption">
          <h3>Deluxe Room</h3>
          <p>일~목 : 120,000원</p>
          <p>금~토 : 120,000원(리뉴얼 기념할인)</p>          
        </div>      
      </div>
    
      <div class="item">
        <img src="images/room31.jpg" alt="NewYork" width="1200" height="500">
        <img src="images/room32.jpg" alt="NewYork" width="1200" height="500">
        <div class="carousel-caption">
          <h3>Special Room</h3>
          <p>일~목 : 350,000원</p>
          <p>금~토 : 350,000원(리뉴얼 기념할인)</p> 
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myroom2" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myroom2" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>        
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
            <span class="glyphicon glyphicon-remove"></span> Cancel
          </button>
        </div>
      </div>
    </div>
  </div>
    <!-- 뉴욕지점 객실 슬라이드 -->
   <div class="modal fade" id="myModal4" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header" >
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4>N.Y branch</h4>
        </div>
<div id="myroom3" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myroom3" data-slide-to="0" class="active"></li>
      <li data-target="#myroom3" data-slide-to="1"></li>
      <li data-target="#myroom3" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="images/room11.jpg" alt="Seoul" width="1200" height="500">
        <img src="images/room12.jpg" alt="Seoul" width="1200" height="500">
        <div class="carousel-caption">
          <h3>Standard Room</h3>
          <p>일~목 : 80,000원</p>
          <p>금~토 : 80,000원(리뉴얼 기념할인)</p>
        </div>      
      </div>

      <div class="item">
        <img src="images/room21.jpg" alt="Jeju" width="1200" height="500">
        <img src="images/room22.jpg" alt="Jeju" width="1200" height="500">
        <div class="carousel-caption">
          <h3>Deluxe Room</h3>
          <p>일~목 : 120,000원</p>
          <p>금~토 : 120,000원(리뉴얼 기념할인)</p>          
        </div>      
      </div>
    
      <div class="item">
        <img src="images/room31.jpg" alt="NewYork" width="1200" height="500">
        <img src="images/room32.jpg" alt="NewYork" width="1200" height="500">
        <div class="carousel-caption">
          <h3>Special Room</h3>
          <p>일~목 : 350,000원</p>
          <p>금~토 : 350,000원(리뉴얼 기념할인)</p> 
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myroom3" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myroom3" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>        
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
            <span class="glyphicon glyphicon-remove"></span> Cancel
          </button>
        </div>
      </div>
    </div>
  </div>    

<!-- Container (Contact Section) -->
<div id="contact" class="container">



  <br>
  <h3 class="text-center" id="#more">More</h3>  
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">호텔역사</a></li>
    <li><a data-toggle="tab" href="#menu1">부대시설</a></li>
    <li><a data-toggle="tab" href="#menu2">프리미엄 조식</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h2>호텔역사</h2>
      <p>1997.04.20 : 지현호텔 설립자 이지현 탄생<br>2012.05.05 : 지현호텔 인 서울 오픈
      <br>2015.07.17 : 지현호텔 인 제주 오픈
      <br>2017.08.03 : 지현호텔 인 뉴욕 오픈
      <br>2018.12.12 : 문화체육관광부 선정 올해의 호텔 선정<1회>
      <br>2018.12.19 : 관광객이 숙박하기 좋은호텔 1위 선정
      <br>2019.05.15 : 문화체육관광부 선정 올해의 호텔 선정<2회>
      <br>...
      </p>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h2>부대시설</h2>
<div id="boodae" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#boodae" data-slide-to="0" class="active"></li>
      <li data-target="#boodae" data-slide-to="1"></li>
      <li data-target="#boodae" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="images/sw1.jpg" alt="sw" width="1200" height="500">
        <div class="carousel-caption">
          <h3>스페셜 풀</h3>
          <p>지현호텔에서 최상의 물놀이를 즐기세요!</p>
        </div>      
      </div>

      <div class="item">
        <img src="images/la1.jpg" alt="la" width="1200" height="500">
        <div class="carousel-caption">
          <h3>로얄 라이브러리</h3>
          <p>지현호텔 에서 여유로운 독서생활을 즐기세요!</p>
        </div>      
      </div>
    
      <div class="item">
        <img src="images/bar1.jpg" alt="bar" width="1200" height="500">
        <div class="carousel-caption">
          <h3>Y21se BAR</h3>
          <p>지현호텔 최고층의 위치한 Y21se BAR에서 완벽한 하루를 마무리하세요!</p>
        </div>      
      </div>
    </div>
    <a class="left carousel-control" href="#boodae" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#boodae" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>    

    </div>
    <div id="menu2" class="tab-pane fade">
      <h2>L'jh 레스토랑 조식</h2>
      <div id="jo" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#jo" data-slide-to="0" class="active"></li>
      <li data-target="#jo" data-slide-to="1"></li>
      <li data-target="#jo" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="images/jo1.jpg" alt="jo1" width="1200" height="500">
        <div class="carousel-caption">
          <h3>L'jh 레스토랑 조식</h3>
        </div>      
      </div>

      <div class="item">
        <img src="images/jo2.jpg" alt="jo2" width="1200" height="500">
        <div class="carousel-caption">
          <h3>L'jh 레스토랑 조식</h3>
        </div>      
      </div>
    
      <div class="item">
        <img src="images/jo3.jpg" alt="jo3" width="1200" height="500">
        <div class="carousel-caption">
          <h3>L'jh 레스토랑 조식</h3>
        </div>      
      </div>
    </div>
    <a class="left carousel-control" href="#jo" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#jo" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div> 
    </div>
  </div>
</div>

<div id="hoho" class="bg-1">
  <div class="container">
    <h3 class="text-center">이용후기</h3>
	<iframe class="tab-content" src="../board/index.jsp" width="100%" height="700px;"></iframe>
  </div>
</div>


<!-- Image of location/map -->
<img src="images/ho1.jpg" class="img-responsive" style="width:100%">

<!-- Footer -->
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  <p><a href="#myPage" data-toggle="tooltip">JiHyunHotel Copyright © All Rights Reserved.</a></p> 
  <p><span class="glyphicon glyphicon-map-marker"></span><a href="https://map.naver.com/v5/search/%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EA%B0%95%EB%82%A8%EA%B5%AC%20%ED%85%8C%ED%97%A4%EB%9E%80%EB%A1%9C235?c=14141309.2656421,4509305.8250358,14,0,0,0,dh">주소 : 서울특별시 강남구 테헤란로235</a></p>
      <p><span class="glyphicon glyphicon-phone"></span>Phone : 010-8709-5533</p>
      <p><span class="glyphicon glyphicon-envelope"></span><a href="https://mail.naver.com/">Email : dlwlgus5533@naver.com</a></p>
      
</footer>

<script>
$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip(); 
  
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    if (this.hash !== "") {

      event.preventDefault();

      var hash = this.hash;

      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        window.location.hash = hash;
      });
    }
  });
})
</script>

</body>