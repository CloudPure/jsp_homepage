<%@ page pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

    <title>중구의 문화재</title>
    <style>
		
</style>
  	</head>  
  	<body>
     <!-- navbar start -->
    <nav class="navbar navbar-expand-lg navbar-dark sticky-top" style="background-color : #7952b3">

     <button class="navbar-toggler" type="button" data-toggle="collapse" 
     data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" 
     aria-expanded="false" aria-label="Toggle navigation">
       <span class="navbar-toggler-icon"></span>
     </button>
   
     <div class="collapse navbar-collapse text-align: center" id="navbarSupportedContent">
       <ul class="navbar-nav mx-auto">
         <li class="nav-item active">
           <a class="nav-link" href="datatable.jsp">문화재 종류(ALL)<span class="sr-only">(current)</span></a>
         </li>
         <li class="nav-item">
           
         <li class="nav-item dropdown active">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
             위치 기반 추천
           </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          	<a class="dropdown-item" href="r_pathA.jsp">코스A</a>
          	<a class="dropdown-item" href="pathB.jsp">코스B</a>
          	<a class="dropdown-item" href="pathC.jsp">코스C</a>
          	<a class="dropdown-item" href="pathD.jsp">코스D</a>
          	<a class="dropdown-item" href="path.jsp">보자보자모두보자</a>
          	<!--
          	<div class="dropdown-divider"></div>
          	 <a class="dropdown-item" href="#">Something else here</a> 
          	</div>
          	-->
         </li>
         
         <li class="nav-item dropdown active">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
             구분 기반 추천
           </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          	<a class="dropdown-item" href="#">국가 지정 문화재</a>
          	<a class="dropdown-item" href="#">시 지정 문화재</a>
          	<a class="dropdown-item" href="#">등록 문화재</a>
          	<!-- 
          	<div class="dropdown-divider"></div>
          	<a class="dropdown-item" href="#">Something else here</a>
          	</div> 
          	-->
         </li>
         
         
         <li class="nav-item">
           <a class="nav-link" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
         </li>
       </ul>
       <!--  
       <form class="form-inline my-2 my-lg-0">
         <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
         <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
       </form>
       -->
     </div>
   </nav>
     <!-- navbar end -->