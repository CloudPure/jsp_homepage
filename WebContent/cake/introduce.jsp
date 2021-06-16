<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Cake Template">
    <meta name="keywords" content="Cake, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>중구가 시키드나</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__cart">
            <div class="offcanvas__cart__links">
                <a href="#" class="search-switch"><img src="img/icon/search.png" alt=""></a>
                <a href="#"><img src="img/icon/heart.png" alt=""></a>
            </div>
        </div>
        <div class="offcanvas__logo">
            <a href="./index.html"><img src="img/joongulogo.png" style="width: 100px; height: 80px;"></a>
        </div>
        <div id="mobile-menu-wrap"></div>
    </div>
    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
    <%@ include file="HeadFoot/header.jsp"%>
    <!-- Header Section End -->

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__text">
                        <h2><strong>문화재 소개</strong></h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__links">
                        <a href="./index.jsp">Home</a>
                        <a href="./introduce.jsp" style="color: red;">문화재 소개</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- About Section Begin -->
    <section class="about spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="about__video set-bg" data-setbg="./myimg/ds2.png" style="width:100%; height: 1000px;"  >
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="about__text">
                        <div class="section-title">
                            <span><i>덕수궁</i></span>
                        </div>
                    <ul>
                    	<li style="margin: 0 0 10px 0;">
                    	<p><b>매표 및 입장시간</b></p>
                    	<p> 09:00~ 20:00</p>
                    	</li>
                    	<li style="margin: 0 0 10px 0;">
                    	<p><b>관람시간</b></p>
                    	<p> 09:00~ 21:00</p>
                    	<p style="color:palevioletred; text-decoration: wavy underline;"> <b>야간개방: 오후 21시까지</b></p>
                    	</li>
                    	<li style="margin: 0 0 10px 0;">
                    	<p><b>휴궁일</b></p>
                    	<p>매주 월요일</p>
                    	</li>
                    	<li>
                    	<p><b>자세한 사항은 홈페이지 참조</b></p>
                    	<p style="color: skyblue; text-decoration: underline; ">https://www.deoksugung.go.kr</p>
                    	</li>
                    </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div>
              			 <p><strong>내국인</strong></p>
              			 <ul>
              			 	<li style="margin: 0 0 20px 0; border: 1px solid black;">
              			 	<table style="width: 100%; border: 2px solid black;"> 
              			 	<th style="border-collapse: collapse; border-bottom: 2px solid black; background-color: burlywood; text-align:center; ">구분</th>
              			 	<th style="border-collapse: collapse; border-bottom: 2px solid black; background-color: burlywood; text-align:center;">대상</th>
              			 	<th style="border-collapse: collapse; border-bottom: 2px solid black; background-color: burlywood; text-align:center;">개인</th>
              			 	<th style="border-collapse: collapse; border-bottom: 2px solid black; background-color: burlywood; text-align:center;">단체(10인이상)</th>
              			 	<tr>
              			 	<td style="text-align: center;">일반권</td>
              			 	<td style="text-align: center;">만25세~만64세</td>
              			 	<td style="text-align: center;">1,000원</td>
              			 	<td style="text-align: center;">800원</td>
              			 	</tr>
              			 	</table>
              			 	</li>
              			 	<p><strong>외국인</strong></p>
              			 	<li style="border: 1px solid black;">
              			 	<table style="width: 100%; border: 2px solid black;">
              			 	<th style="border-collapse: collapse; border: 2px solid black; background-color: burlywood; text-align:center;">구분</th>
              			 	<th style="border-collapse: collapse; border-bottom: 2px solid black; background-color: burlywood; text-align:center;">대상</th>
              			 	<th style="border-collapse: collapse; border-bottom: 2px solid black; background-color: burlywood; text-align:center;">개인</th>
              			 	<th style="border-collapse: collapse; border-bottom: 2px solid black; background-color: burlywood; text-align:center;">단체(10인이상)</th>
              			 	<tr>
              			 	<td rowspan="2"; style="text-align: center; border: 2px solid black;">일반권</td>
              			 	<td style="text-align: center;">소인(7세~18세)</td>
              			 	<td style="text-align: center;">500원</td>
              			 	<td style="text-align: center;">400원</td>
              			 	</tr>
              			 	<tr style="margin: 0 0 20px 0;">
              			 	<td style="text-align: center;">대인(19세~64세)</td>
              			 	<td style="text-align: center;">1,000원</td>
              			 	<td style="text-align: center; border-bottom: 2px solid black; margin: 0 0 20px 0;">800원</td>
              			 	</tr>
              			 	<tr>
              			 	<td style="text-align: center; border: 2px solid black; margin: 20px 0 0 0;">무료관람</td>
              			 	<td colspan="4"; style="text-align: center; border-top: 2px solid black; margin: 20px 0 0 0;">
              			    <p> - 6세 이하 / 65세 이상</p>
              			 	<p> - 매월 마지막 주 수요일 "문화가 있는 날"</p>
              			 	<p> - 한복을 착용한 자</p>
              			 	</td>
              			 	</tr>
              			 	</table>
              			 	</li>
              			 
              			 </ul>  
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- About Section End -->

    <!-- Testimonial Section Begin -->
    <section class="testimonial spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="section-title">
                        <span>타 문화재소개</span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="testimonial__slider owl-carousel">
                    <div class="col-lg-6">
                        <div class="testimonial__item">
                            <div class="">
                                <div>
                                    <img src="./myimg/bj.png" alt="">
                                </div>
                                <div class="testimonial__author__text">
                                    <h5>배재학당동관</h5>
                                </div>
                            </div>
							<ul>
							<li style="margin: 0 0 10px 0;">
		                    	<p><b>주소</b></p>
		                    	<p>서울시 중구 서소문로11길 19</p>
		                    	</li>
		                    	<li style="margin: 0 0 10px 0;">
		                    	<p><b>관람시간</b></p>
		                    	<p> 10:00~ 17:00</p>
		                    	</li>
		                    	<li style="margin: 0 0 10px 0;">
		                    	<p><b>휴관일</b></p>
		                    	<p>일요일/월요일/공휴일 휴무</p>
		                    	</li>
		                    	<li style="margin: 0 0 10px 0;">
		                    	<p><b>이용요금</b></p>
		                    	<p>무료</p>
		                    	</li>
							</ul>
                        </div>
                    </div>
             
                    <div class="col-lg-6">
                        <div class="testimonial__item">
                            <div class="testimonial__author">
                                <div class="">
                                    <img src="./myimg/hs.png" alt="" style="width:400px; height:300px;">
                                </div>
                                <div class="testimonial__author__text">
                                    <h5>한양도성</h5>
                                </div>
                            </div>
                          		<ul>
							<li style="margin: 0 0 10px 0;">
		                    	<p><b>백악구간</b></p>
		                    	<p>창의문~혜화문까지 이르는 구간</p>
		                    	</li>
		                    	<li style="margin: 0 0 10px 0;">
		                    	<p><b>낙산구간</b></p>
		                    	<p>헤화문~흥인지문까지 이르는 구간</p>
		                    	</li>
		                    	<li style="margin: 0 0 10px 0;">
		                    	<p><b>남산(목멱산)구간</b></p>
		                    	<p>장충체육관~백범광장까지 이르는 구간</p>
		                    	</li>
		                    	<li style="margin: 0 0 10px 0;">
		                    	<p><b>숭례문구간</b></p>
		                    	<p>백범광장~돈의문 터까지 이르는구간</p>
		                    	</li>
		                    	<li style="margin: 0 0 10px 0;">
		                    	<p><b>인왕산구간</b></p>
		                    	<p>돈의문 터~ 창의문까지 이르는구간</p>
		                    	</li>
							</ul>
        
                        </div>
                    </div>
                    
                    <div class="col-lg-6">
                        <div class="testimonial__item">
                            <div class="testimonial__author">
                                <div class="">
                                    <img src="./myimg/hp.png" alt="" style="width: 400px; height: 300px;">
                                </div>
                                <div class="testimonial__author__text">
                                    <h5>한국은행 화폐박물관</h5>
                                </div>
                            </div>
                          		<ul>
									<li style="margin: 0 0 10px 0;">
			                    	<p style="text-decoration: wavy underline;"><b>관람 사전 예약 필수</b></p>
			                    	</li>
			                    	<li style="margin: 0 0 10px 0;">
			                    	<p><b>주소</b></p>
			                    	<p>서울특별시 중구 남대문로5가 39</p>
			                    	</li>
			                    	<li style="margin: 0 0 10px 0;">
			                    	<p><b>관람시간</b></p>
			                    	<p>10:00~ 17:00</p>
			                    	</li>
			                    	<li style="margin: 0 0 10px 0;">
			                    	<p><b>휴관일</b></p>
			                    	<p>월요일,공휴일,12월29일~다음해 1월2일</p>
			                    	</li>
							</ul>
                        </div>
                    </div>
           
                    <div class="col-lg-6">
                        <div class="testimonial__item">
                            <div class="testimonial__author">
                                <div class="">
                                    <img src="./myimg/ss.png" alt="">
                                </div>
                                <div class="testimonial__author__text">
                                    <h5>이화여고 심슨기념관</h5>
                                </div>
                                	<ul>
										<li style="margin: 10px 0;">
				                    	<p style="text-decoration: underline;"><b>정보: 여기서 심슨은 미국인 사라J.심슨을 의미한다.</b></p>
				                    	</li>
				                    	<li style="margin: 0 0 10px 0;">
				                    	<p><b>주소</b></p>
				                    	<p>서울특별시 중구 정동길 26</p>
				                    	</li>
				                    	<li style="margin: 0 0 10px 0;">
				                    	<p><b>이용시간</b></p>
				                    	<p>10:00~ 17:00</p>
				                    	</li>
				                    	<li style="margin: 0 0 10px 0;">
				                    	<p><b>휴관일</b></p>
				                    	<p>일요일/공휴일 휴무</p>
				                    	</li>
				                    	<li style="margin: 0 0 10px 0;">
				                    	<p><b>이용요금</b></p>
				                    	<p>무료</p>
				                    	</li>
									</ul>
                            </div>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Testimonial Section End -->

   


<!-- Footer Section Begin -->
<%@ include file="HeadFoot/footer.jsp"%>
<!-- Footer Section End -->

<!-- Search Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- Search End -->

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery.barfiller.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.nicescroll.min.js"></script>
<script src="js/main.js"></script>
</body>

</html>