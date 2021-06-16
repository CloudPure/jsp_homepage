<%@ page pageEncoding="utf-8"%>
<%@ include file="../inc/header2.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>중구 문화재 course</title>

</head>
<body>

	<div id="map" style="width: 100%; height: 615px;"></div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=16fa6962d25a035624e2ea5cc720f790
&libraries=services"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(37.5598409637781, 126.98536748234504), // 지도의 중심좌표
			level : 5
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);

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
				new kakao.maps.LatLng(37.5679916808134, 126.97135653141187) //서울 구 러시아 공사관
		]

		// 지도에 표시할 선을 생성합니다
		var polyline = new kakao.maps.Polyline({
			path : linePath, // 선을 구성하는 좌표배열 입니다
			strokeWeight : 8, // 선의 두께 입니다
			strokeColor : '#9b111e', // 선의 색깔입니다
			strokeOpacity : 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
			strokeStyle : 'solid' // 선의 스타일입니다
		});

		// 지도에 선을 표시합니다 
		polyline.setMap(map);

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
				new kakao.maps.LatLng(37.56632489025153, 126.98039545474315) //서울 구 미국문화원
		]

		// 지도에 표시할 선을 생성합니다
		var polyline = new kakao.maps.Polyline({
			path : linePath, // 선을 구성하는 좌표배열 입니다
			strokeWeight : 8, // 선의 두께 입니다
			strokeColor : '#999999', // 선의 색깔입니다
			strokeOpacity : 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
			strokeStyle : 'solid' // 선의 스타일입니다
		});

		polyline.setMap(map);

		var linePath = [
				new kakao.maps.LatLng(37.56770211209875, 126.98322594739848),//광통관
				new kakao.maps.LatLng(37.56529473626543, 126.9828429185342),//서울 남대문로 한국전력공사 사옥
				new kakao.maps.LatLng(37.56294605259029, 126.98689955289),//서울 명동성당
				new kakao.maps.LatLng(37.55848794582256, 126.99398686700145),//삼청동오장위김춘영가옥
				new kakao.maps.LatLng(37.553823086089686, 126.9903824262766),//와룡묘
				new kakao.maps.LatLng(37.55186186166696, 126.98763168423882) //목멱산봉수대터
		]

		var polyline = new kakao.maps.Polyline({
			path : linePath, // 선을 구성하는 좌표배열 입니다
			strokeWeight : 8, // 선의 두께 입니다
			strokeColor : '#ff00ff', // 선의 색깔입니다
			strokeOpacity : 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
			strokeStyle : 'solid' // 선의 스타일입니다
		});

		polyline.setMap(map);

		var linePath = [
				new kakao.maps.LatLng(37.56884563243592, 127.00180183878874),//성제묘
				new kakao.maps.LatLng(37.5609070610864, 127.00310864431675),//관성묘
				new kakao.maps.LatLng(37.55818211632532, 127.00491062100738),//수표교
				new kakao.maps.LatLng(37.55766589799398, 127.00407286299041) //장충단비
		]

		var polyline = new kakao.maps.Polyline({
			path : linePath, // 선을 구성하는 좌표배열 입니다
			strokeWeight : 8, // 선의 두께 입니다
			strokeColor : '#00aaff', // 선의 색깔입니다
			strokeOpacity : 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
			strokeStyle : 'solid' // 선의 스타일입니다
		});

		polyline.setMap(map);

		var positions1 = [ {
			address : '서울특별시 중구 정동 5-1',
			text : '덕수궁'
		}, {
			address : '서울특별시 중구 정동 15-1',
			text : '구 러시아공사관'
		}, {
			address : '서울특별시 중구 정동 34-3',
			text : '서울 정동교회'
		}, {
			address : '서울특별시 중구 정동 10-1',
			text : '미국공사관'
		}, {
			address : '서울특별시 중구 정동 34-5',
			text : '배재학당동관'
		}, {
			address : '서울특별시 중구 정동 1-23',
			text : '구세군중앙회관'
		}, {
			address : '서울특별시 중구 정동 32-1',
			text : '이화여자고등학교 심슨기념관'
		}, {
			address : '서울특별시 중구 태평로1가 60-1',
			text : '구 국회의사당'
		}, {
			address : '서울특별시 중구 태평로1가 31',
			text : '구 서울특별시청사'
		}, {
			address : '서울특별시 중구 서소문동 37',
			text : '구 대법원 청사'
		}, {
			address : '서울특별시 중구 정동3',
			text : '경운궁 양이재'
		}, {
			address : '서울특별시 중구 정동 1-28',
			text : '구 신아일보 별관'
		} ];

		var positions2 = [ {
			address : '서울특별시 중구 중림동 149-2',
			text : '서울 약현성당'
		}, {
			address : '서울특별시 중구 만리동2가 6-1',
			text : '손기정월계관기념수'
		}, {
			address : '서울특별시 중구 만리동2가 207',
			text : '만리동정영국가'
		}, {
			address : '서울특별시 중구 봉래동2가 122-28',
			text : '구 서울역사'
		}, {
			address : '서울특별시 중구 남대문로4가 29',
			text : '숭례문(남대문)'
		}, {
			address : '서울특별시 중구 남대문로3가 110',
			text : '한국은행 본관'
		}, {
			address : '서울특별시 중구 소공동 97-3외 2',
			text : '원구단 정문'
		}, {
			address : '서울특별시 중구 소공동 87-14',
			text : '환구단'
		}, {
			address : '서울특별시 중구 을지로1가 63',
			text : '구 미국문화원'
		} ];

		var positions3 = [ {
			address : '서울특별시 중구 남대문로1가 19',
			text : '광통관'
		}, {
			address : '서울특별시 중구 남대문로2가 5',
			text : '한국전력공사 사옥'
		}, {
			address : '서울특별시 중구 명동2가 1-1',
			text : '서울 명동성당'
		}, {
			address : '서울특별시 중구 필동2가 84-1',
			text : '오위장김춘영가옥'
		}, {
			address : '서울특별시 중구 예장동 산5-6',
			text : '와룡묘'
		}, {
			address : '서울특별시 중구 예장동 8-1',
			text : '목멱산봉수대터'
		} ];

		var positions4 = [ {
			address : '서울특별시 중구 방산동 4-96',
			text : '성제묘'
		}, {
			address : '서울특별시 중구 장충동2가 186-140',
			text : '관성묘'
		}, {
			address : '서울특별시 중구 장충동2가 197-1',
			text : '수표교'
		}, {
			address : '서울특별시 중구 장충동2가 197',
			text : '장충단비'
		}

		];

		for (let i = 0; i < positions1.length; i++) {
			// 주소-좌표 변환 객체를 생성합니다
			var geocoder = new kakao.maps.services.Geocoder();
			// 주소로 좌표를 검색합니다
			geocoder
					.addressSearch(
							positions1[i].address,
							function(result, status) {

								// 정상적으로 검색이 완료됐으면 
								if (status === kakao.maps.services.Status.OK) {

									var coords = new kakao.maps.LatLng(
											result[0].y, result[0].x);

									// 결과값으로 받은 위치를 마커로 표시합니다
									var marker = new kakao.maps.Marker({
										map : map,
										position : coords
									});

									//인포윈도우로 장소에 대한 설명을 표시합니다
									var infowindow = new kakao.maps.InfoWindow(
											{
												content : '<div style="width:140px;text-align:center;padding:3px 0;">'
														+ positions1[i].text
														+ '</div>'
											});
									// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
									// 이벤트 리스너로는 클로저를 만들어 등록합니다 
									// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
									kakao.maps.event.addListener(marker,
											'mouseover', makeOverListener(map,
													marker, infowindow));
									kakao.maps.event.addListener(marker,
											'mouseout',
											makeOutListener(infowindow));
								}

								// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
								function makeOverListener(map, marker,
										infowindow) {
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

		for (let i = 0; i < positions2.length; i++) {
			// 주소-좌표 변환 객체를 생성합니다
			var geocoder = new kakao.maps.services.Geocoder();
			// 주소로 좌표를 검색합니다
			geocoder
					.addressSearch(
							positions2[i].address,
							function(result, status) {

								// 정상적으로 검색이 완료됐으면 
								if (status === kakao.maps.services.Status.OK) {

									var coords = new kakao.maps.LatLng(
											result[0].y, result[0].x);

									// 결과값으로 받은 위치를 마커로 표시합니다
									var marker = new kakao.maps.Marker({
										map : map,
										position : coords
									});

									//인포윈도우로 장소에 대한 설명을 표시합니다
									var infowindow = new kakao.maps.InfoWindow(
											{
												content : '<div style="width:144px;text-align:center;padding:3px 0;">'
														+ positions2[i].text
														+ '</div>'
											});
									// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
									// 이벤트 리스너로는 클로저를 만들어 등록합니다 
									// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
									kakao.maps.event.addListener(marker,
											'mouseover', makeOverListener(map,
													marker, infowindow));
									kakao.maps.event.addListener(marker,
											'mouseout',
											makeOutListener(infowindow));
								}

								// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
								function makeOverListener(map, marker,
										infowindow) {
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

		for (let i = 0; i < positions3.length; i++) {
			// 주소-좌표 변환 객체를 생성합니다
			var geocoder = new kakao.maps.services.Geocoder();
			// 주소로 좌표를 검색합니다
			geocoder
					.addressSearch(
							positions3[i].address,
							function(result, status) {
	
								// 정상적으로 검색이 완료됐으면 
								if (status === kakao.maps.services.Status.OK) {
	
									var coords = new kakao.maps.LatLng(
											result[0].y, result[0].x);
	
									// 결과값으로 받은 위치를 마커로 표시합니다
									var marker = new kakao.maps.Marker({
										map : map,
										position : coords
									});
	
									//인포윈도우로 장소에 대한 설명을 표시합니다
									var infowindow = new kakao.maps.InfoWindow(
											{
												content : '<div style="width:140px;text-align:center;padding:3px 0;">'
														+ positions3[i].text
														+ '</div>'
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

		for (let i = 0; i < positions4.length; i++) {
			// 주소-좌표 변환 객체를 생성합니다
			var geocoder = new kakao.maps.services.Geocoder();
			// 주소로 좌표를 검색합니다
			geocoder
					.addressSearch(
							positions4[i].address,
							function(result, status) {

								// 정상적으로 검색이 완료됐으면 
								if (status === kakao.maps.services.Status.OK) {

									var coords = new kakao.maps.LatLng(
											result[0].y, result[0].x);

									// 결과값으로 받은 위치를 마커로 표시합니다
									var marker = new kakao.maps.Marker({
										map : map,
										position : coords
									});

									//인포윈도우로 장소에 대한 설명을 표시합니다
									var infowindow = new kakao.maps.InfoWindow(
											{
												content : '<div style="width:120px;text-align:center;padding:3px 0;">'
														+ positions4[i].text
														+ '</div>'
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
	</script>
</body>
</html>
<%@ include file="../inc/footer2.jsp"%>