<%@ page pageEncoding="utf-8"%>
<%@ include file="../inc/header2.jsp"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>중구 문화재 courseA</title>
	<script src ="../js/jquery-3.6.0.js"></script>
    
</head>
<body>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=16fa6962d25a035624e2ea5cc720f790&libraries=services"></script>
	<button id="btn" style="margin: 10px 10px 10px 10px;border: 1px solid black;background-color: lightgray;padding: 10px;">코스A</button>
	<div id="map" style = "width:60%;height:548px;"></div>
	  
	<script>
		// 선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다
		var linePath = [
			new kakao.maps.LatLng(37.5679916808134, 126.97135653141187),//서울 구 러시아공사관
			new kakao.maps.LatLng(37.56791933984888, 126.97389593880756),//구세군중앙회관
			new kakao.maps.LatLng(37.56745082455315, 126.97660647255451),//서울 구 국회의사당
			new kakao.maps.LatLng(37.56659176301622, 126.97823611737417),//구 서울특별시청사
			new kakao.maps.LatLng(37.567128176061686, 126.97589400449974),//경운궁 양이재
			new kakao.maps.LatLng(37.56591725312202, 126.97499180443496),//덕수궁
			new kakao.maps.LatLng(37.56429477139233, 126.97443698109024),//서울 구 대법원 청사
			new kakao.maps.LatLng(37.56363747364791, 126.9721823964344),//배제학당동관
			new kakao.maps.LatLng(37.565399857303454, 126.97253291303231),//서울 정동교회
			new kakao.maps.LatLng(37.56560147358384, 126.97154742932746),//서울 이화여자고등학교 심슨기념관
			new kakao.maps.LatLng(37.5661839495406, 126.97213714677659),//서울 구 신아일보 별관
			new kakao.maps.LatLng(37.56700352923604, 126.9727195933903),//미국공사관
			new kakao.maps.LatLng(37.5679916808134, 126.97135653141187)//서울 구 러시아 공사관
			];

			var positions = [
				{
					address:'서울특별시 중구 정동 5-1',
					text: '덕수궁'
				},
				{
					address:'서울특별시 중구 정동 15-1',
					text:'구 러시아공사관'
				},
				{
					address:'서울특별시 중구 정동 34-3',
					text:'서울 정동교회'
				},
				{
					address:'서울특별시 중구 정동 10-1',
					text:'미국공사관'
				},
				{
					address:'서울특별시 중구 정동 34-5',
					text:'배재학당동관'
				},
				{
					address:'서울특별시 중구 정동 1-23',
					text:'구세군중앙회관'
				},
				{
					address:'서울특별시 중구 정동 32-1',
					text:'이화여자고등학교 심슨기념관'
				},
				{
					address:'서울특별시 중구 태평로1가 60-1',
					text:'구 국회의사당'
				},
				{
					address:'서울특별시 중구 태평로1가 31',
					text:'구 서울특별시청사'
				},
				{
					address:'서울특별시 중구 서소문동 37',
					text:'구 대법원 청사'
				},
				{
					address:'서울특별시 중구 정동3',
					text:'경운궁 양이재'
				},
				{
					address:'서울특별시 중구 정동 1-28',
					text:'구 신아일보 별관'
				}

			];
			
		$(function(){
			$('#btn').click(function(){
		
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    		mapOption = {
        	center: new kakao.maps.LatLng(37.56594265311475, 126.97368951549684), // 지도의 중심좌표
        	level: 4 // 지도의 확대 레벨
    		};

			// 지도를 생성합니다    
			var map = new kakao.maps.Map(mapContainer, mapOption); 

			// 지도에 표시할 선을 생성합니다
			var polyline = new kakao.maps.Polyline({
				path: linePath, // 선을 구성하는 좌표배열 입니다
				strokeWeight: 8, // 선의 두께 입니다
				strokeColor: '#9b111e', // 선의 색깔입니다
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
</body>
</html>

<%@ include file="../inc/footer2.jsp"%>