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
	    <style>
      .dot {overflow:hidden;float:left;width:12px;height:12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/mini_circle.png');}    
      .dotOverlay {position:relative;bottom:10px;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;float:left;font-size:12px;padding:5px;background:#fff;}
      .dotOverlay:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}    
      .number {font-weight:bold;color:#ee6152;}
      .dotOverlay:after {content:'';position:absolute;margin-left:-6px;left:50%;bottom:-8px;width:11px;height:8px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white_small.png')}
      .distanceInfo {position:relative;top:5px;left:5px;list-style:none;margin:0;}
      .distanceInfo .label {display:inline-block;width:50px;}
      .distanceInfo:after {content:none;}
   </style>
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
                        <h2>CourseB</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__links">
                        <a href="./index.jsp">Home</a>
                        <a href="./course.jsp">All</a>
                        <a href="./courseA.jsp">courseA</a>
                        <a href="./courseB.jsp" style="color: red;">courseB</a>
                        <a href="./courseC.jsp">courseC</a>
                        <a href="./courseD.jsp">courseD</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- courseB Section Begin -->
    <script src ="../js/jquery-3.6.0.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=16fa6962d25a035624e2ea5cc720f790&libraries=services"></script>
	<button id="btn1">코스B</button>
	<button id="btn2">소요시간 확인하기</button>
	<div class = "row">
		<div class = "col-md-7">
			<div id="map" style = "width:100%;height:548px; margin-left:15px"></div>
		</div>
		<!-- 리스트 추가 -->
		<div id = "list" class = "col-md-5" style = "display:none">
			<div class="list-group" style = "max-width:100%;  margin-left:15px; margin-right:15px; max-height:548px; overflow:scroll; -webkit-overflow-scrolling:touch">
				<a href="#"
					class="list-group-item list-group-item-action flex-column align-items-start">
					<div class="d-flex w-100 justify-content-between">
						<h5 class="mb-1">약현성당</h5>	
					</div>
					<p class="mb-1">서울특별시 중구 중림동 149-2</p> 
					<small style = "white-space:pre">구분: 국가지정문화재		건축연도: 1892</small>
				</a>
				
				<a href="#"
					class="list-group-item list-group-item-action flex-column align-items-start">
					<div class="d-flex w-100 justify-content-between">
						<h5 class="mb-1">손기정월계관기념수</h5>	
					</div>
					<p class="mb-1">서울특별시 중구 만리동2가 6-1</p> 
					<small style = "white-space:pre">구분: 시지정문화재		건축연도: 1936</small>
				</a>
				
				<a href="#"
					class="list-group-item list-group-item-action flex-column align-items-start">
					<div class="d-flex w-100 justify-content-between">
						<h5 class="mb-1">만리동정영국가</h5>	
					</div>
					<p class="mb-1">서울특별시 중구 만리동2가 207</p> 
					<small style = "white-space:pre">구분: 시지정문화재		건축연도: 1836</small>
				</a>
				
				<a href="#"
					class="list-group-item list-group-item-action flex-column align-items-start">
					<div class="d-flex w-100 justify-content-between">
						<h5 class="mb-1">서울역사(구)</h5>	
					</div>
					<p class="mb-1">서울특별시 중구 봉래동2가122-28</p> 
					<small style = "white-space:pre">구분: 국가지정문화재		건축연도: 1925</small>
				</a>
				
				<a href="#"
					class="list-group-item list-group-item-action flex-column align-items-start">
					<div class="d-flex w-100 justify-content-between">
						<h5 class="mb-1">숭례문(남대문)</h5>	
					</div>
					<p class="mb-1">서울특별시 중구 남대문로4가 29</p> 
					<small style = "white-space:pre">구분: 국가지정문화재		건축연도: 1398	</small>
				</a>
				
				<a href="#"
					class="list-group-item list-group-item-action flex-column align-items-start">
					<div class="d-flex w-100 justify-content-between">
						<h5 class="mb-1">한국은행본관</h5>	
					</div>
					<p class="mb-1">서울특별시 중구 남대문로3가 110</p> 
					<small style = "white-space:pre">구분: 국가지정문화재		건축연도: 1912</small>
				</a>
				
				<a href="#"
					class="list-group-item list-group-item-action flex-column align-items-start">
					<div class="d-flex w-100 justify-content-between">
						<h5 class="mb-1">원구단 정문</h5>	
					</div>
					<p class="mb-1">서울특별시 중구 소공동 97-3</p> 
					<small style = "white-space:pre">구분: 시지정문화재		건축연도: 1897	</small>
				</a>
				
				<a href="#"
					class="list-group-item list-group-item-action flex-column align-items-start">
					<div class="d-flex w-100 justify-content-between">
						<h5 class="mb-1">환구단</h5>	
					</div>
					<p class="mb-1">서울특별시 중구 소공동 87-14</p> 
					<small style = "white-space:pre">구분: 국가지정문화재		건축연도: 1897</small>
				</a>
				
				<a href="#"
					class="list-group-item list-group-item-action flex-column align-items-start">
					<div class="d-flex w-100 justify-content-between">
						<h5 class="mb-1">미국문화원(구)</h5>	
					</div>
					<p class="mb-1">서울특별시 중구 을지로1가 63</p> 
					<small style = "white-space:pre">구분: 등록문화재			건축연도: 1938</small>
				</a>
				
			</div>
		</div>
		<!-- 리스트 완료 -->
	</div>

	<script>
		// 선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다
		var linePath = [
		    new kakao.maps.LatLng(37.559067729655915, 126.96721384550895),//서울 약현성당
			new kakao.maps.LatLng(37.55556524118467, 126.964581884203),//손기정월계관기념수
			new kakao.maps.LatLng(37.55296597490634, 126.96363809650312),//만리동정영국가
			new kakao.maps.LatLng(37.55604072716004, 126.97153820612927),//구 서울역사
			new kakao.maps.LatLng(37.559951679391155, 126.97530687989759),//서울 숭례문(남대문)
			new kakao.maps.LatLng(37.56209943722394, 126.97992693757658),//서울 한국은행 본관
			new kakao.maps.LatLng(37.56511183621674, 126.9790170976896),//원구단 정문
			new kakao.maps.LatLng(37.56501359073356, 126.97973121302836),//환구단
			new kakao.maps.LatLng(37.56632489025153, 126.98039545474315)//서울 구 미국문화원
		];
		
		var positions = [
		    {
				address:'서울특별시 중구 중림동 149-2',
				text:'서울 약현성당'
		    },
			{
				address:'서울특별시 중구 만리동2가 6-1',
				text:'손기정월계관기념수'
			},
			{
				address:'서울특별시 중구 만리동2가 207',
				text:'만리동정영국가'
			},
			{
				address:'서울특별시 중구 봉래동2가 122-28',
				text:'구 서울역사'
			},
			{
				address: '서울특별시 중구 남대문로4가 29',
		        text: '숭례문(남대문)'
		    },
			{
				address:'서울특별시 중구 남대문로3가 110',
				text:'한국은행 본관'
			},
			{
				address:'서울특별시 중구 소공동 97-3외 2',
				text:'원구단 정문'
			},
			{
				address:'서울특별시 중구 소공동 87-14',
				text:'환구단'
			},
			{
				address:'서울특별시 중구 을지로1가 63',
				text:'구 미국문화원'
			}
		];
	$(function(){
		$('#btn1').click(function(){
	
		var mapContainer = document.getElementById('map'); // 지도를 표시할 div 
		const listDiv = document.getElementById('list');
		if(listDiv.style.display === 'none')  {
            listDiv.style.display = 'block';
            //listDiv2.style.display = 'none';
          }else {
            //listDiv1.style.display = 'none';
            //listDiv2.style.display = 'block';
          }
		
		mapOption = {
       	center: new kakao.maps.LatLng(37.559951679391155, 126.97530687989759), // 지도의 중심좌표
       	level: 5 // 지도의 확대 레벨
   		};

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 		
		
		// 지도에 표시할 선을 생성합니다
		var polyline = new kakao.maps.Polyline({
		    path: linePath, // 선을 구성하는 좌표배열 입니다
		    strokeWeight: 8, // 선의 두께 입니다
		    strokeColor: '#999999', // 선의 색깔입니다
		    strokeOpacity: 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
		    strokeStyle: 'solid' // 선의 스타일입니다
		});

		// 지도에 선을 표시합니다 
		polyline.setMap(map);
    
		for(let i = 0; i < positions.length; i++){
		    // 주소-좌표 변환 객체를 생성합니다
		    var geocoder = new kakao.maps.services.Geocoder();
		    // 주소로 좌표를 검색합니다
		    geocoder.addressSearch(positions[i].address, function(result, status) {
		
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
		                content: '<div style="width:160px;text-align:center;padding:3px 0;">'+positions[i].text+'</div>'
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
		}//for loop 끝
		
	});
});
	
	$(function(){
		$('#btn2').click(function(){
	
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
    	center: new kakao.maps.LatLng(37.559951679391155, 126.97530687989759), // 지도의 중심좌표
    	level: 5 // 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);
		
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		var drawingFlag = false; // 선이 그려지고 있는 상태를 가지고 있을 변수입니다
		var moveLine; // 선이 그려지고 있을때 마우스 움직임에 따라 그려질 선 객체 입니다
		var clickLine // 마우스로 클릭한 좌표로 그려질 선 객체입니다
		var distanceOverlay; // 선의 거리정보를 표시할 커스텀오버레이 입니다
		var dots = {}; // 선이 그려지고 있을때 클릭할 때마다 클릭 지점과 거리를 표시하는 커스텀 오버레이 배열입니다.
		
		// 지도에 클릭 이벤트를 등록합니다
		// 지도를 클릭하면 선 그리기가 시작됩니다 그려진 선이 있으면 지우고 다시 그립니다
		kakao.maps.event.addListener(map, 'click', function(mouseEvent) {

		    // 마우스로 클릭한 위치입니다 
		    var clickPosition = mouseEvent.latLng;

		    // 지도 클릭이벤트가 발생했는데 선을 그리고있는 상태가 아니면
		    if (!drawingFlag) {

		        // 상태를 true로, 선이 그리고있는 상태로 변경합니다
		        drawingFlag = true;
		        
		        // 지도 위에 선이 표시되고 있다면 지도에서 제거합니다
		        deleteClickLine();
		        
		        // 지도 위에 커스텀오버레이가 표시되고 있다면 지도에서 제거합니다
		        deleteDistnce();

		        // 지도 위에 선을 그리기 위해 클릭한 지점과 해당 지점의 거리정보가 표시되고 있다면 지도에서 제거합니다
		        deleteCircleDot();
		    
		        // 클릭한 위치를 기준으로 선을 생성하고 지도위에 표시합니다
		        clickLine = new kakao.maps.Polyline({
		            map: map, // 선을 표시할 지도입니다 
		            path: [clickPosition], // 선을 구성하는 좌표 배열입니다 클릭한 위치를 넣어줍니다
		            strokeWeight: 3, // 선의 두께입니다 
		            strokeColor: '#db4040', // 선의 색깔입니다
		            strokeOpacity: 1, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
		            strokeStyle: 'solid' // 선의 스타일입니다
		        });
		        
		        // 선이 그려지고 있을 때 마우스 움직임에 따라 선이 그려질 위치를 표시할 선을 생성합니다
		        moveLine = new kakao.maps.Polyline({
		            strokeWeight: 3, // 선의 두께입니다 
		            strokeColor: '#db4040', // 선의 색깔입니다
		            strokeOpacity: 0.5, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
		            strokeStyle: 'solid' // 선의 스타일입니다    
		        });
		    
		        // 클릭한 지점에 대한 정보를 지도에 표시합니다
		        displayCircleDot(clickPosition, 0);

		            
		    } else { // 선이 그려지고 있는 상태이면

		        // 그려지고 있는 선의 좌표 배열을 얻어옵니다
		        var path = clickLine.getPath();

		        // 좌표 배열에 클릭한 위치를 추가합니다
		        path.push(clickPosition);
		        
		        // 다시 선에 좌표 배열을 설정하여 클릭 위치까지 선을 그리도록 설정합니다
		        clickLine.setPath(path);

		        var distance = Math.round(clickLine.getLength());
		        displayCircleDot(clickPosition, distance);
		    }
		});
		    
		// 지도에 마우스무브 이벤트를 등록합니다
		// 선을 그리고있는 상태에서 마우스무브 이벤트가 발생하면 그려질 선의 위치를 동적으로 보여주도록 합니다
		kakao.maps.event.addListener(map, 'mousemove', function (mouseEvent) {

		    // 지도 마우스무브 이벤트가 발생했는데 선을 그리고있는 상태이면
		    if (drawingFlag){
		        
		        // 마우스 커서의 현재 위치를 얻어옵니다 
		        var mousePosition = mouseEvent.latLng; 

		        // 마우스 클릭으로 그려진 선의 좌표 배열을 얻어옵니다
		        var path = clickLine.getPath();
		        
		        // 마우스 클릭으로 그려진 마지막 좌표와 마우스 커서 위치의 좌표로 선을 표시합니다
		        var movepath = [path[path.length-1], mousePosition];
		        moveLine.setPath(movepath);    
		        moveLine.setMap(map);
		        
		        var distance = Math.round(clickLine.getLength() + moveLine.getLength()), // 선의 총 거리를 계산합니다
		            content = '<div class="dotOverlay distanceInfo">총거리 <span class="number">' + distance + '</span>m</div>'; // 커스텀오버레이에 추가될 내용입니다
		        
		        // 거리정보를 지도에 표시합니다
		        showDistance(content, mousePosition);   
		    }             
		});                 

		// 지도에 마우스 오른쪽 클릭 이벤트를 등록합니다
		// 선을 그리고있는 상태에서 마우스 오른쪽 클릭 이벤트가 발생하면 선 그리기를 종료합니다
		kakao.maps.event.addListener(map, 'rightclick', function (mouseEvent) {

		    // 지도 오른쪽 클릭 이벤트가 발생했는데 선을 그리고있는 상태이면
		    if (drawingFlag) {
		        
		        // 마우스무브로 그려진 선은 지도에서 제거합니다
		        moveLine.setMap(null);
		        moveLine = null;  
		        
		        // 마우스 클릭으로 그린 선의 좌표 배열을 얻어옵니다
		        var path = clickLine.getPath();
		    
		        // 선을 구성하는 좌표의 개수가 2개 이상이면
		        if (path.length > 1) {

		            // 마지막 클릭 지점에 대한 거리 정보 커스텀 오버레이를 지웁니다
		            if (dots[dots.length-1].distance) {
		                dots[dots.length-1].distance.setMap(null);
		                dots[dots.length-1].distance = null;    
		            }

		            var distance = Math.round(clickLine.getLength()), // 선의 총 거리를 계산합니다
		                content = getTimeHTML(distance); // 커스텀오버레이에 추가될 내용입니다
		                
		            // 그려진 선의 거리정보를 지도에 표시합니다
		            showDistance(content, path[path.length-1]);  
		             
		        } else {

		            // 선을 구성하는 좌표의 개수가 1개 이하이면 
		            // 지도에 표시되고 있는 선과 정보들을 지도에서 제거합니다.
		            deleteClickLine();
		            deleteCircleDot(); 
		            deleteDistnce();

		        }
		        
		        // 상태를 false로, 그리지 않고 있는 상태로 변경합니다
		        drawingFlag = false;          
		    }  
		});    

		// 클릭으로 그려진 선을 지도에서 제거하는 함수입니다
		function deleteClickLine() {
		    if (clickLine) {
		        clickLine.setMap(null);    
		        clickLine = null;        
		    }
		}

		// 마우스 드래그로 그려지고 있는 선의 총거리 정보를 표시하거
		// 마우스 오른쪽 클릭으로 선 그리가 종료됐을 때 선의 정보를 표시하는 커스텀 오버레이를 생성하고 지도에 표시하는 함수입니다
		function showDistance(content, position) {
		    
		    if (distanceOverlay) { // 커스텀오버레이가 생성된 상태이면
		        
		        // 커스텀 오버레이의 위치와 표시할 내용을 설정합니다
		        distanceOverlay.setPosition(position);
		        distanceOverlay.setContent(content);
		        
		    } else { // 커스텀 오버레이가 생성되지 않은 상태이면
		        
		        // 커스텀 오버레이를 생성하고 지도에 표시합니다
		        distanceOverlay = new kakao.maps.CustomOverlay({
		            map: map, // 커스텀오버레이를 표시할 지도입니다
		            content: content,  // 커스텀오버레이에 표시할 내용입니다
		            position: position, // 커스텀오버레이를 표시할 위치입니다.
		            xAnchor: 0,
		            yAnchor: 0,
		            zIndex: 3  
		        });      
		    }
		}

		// 그려지고 있는 선의 총거리 정보와 
		// 선 그리가 종료됐을 때 선의 정보를 표시하는 커스텀 오버레이를 삭제하는 함수입니다
		function deleteDistnce () {
		    if (distanceOverlay) {
		        distanceOverlay.setMap(null);
		        distanceOverlay = null;
		    }
		}

		// 선이 그려지고 있는 상태일 때 지도를 클릭하면 호출하여 
		// 클릭 지점에 대한 정보 (동그라미와 클릭 지점까지의 총거리)를 표출하는 함수입니다
		function displayCircleDot(position, distance) {

		    // 클릭 지점을 표시할 빨간 동그라미 커스텀오버레이를 생성합니다
		    var circleOverlay = new kakao.maps.CustomOverlay({
		        content: '<span class="dot"></span>',
		        position: position,
		        zIndex: 1
		    });

		    // 지도에 표시합니다
		    circleOverlay.setMap(map);

		    if (distance > 0) {
		        // 클릭한 지점까지의 그려진 선의 총 거리를 표시할 커스텀 오버레이를 생성합니다
		        var distanceOverlay = new kakao.maps.CustomOverlay({
		            content: '<div class="dotOverlay">거리 <span class="number">' + distance + '</span>m</div>',
		            position: position,
		            yAnchor: 1,
		            zIndex: 2
		        });

		        // 지도에 표시합니다
		        distanceOverlay.setMap(map);
		    }

		    // 배열에 추가합니다
		    dots.push({circle:circleOverlay, distance: distanceOverlay});
		}

		// 클릭 지점에 대한 정보 (동그라미와 클릭 지점까지의 총거리)를 지도에서 모두 제거하는 함수입니다
		function deleteCircleDot() {
		    var i;

		    for ( i = 0; i < dots.length; i++ ){
		        if (dots[i].circle) { 
		            dots[i].circle.setMap(null);
		        }

		        if (dots[i].distance) {
		            dots[i].distance.setMap(null);
		        }
		    }

		    dots = [];
		}

		// 마우스 우클릭 하여 선 그리기가 종료됐을 때 호출하여 
		// 그려진 선의 총거리 정보와 거리에 대한 도보, 자전거 시간을 계산하여
		// HTML Content를 만들어 리턴하는 함수입니다
		function getTimeHTML(distance) {

		    // 도보의 시속은 평균 4km/h 이고 도보의 분속은 67m/min입니다
		    var walkkTime = distance / 67 | 0;
		    var walkHour = '', walkMin = '';

		    // 계산한 도보 시간이 60분 보다 크면 시간으로 표시합니다
		    if (walkkTime > 60) {
		        walkHour = '<span class="number">' + Math.floor(walkkTime / 60) + '</span>시간 '
		    }
		    walkMin = '<span class="number">' + walkkTime % 60 + '</span>분'

		    // 자전거의 평균 시속은 16km/h 이고 이것을 기준으로 자전거의 분속은 267m/min입니다
		    var bycicleTime = distance / 227 | 0;
		    var bycicleHour = '', bycicleMin = '';

		    // 계산한 자전거 시간이 60분 보다 크면 시간으로 표출합니다
		    if (bycicleTime > 60) {
		        bycicleHour = '<span class="number">' + Math.floor(bycicleTime / 60) + '</span>시간 '
		    }
		    bycicleMin = '<span class="number">' + bycicleTime % 60 + '</span>분'

		    // 거리와 도보 시간, 자전거 시간을 가지고 HTML Content를 만들어 리턴합니다
		    var content = '<ul class="dotOverlay distanceInfo">';
		    content += '    <li>';
		    content += '        <span class="label">총거리</span><span class="number">' + distance + '</span>m';
		    content += '    </li>';
		    content += '    <li>';
		    content += '        <span class="label">도보</span>' + walkHour + walkMin;
		    content += '    </li>';
		    content += '    <li>';
		    content += '        <span class="label">자전거</span>' + bycicleHour + bycicleMin;
		    content += '    </li>';
		    content += '</ul>'

		    return content;
		}

		for(let i = 0; i < positions.length; i++){
			// 주소-좌표 변환 객체를 생성합니다
			var geocoder = new kakao.maps.services.Geocoder();
			// 주소로 좌표를 검색합니다
			geocoder.addressSearch(positions[i].address, function(result, status) {

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
						content: '<div style="width:140px;text-align:center;padding:3px 0;">'+positions[i].text+'</div>'
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
    <!-- courseB Section End -->

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
   