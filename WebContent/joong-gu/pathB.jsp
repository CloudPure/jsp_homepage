<%@ page pageEncoding="utf-8"%>
<%@ include file="../inc/header2.jsp"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>중구 문화재 courseB</title>
    
</head>
<body>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=16fa6962d25a035624e2ea5cc720f790&libraries=services"></script>
	<button id="btn" style="margin: 10px 10px 10px 10px;border: 1px solid black;background-color: lightgray;padding: 10px;">코스B</button>
	<div id="map" style = "width:60%;height:548px;"></div>

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
		$('#btn').click(function(){
	
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
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
	
	</script>
</body>
</html>

<%@ include file="../inc/footer2.jsp"%>