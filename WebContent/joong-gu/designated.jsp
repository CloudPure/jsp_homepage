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
        var positions1 = [
        {
        address:'서울특별시 중구 남대문로4가 29',
        text: '숭례문'
        },
	    {
		address:'서울특별시 중구 돈의문~오간수문(광희동2가 105)',
		text:'한양도성(광화문포함)'
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
		text:'구 러시아공사관'
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
		text:'한국은행 본관'
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
				text:'오위장김춘영가옥'
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
		  
		    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
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
		        content: '<div style="width:140px;text-align:center;padding:3px 0;">'+positions1[i].text+'</div>'
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
		
		 }); //end of #btn1 function
		
		 }); //end of function

         $(function(){
            $('#btn2').click(function(){
          
            var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
            mapOption = { 
                center: new kakao.maps.LatLng(37.56068957662345,126.98650879053027), // 지도의 중심좌표
                level: 6 // 지도의 확대 레벨
            };   

            var map = new kakao.maps.Map(mapContainer, mapOption);
            
            for(let i = 0; i < positions2.length; i++){
            // 주소-좌표 변환 객체를 생성합니다
            var geocoder = new kakao.maps.services.Geocoder();
            // 주소로 좌표를 검색합니다
            geocoder.addressSearch(positions2[i].address, function(result, status) {

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
                content: '<div style="width:144px;text-align:center;padding:3px 0;">'+positions2[i].text+'</div>'
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

         }); //end of #btn2 function

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
    <button class="btn" id="btn1">국가지정문화재</button>
    <button class="btn" id="btn2">시지정문화재</button>
    <!-- <button id="re" type="reset">reset</button> -->

    <div id="map" style="width:60%;height:548px;"></div>
	


</body>
</html>

<%@ include file="../inc/footer2.jsp"%>