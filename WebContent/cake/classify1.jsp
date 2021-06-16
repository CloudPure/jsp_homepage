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
                        <h2>Country & City Designated</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__links">
                        <a href="./index.jsp">Home</a>
                         <a href="./classify1.jsp" style="color: red;">Country & City Designated</a>
                         <a href="./classify2.jsp">Registered</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->
	
	<!-- Designated Begin -->
	<button class="btn" id="btn1">국가지정문화재</button>
    <button class="btn" id="btn2">시지정문화재</button>
    <!-- <button id="re" type="reset">reset</button> -->

    <div class = "row">
		<div class = "col-md-7">
			<div id="map" style = "width:100%;height:548px; margin-left:15px"></div>
		</div>
		<!-- List Begin -->
		<div id = "list1" class = "col-md-5" style = "display:none">
			<div class="list-group" style = "max-width:100%; margin-left:15px; margin-right:15px; max-height:548px; overflow:scroll; -webkit-overflow-scrolling:touch">
				<%@ include file="country.jsp"%>
				
			</div>
		</div>
		<!-- List Begin -->
		<div id = "list2" class = "col-md-5" style = "display:none">
			<div class="list-group" style = "max-width:100%; margin-left:15px; margin-right:15px; max-height:548px; overflow:scroll; -webkit-overflow-scrolling:touch">
				<%@ include file="city.jsp"%>
				
			</div>
		</div>
		<!-- List End -->
	</div>
	
	
	 <script src ="../js/jquery-3.6.0.js"></script>
    
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=16fa6962d25a035624e2ea5cc720f790&libraries=services"></script>
    <script>
        var positions1 = [
        	{
                address:'서울특별시 중구 남대문로4가 29',
                text: '숭례문'
                },
        	    {
        		address:'서울특별시 중구 돈의문~오간수문(광희동2가 105)',
        		text:'서울 한양도성(광화문포함)'
        	    },
        	    {
        		address:'서울특별시 중구 정동 5-1',
        		text:'덕수궁'
        	    },
        	    {
        		address:'서울특별시 중구 소공동 87-14',
        		text:'환구단'
        	    },
        	    {
        		address:'서울특별시 중구 중림동 149-2',
        		text:'서울 약현성당'
        	    },
        	    {
        		address:'서울특별시 중구 정동 15-1',
        		text:'서울 구 러시아공사관'
        	    },
        	    {
        		address:'서울특별시 중구 정동 34-3',
        		text:'서울 정동교회'
        	    },
        	    {
        		address:'서울특별시 중구 명동2가 1-1',
        		text:'서울 명동성당'
        	    },
        	    {
        		address:'서울특별시 중구 남대문로3가 110',
        		text:'서울 한국은행 본관'
        	    },
        	    {
        		address:'서울특별시 중구 봉래동2가 122-28',
        		text:'구 서울역사'
        	    }
        ];

        var positions2 = [
                {
                address:'서울특별시 중구 장충동2가 197',
                text: '장충단비'
                },
        	    {
        		address:'서울특별시 중구 방산동 4-96',
        		text:'성제묘'
        	    },
        	    {
        		address:'서울특별시 중구 장충동2가 197-1',
        		text:'수표교'
        	    },
        	    {
        		address:'서울특별시 중구 정동 10-1',
        		text:'미국공사관'
        	    },
        	    {
        		address:'서울특별시 중구 만리동2가 6-1',
        		text:'손기정월계관기념수'
        	    },
        	    {
        		address:'서울특별시 중구 예장동 8-1',
        		text:'목멱산봉수대터'
        	    },
        	    {
        		address:'서울특별시 중구 정동 34-5',
        		text:'배재학당동관'
        	    },
        	    {
        		address:'서울특별시 중구 남대문로1가 19',
        		text:'광통관'
        	    },
        	    {
        		address:'서울특별시 중구 정동 1-23',
        		text:'구세군중앙회관'
        	    },
        	    {
        		address:'서울특별시 중구 예장동 산5-6',
        		text:'와룡묘'
        	    },
                {
                address:'서울특별시 중구 장충동2가 186-140',
        		text:'관성묘'
        	    },
                {
                address:'서울특별시 중구 필동2가 84-1',
        		text:'삼청동오장위김춘영가옥'
        	    },
                {        
                address:'서울특별시 중구 만리동2가 207',
        		text:'만리동정영국가'
        	    },
                {        
                address:'서울특별시 중구 소공동 97-3',
        		text:'원구단 정문'
        	    }
];

		$(function(){
		    $('#btn1').click(function(){
		  
		    var mapContainer = document.getElementById('map'); // 지도를 표시할 div 
		    const listDiv1 = document.getElementById('list1');
		    const listDiv2 = document.getElementById('list2');
			
            if(listDiv1.style.display === 'none')  {
                listDiv1.style.display = 'block';
                listDiv2.style.display = 'none';
              }else {
                //listDiv1.style.display = 'none';
                //listDiv2.style.display = 'block';
              }
		    
		    mapOption = { 
		        center: new kakao.maps.LatLng(37.564562447100876,126.97728333979637), // 지도의 중심좌표
		        level: 5 // 지도의 확대 레벨
		    };   
		
		    var map = new kakao.maps.Map(mapContainer, mapOption);
		    
		    for(let i = 0; i < positions1.length; i++){
		    // 주소-좌표 변환 객체를 생성합니다
		    var geocoder = new kakao.maps.services.Geocoder();
		    // 주소로 좌표를 검색합니다
		    geocoder.addressSearch(positions1[i].address, function(result, status) {
		
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
				content: '<div style="width:160px;text-align:center;padding:3px 0;">'+positions1[i].text+'</div>'
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
});
         $(function(){
            $('#btn2').click(function(){
          
            var mapContainer = document.getElementById('map'); // 지도를 표시할 div 
			const listDiv1 = document.getElementById('list1');
			const listDiv2 = document.getElementById('list2');
			
            if(listDiv2.style.display === 'none')  {
                listDiv2.style.display = 'block';
                listDiv1.style.display = 'none';
              }else {
                //listDiv2.style.display = 'none';
                //listDiv1.style.display = 'block';
              }
            
            mapOption = { 
                center: new kakao.maps.LatLng(37.56068957662345,126.98650879053027), // 지도의 중심좌표
                level: 6 // 지도의 확대 레벨
            };   

            var map = new kakao.maps.Map(mapContainer, mapOption);
            
            for(let i = 0; i < positions2.length; i++){
            // 주소-좌표 변환 객체를 생성합니다
            var geocoder = new kakao.maps.services.Geocoder();
            // 주소로 좌표를 검색합니다
            geocoder.addressSearch(positions1[i].address, function(result, status) {

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
				content: '<div style="width:150px;text-align:center;padding:3px 0;">'+positions2[i].text+'</div>'
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
                $('.btn').hide();
        });
        */
    </script>
    <style>
	 #btn1,#btn2{
	 border-radius: 24px;
	 border: 2px solid rgba(255, 182, 72, 0.986);
	 padding: 10px; 
	 margin: 10px;
	 background-color: rgba(255, 182, 72, 0.986);
	 padding: 10px;
	 
	 }
	 #btn1:hover,#btn2:hover{
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