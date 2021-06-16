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
                        <h2>Registered</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__links">
                        <a href="./index.jsp">Home</a>
                         <a href="./classify1.jsp">Country & City Designated</a>
                         <a href="./classify2.jsp" style="color: red;">Registered</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->
	
	<!-- Designated Begin -->
	<button class="btn" id="btn3">등록문화재</button>
    <!-- <button id="re" type="reset">reset</button> -->

    <div class = "row">
		<div class = "col-md-7">
			<div id="map" style = "width:100%;height:548px; margin-left:15px"></div>
		</div>
		<!-- List Begin -->
		<div id = "list3" class = "col-md-5" style = "display:none">
			<div class="list-group" style = "max-width:100%; margin-left:15px; margin-right:15px; max-height:548px; overflow:scroll; -webkit-overflow-scrolling:touch">
				<%@ include file="register.jsp"%>
				
			</div>
		</div>
	</div>
	
	
	 <script src ="../js/jquery-3.6.0.js"></script>
    
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=16fa6962d25a035624e2ea5cc720f790&libraries=services"></script>
    <script>
        var positions3 = [
		        {
		        address:'서울특별시 중구 남대문로2가 5',
		        text: '서울 남대문로 한국전력공사 사옥'
		        },
			    {
				address:'서울특별시 중구 정동 32-1',
				text:'서울 이화여자고등학교 심슨기념관'
			    },
			    {
				address:'서울특별시 중구 태평로1가 60-1',
				text:'서울 구 국회의사당'
			    },
			    {
				address:'서울특별시 중구 태평로1가 31',
				text:'구 서울특별시청사'
			    },
			    {
				address:'서울특별시 중구 서소문동 37',
				text:'서울 구 대법원 청사'
			    },
			    {
				address:'서울특별시 중구 을지로1가 63',
				text:'서울 구 미국문화원'
			    },
			    {
				address:'서울특별시 중구 정동3',
				text:'경운궁 양이재'
			    },
			    {
				address:'서울특별시 중구 정동 1-28',
				text:'서울 구 신아일보 별관'
			    }
		];

         $(function(){
            $('#btn3').click(function(){
          
            var mapContainer = document.getElementById('map'); // 지도를 표시할 div 
            const listDiv3 = document.getElementById('list3');
			
            if(listDiv3.style.display === 'none')  {
                listDiv3.style.display = 'block';
                //listDiv2.style.display = 'none';
              }else {
                //listDiv1.style.display = 'none';
                //listDiv2.style.display = 'block';
              }
            
            mapOption = { 
                center: new kakao.maps.LatLng(37.56563476118024, 126.9779621467762), // 지도의 중심좌표
                level: 4 // 지도의 확대 레벨
            };   

            var map = new kakao.maps.Map(mapContainer, mapOption);
            
            for(let i = 0; i < positions3.length; i++){
            // 주소-좌표 변환 객체를 생성합니다
            var geocoder = new kakao.maps.services.Geocoder();
            // 주소로 좌표를 검색합니다
            geocoder.addressSearch(positions3[i].address, function(result, status) {

            // 정상적으로 검색이 완료됐으면 
            if (status === kakao.maps.services.Status.OK) {

            var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

            // 결과값으로 받은 위치를 마커로 표시합니다
            var marker = new kakao.maps.Marker({
                map: map,
                position: coords
            });

			//인포윈도우로 장소에 대한 설명을 표시합니다
			var infowindow = new kakao.maps.InfoWindow({
				content: '<div style="width:150px;text-align:center;padding:3px 0;">'+positions3[i].text+'</div>'
			});
            // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
            // 이벤트 리스너로는 클로저를 만들어 등록합니다 
            // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
            kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
            kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
        }

        // 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
        function makeOverListener(map, marker, infowindow) {
            return function() {
                infowindow.open(map, marker);
            };
        }

        // 인포윈도우를 닫는 클로저를 만드는 함수입니다 
        function makeOutListener(infowindow) {
            return function() {
                infowindow.close();
            };
        }

			// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			//map.setCenter(coords);
	});
}

});
}); //end of function


         /*
         $(function(){
            $("#re").click(function(){
                $('.btn3').hide();
        });
        */

    </script>
    <style>
	 #btn3{
	 border-radius: 24px;
	 border: 2px solid rgba(255, 182, 72, 0.986);
	 padding: 10px; 
	 margin: 10px;
	 background-color: rgba(255, 182, 72, 0.986);
	 padding: 10px;
	 
	 }
	 #btn3:hover{
	 border-radius: 24px;
	 border: 2px solid #0dffcbfb;
	 padding: 10px; 
	 margin: 10px;
	 background-color: #0dffcbfb;
	 padding: 10px;
	 
	 }
	
	</style>
	<!-- Designated End -->
	    
         

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

</html>