<%@ page pageEncoding="utf-8"%>
<%@ include file="../inc/header2.jsp"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>중구 문화재 courseD</title>
    
</head>
<body>

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=16fa6962d25a035624e2ea5cc720f790&libraries=services"></script>
	<button id="btn" style="margin: 10px 10px 10px 10px;border: 1px solid black;background-color: lightgray;padding: 10px;">코스D</button>
	<div id="map" style = "width:60%;height:548px;"></div>

<script>

	// 선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다
	var linePath = [
	    new kakao.maps.LatLng(37.56884563243592, 127.00180183878874),//성제묘
		new kakao.maps.LatLng(37.5609070610864, 127.00310864431675),//관성묘
		new kakao.maps.LatLng(37.55818211632532, 127.00491062100738),//수표교
		new kakao.maps.LatLng(37.55766589799398, 127.00407286299041)//장충단비
	]

	var positions = [
	   	{
			address:'서울특별시 중구 방산동 4-96',
			text:'성제묘'
		},
	    {
			address:'서울특별시 중구 장충동2가 186-140',
			text:'관성묘'
		},
	    {
			address:'서울특별시 중구 장충동2가 197-1',
			text:'수표교'
		},
	    {
			address:'서울특별시 중구 장충동2가 197',
			text:'장충단비'
		}
	];
	
	$(function(){
		$('#btn').click(function(){
	
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
   		mapOption = {
       	center: new kakao.maps.LatLng(37.563146047823764, 127.00261956856873), // 지도의 중심좌표
       	level: 5 // 지도의 확대 레벨
   		};
		
		//지도를 생성합니다.
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		
		// 지도에 표시할 선을 생성합니다
		var polyline = new kakao.maps.Polyline({
		    path: linePath, // 선을 구성하는 좌표배열 입니다
		    strokeWeight: 8, // 선의 두께 입니다
		    strokeColor: '#00aaff', // 선의 색깔입니다
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
		                content: '<div style="width:120px;text-align:center;padding:3px 0;">'+positions[i].text+'</div>'
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
</body>
</html>

<%@ include file="../inc/footer2.jsp"%>