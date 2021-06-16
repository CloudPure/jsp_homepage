<%@ page pageEncoding="utf-8"%>
<%@ include file="../inc/header2.jsp"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>구분별 버튼클릭시 맵 생성하기</title>
    <script src ="../js/jquery-3.6.0.js"></script>
    
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=16fa6962d25a035624e2ea5cc720f790&libraries=services"></script>
    <script>

		var positions3 = [
		        {
		        address:'서울특별시 중구 남대문로2가 5',
		        text: '한국전력공사 사옥'
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
				address:'서울특별시 중구 을지로1가 63',
				text:'구 미국문화원'
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
            $('#btn3').click(function(){
          
            var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
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
                content: '<div style="width:140px;text-align:center;padding:3px 0;">'+positions3[i].text+'</div>'
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

         }); //end of #btn3 function

         }); //end of function


         /*
         $(function(){
            $("#re").click(function(){
                $('.btn').hide();
        });
        */

        
    </script>

</head>
<style>
    .btn{
        margin: 10px 10px 10px 10px;
        border: 1px solid black;
        background-color: lightgray;
        padding: 10px;
    }
    button:active{
            background-color: orangered;
        }

</style>
<body>
    <button class="btn" id="btn3">등록문화재</button>
    <!-- <button id="re" type="reset">reset</button> -->

    <div id="map" style="width:60%;height:548px;"></div>
	


</body>
</html>

<%@ include file="../inc/footer2.jsp"%>