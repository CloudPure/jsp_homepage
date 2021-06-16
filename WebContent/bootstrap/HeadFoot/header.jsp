<%@ page pageEncoding="utf-8"%>
<!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="header__top__inner">
                            <div class="header__logo">
                                <a href="./index.html"><img src="myimg/mini_logo.png" style="width: 350px; height: 80px;"></a>
                            </div>
                        
                        </div>
                    </div>
                </div>
                <div class="canvas__open"><i class="fa fa-bars"></i></div>
            </div>
        </div>
        <%
        	String path = request.getRequestURI();
        %>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li class="nav-item <%if(path!=null&&path.startsWith("index.jsp")){%>active<%} %>"><a href="index.jsp">홈</a></li>
                            <li class="<%if(path!=null&&path.startsWith("introduce.jsp")){%>active<%} %>"><a href="introduce.jsp">문화재 소개</a></li>
							<li class="<%if(path!=null&&path.startsWith("course.jsp")){%>active<%} %>"><a href="course.jsp">위치 기반 추천</a>
                                <ul class="dropdown">
                                    <li><a href="./course.jsp">전체 코스</a></li>
                                    <li><a href="./courseA.jsp">코스A</a></li>
                                    <li><a href="./courseB.jsp">코스B</a></li>
                                    <li><a href="./courseC.jsp">코스C</a></li>
                                    <li><a href="./courseD.jsp">코스D</a></li>
                                </ul>
                            </li>
                            <li class="<%if(path!=null&&path.startsWith("classify1.jsp")){%>active<%} %>"><a href="#">구분 기반 추천</a>
                                <ul class="dropdown">
                                    <li><a href="./classify1.jsp">지정 구분 코스</a></li>
                                    <li><a href="./classify2.jsp">등록 구분 코스</a></li>
                                </ul>
                            </li>
                            <li class="<%if(path!=null&&path.startsWith("datatable2.jsp")){%>active<%} %>"><a href="#">문화재 종류</a>
                                <ul class="dropdown">
                                 	<li><a href="./datatable2.jsp">구분별(이름순)</a></li>
                                    <li><a href="./datatable3.jsp">연도별</a></li>
                 
                                </ul>
                            </li>
                            <li class="<%if(path!=null&&path.startsWith("ourteam.jsp")){%>active<%} %>"><a href="ourteam.jsp">Our Team</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Section End -->