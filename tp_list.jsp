<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="dto.MemberDto"%>
<%@page import="dto.TpListDto"%>
<%@page import="dao.TpListDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="keywords" content="" />
	<meta name="author" content="" />
	<meta name="robots" content="" />
	<meta name="description" content="LeMars : Blog HTML Template" />
	<meta property="og:title" content="LeMars : Blog HTML Template" />
	<meta property="og:description" content="LeMars : Blog HTML Template" />
	<meta property="og:image" content="http://lemars.dexignzone.com/xhtml/social-image.png" />
	<meta name="format-detection" content="telephone=no">
	

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.css" />
<link rel="stylesheet" href="./cards-gallery/cards-gallery.css">

	
<!-- 위에는 부트스트랩 -->
	
	<!-- 상단 작은 아이콘 -->
	<link rel="icon" href="images/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
	
	<!-- 페이지 타이틀 -->
	<title>Tripia</title>
	
	<!-- 모바일 사이즈 -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- 스타일 시트 -->
	<link rel="stylesheet" type="text/css" href="css/plugins.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/templete.css">
	<link class="skin" rel="stylesheet" type="text/css" href="css/skin/skin-1.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<style type="text/css">
	
@import url(https://fonts.googleapis.com/css?family=Roboto:100,700;);
.snip1585 {
  background-color: rgb(41, 46, 57);
  color: #fff;
  display: inline-block;
  font-family: 'Roboto', sans-serif;
  font-size: 24px;
  margin: 10px;
  max-width: 315px;
  min-width: 230px;
  overflow: hidden;
  position: relative;
  text-align: center;
  width: 100%;
}

.snip1585 * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.45s ease;
  transition: all 0.45s ease;
}

.snip1585:before,
.snip1585:after {
  background-color: rgba(46, 52, 64,  0.5);
  border-top: 50px solid rgba(46, 52, 64, 0.5);
  border-bottom: 50px solid rgba(46, 52, 64, 0.5);
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  content: '';
  -webkit-transition: all 0.3s ease;
  transition: all 0.3s ease;
  z-index: 1;
  opacity: 0;
}

.snip1585:before {
  -webkit-transform: scaleY(2);
  transform: scaleY(2);
}

.snip1585:after {
  -webkit-transform: scaleY(2);
  transform: scaleY(2);
}

.snip1585 img {
  vertical-align: top;
  max-width: 100%;
  backface-visibility: hidden;
}

.snip1585 figcaption {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  align-items: center;
  z-index: 1;
  display: flex;
  flex-direction: column;
  justify-content: center;
  line-height: 1.1em;
  opacity: 0;
  z-index: 2;
  -webkit-transition-delay: 0s;
  transition-delay: 0s;
}

.snip1585 h3 {
  color:white;
  font-size: 1em;
  font-weight: 400;
  letter-spacing: 1px;
  margin: 0;
  text-transform: uppercase;
}

.snip1585 h3 span {
  display: block;
  font-weight: 700;
}

.snip1585 a {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  z-index: 3;
}

.snip1585:hover > img,
.snip1585.hover > img {
  opacity: 0.7;
}

.snip1585:hover:before,
.snip1585.hover:before,
.snip1585:hover:after,
.snip1585.hover:after {
  -webkit-transform: scale(1);
  transform: scale(1);
  opacity: 1;
}

.snip1585:hover figcaption,
.snip1585.hover figcaption {
  opacity: 1;
  -webkit-transition-delay: 0.1s;
  transition-delay: 0.1s;
  color: #fff;
}
$('.selectpicker').selectpicker({

});

	/* 페이드 타이머 */
	#test {
    animation: fadein 1.5s;
    -moz-animation: fadein 2s; /* Firefox */
    -webkit-animation: fadein 1.5s; /* Safari and Chrome */
    -o-animation: fadein 2s; /* Opera */
    }
@keyframes fadein {
    from {
        opacity:0;
    }
    to {
        opacity:1;
    }
}
@-moz-keyframes fadein { /* Firefox */
    from {
        opacity:0;
    }
    to {
        opacity:1;
    }
}
@-webkit-keyframes fadein { /* Safari and Chrome */
    from {
        opacity:0;
    }
    to {
        opacity:1;
    }
}
@-o-keyframes fadein { /* Opera */
    from {
        opacity:0;
    }
    to {
        opacity: 1;
    }
}
	</style>

<%	


//String tlp = (String)request.getAttribute("tplistpage");
//System.out.println("tlp = " + tlp);
int tplistpage = Integer.parseInt((String)request.getAttribute("tplistpage"));
System.out.println("tplistpage:" + tplistpage);


//String pnum = (String)request.getAttribute("pageNumber");
//System.out.println("PNUM: " + pnum);
int pageNumber = Integer.parseInt((String)request.getAttribute("pageNumber"));
System.out.println("pageNumber:" + pageNumber);

int len = Integer.parseInt((String)request.getAttribute("len"));

%>




<%
//String choice = request.getParameter("choice").trim();
String choice = (String)request.getAttribute("choice");
//String search = request.getParameter("search").trim();
String search = (String)request.getAttribute("search");

if(choice == null){
	choice = "";
}
if(search == null){
	search = "";
}
%>
</head>
<body id="bg">
<div class="page-wraper">
<div id="loading-area"></div>
	<!-- header -->
    <header class="site-header mo-left header style-1">
		<!-- main header -->
        <div class="sticky-header main-bar-wraper navbar-expand-lg">
        	<!-- 상단을 담는 큰 박스-->
            <div class="main-bar clearfix" style="padding-top: 15px;padding-bottom: 15px;">
            	<!-- 상단바 전체 -->
                <div class="container" style="margin-left : 240px">
					<div class="header-content-bx no-bdr" style="width: 1390px; padding: 0px">
						<!-- 웹사이트 로고 -->
						<div class="logo-header"  style="margin-right: 50px">
							<a href="index.jsp"><img src="images/logo.png" alt=""/></a>
						</div>
						<!-- nav toggle button 버튼 -->
						<button class="navbar-toggler collapsed navicon justify-content-end" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
							<span></span>
							<span></span>
							<span></span>
						</button>
						<!-- main nav 메인 상단바-->
						<div class="header-nav navbar-collapse collapse justify-content-center" id="navbarNavDropdown" style=" margine-right : 50px " >
							<div class="logo-header">
								<a href="index.jsp"><img src="" alt="images/logo-white.png"/></a>
							</div>
							<ul class="nav navbar-nav">	
								<!-- 추천 여행지 -->
								<li>
									<a href="TpList?param=Tplistr">Recommended <i class="fa fa-chevron-down"></i></a>
								</li>
								<!-- 자유게시판  -->
								<li class="has-mega-menu post-slider life-style">
									<a href="bbs?param=bbslist">Forum<i class="fa fa-chevron-down"></i></a>
									</li>
								<!-- 여행지 목록  -->	
								<li>
									<a href="TpList?param=Tplist">Destination<i class="fa fa-chevron-down"></i></a>
									<ul class="sub-menu">
										<li><a href="TpList?param=Tplist1">서울</a></li>
										<li><a href="TpList?param=Tplist2">제주</a></li>
										<li><a href="TpList?param=Tplist3">인천</a></li>
										<li><a href="TpList?param=Tplist4">부산</a></li>
										<li><a href="TpList?param=Tplist5">강원도</a></li>
									</ul>
								
								</li>
								<!-- 트리피아는? -->
								<li>
									<a href="about-us.jsp">Tripia?</a>
									<!-- 공지사항 -->
									<ul class="sub-menu">
										<li><a href="notice?param=list">Notice</a></li>
										
									</ul>
								</li>
								<li>
									<a href="match?param=Matchlist">Find Mate</a> <!-- 매칭 -->
								</li>

								<!-- 로그인 -->
							
								<li>
									
										
									<c:choose>
									<c:when test="${login.id == null}">  
									
									<a href="login_resist_form.jsp">Login</a>
									</c:when>
									
									<c:when test="${login.id != null}">
									${login.id}님 반갑습니다.
									<a href="logout.jsp">Logout</a>
									<a href="member?param=mapageAf&userID=${login.id}">My page</a>
									<a href="qna?param=qnalist">Q&A</a>									
									</c:when>	
									</c:choose>
									
								</li>
							</ul>

					
						
						

				</div>
            </div>
        </div>
	</div>
</div>
		<!-- 전체 공통 header 끝 -->

        <!-- main header END -->
    </header>
    <!-- header END -->
    <!-- Content -->
    <div class="page-content bg-white">
  		<!-- Slider Banner -->
		<div class="content-block">
            <!-- About Us -->
            <div class="section-full content-inner bg-white " style="padding: 10px">
                <div class="container">
                
						
					<div class="row">
					
					
				<!-- 카드 시작 -->
						<div class="col-xl-9 col-lg-8 col-md-7 col-sm-12 col-12">
							<div class="section-head text-center" align="center">
								<div class="title-sm">With Tripia</div>
								<h2 class="title-head">All Destination List</h2>
								
								
								<div class="w3-container">
								<a href="TpList?param=Tpwrite" style="text-align: center;" class="w3-center w3-animate-fading">
								
								<c:if test="${login.auth == 1 }" >
								
								<h4>Write a new Card</h4>
								
								</c:if>
								</a>
								</div>
								
							</div>

							
							
							<div class="blog-post blog-single blog-post-style-2 sidebar">
							
								<div class="dlab-post-info" style="">
									<div class="dlab-post-text text">
									
									
									
										<div class="alignwide relative">
											<figure class="aligncenter" style="overflow: auto;">
												<main class="main container">
													        <figure class="snip1585"><img src="./images/jinhae.jpg" alt="sample70" />
															  <figcaption >
															    <h3>'W'<span>we</span></h3>
															  </figcaption>
															  <a href="#"></a>
															</figure>
															<figure class="snip1585 "><img src="./images/homigot.jpg" alt="sample106" />
															  <figcaption>
															    <h3>'I'<span>interest</span></h3>
															  </figcaption>
															  <a href="#"></a>
															</figure>
															<figure class="snip1585"><img src="./images/gbg.jpg" alt="sample109" />
															  <figcaption>
															    <h3>'T'<span>trip</span></h3>
															  </figcaption>
															  <a href="#"></a>
															</figure>
															<figure class="snip1585"><img src="./images/bulguk.jpg" alt="sample119" />
															  <figcaption>
															    <h3>'H'<span>holiday</span></h3>
															  </figcaption>
															  <a href="#"></a>
															</figure>
												</main>	
											</figure>
										</div>
										
										
									
										<script type="text/javascript">
										
										/* Demo purposes only */
										var snippet = [].slice.call(document.querySelectorAll('.hover'));
										if (snippet.length) {
										  snippet.forEach(function (snippet) {
										    snippet.addEventListener('mouseout', function (event) {
										      if (event.target.parentNode.tagName === 'figure') {
										        event.target.parentNode.classList.remove('hover')
										      } else {
										        event.target.parentNode.classList.remove('hover')
										      }
										    });
										  });
										}
										
										</script>
	
									
								</div>
							</div>
			
							
					<hr>
												<script type="text/javascript">
													function searchBbs() {
														let choice = document.getElementById("choice").value;
														let search = document.getElementById("search").value;
													//	alert(choice);
													//	alert(search);
														
														location.href = "TpList?param=Tplist&choice=" + choice + "&search=" + search;
													}
													function goPage( pageNumber ) {
														let choice = document.getElementById("choice").value;
														let search = document.getElementById("search").value;
														
													//	alert(choice);
													//	alert(search);
														
														location.href = "TpList?param=Tplist&choice=" + choice + "&search=" + search + "&pageNumber=" + pageNumber;	
													}
													</script>
												
							<!-- 메인 게시글 요이땅 -->

<%
List<TpListDto> list = (List<TpListDto>)request.getAttribute("list");

MemberDto mem = (MemberDto)session.getAttribute("login");
if(mem == null){
	response.sendRedirect("login_resist_form.jsp");
	%>
	<script type="text/javascript">
	location.href = "";
	</script>
	<%
}
%>




							<div class="" style="margin-bottom: 0px; margin-top: 0px">
								<div class="aufx blog-user " style="border-radius: 15px; padding: 0px; margin-top: 15px">
								<section class="gallery-block cards-gallery" style="padding-top: 0px";>
								    <div class="container">
								        <div class="heading">
								          <!-- <h2>Cards Gallery</h2> -->
								        </div>
									
										<div class="row">
										<!-- 	<h6>What about this</h6> -->
										
										
										
										
											<%//작성된 글 확인
											if(list == null || list.size() == 0){
												%>
												
												<div class="col-md-6 col-lg-4" style="width: 350px; height: 300px;">
													<div class="card border-0 transform-on-hover" style="height: 320px;">
														<a class="lightbox" href="./images/nothing.png">
								                			<img style="width: 250px; height: 200px;" src="./images/nothing.png" alt="Card Image" class="card-img-top">
								                		</a>
								                		<div class="card-body">
									                        <h6><a href="#">Nothing here :(</a></h6>
									                    </div>
													</div>
												</div>
													
												
												<%
												} else {
												
												for(int i = 0; i < list.size(); i++){
													TpListDto bbs = list.get(i);
													%>
													
													<%
													 if(bbs.getDel() == 0){

													%>
													<div class="col-md-6 col-lg-4" style="width: 350px; height: 350px; margin-bottom: 50px" >
														<div class="card border-0 transform-on-hover" style="height: 320px;">
															<a class="lightbox" href="./upload/<%=bbs.getNewFilename()%>">
									                			<img style="width: 250px; height: 200px;" src="./upload/<%=bbs.getNewFilename()%>" alt="Card Image" class="card-img-top">
									                		</a>
									                		<div class="card-body">
										                        <h6>
											                        <a href="TpList?param=tp_list_detail&seq=<%=bbs.getSeq() %>">
																		#<%=bbs.getRnum() %> / <%=bbs.getPlace() %>
											                        </a>
										                       </h6>
                                                      
                                                      <%
                                                      if(bbs.getTitle().length() > 15){
                                                      %>
                                                      
                                                      <p class="text-muted card-text"><%=bbs.getTitle().substring(0,13) %>...</p>
                                                      <%
                                                      } else {
                                                      %>
                                                      <p class="text-muted card-text"><%=bbs.getTitle() %></p>
                                                      <%
                                                      }
                                                      %>
                                                      <p style="font-size: 13px; vertical-align: bottom;"><%=bbs.getConcept() %></p>
                                                      
                                                      <input type="hidden" id="concept" value="<%=bbs.getConcept() %>">
                                                  </div>
														</div>
													</div>
													<%
													} /* else { */
														%> 
														
													<%
														
													/* } */
												}
											}
											
														%>
	
								    	</div>
									</div>
								</section>
								<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.js"></script>
								<script>
								    baguetteBox.run('.cards-gallery', { animation: 'slideIn'});
								</script>
								
							</div>
						

										<br><br>
												<div align="center">

													<!-- 페이징  [1] 2 [3]-->
													<%
													for(int j = 0 ; j < tplistpage; j++){
														if(pageNumber == j){	// 현재 페이지
															%>
															<span style="font-size: 15pt; color: #D2691E; font-weight: bold;">
																<%=j+1 %>
															</span>
															<%
														} else {
															%>
															<a href="#none" title="<%=j + 1%>페이지" onclick="goPage(<%=j %>)"
																style="font-size: 15pt; color: #000; text-decoration: none;" >
																[<%=j + 1 %>]
															</a>	
															<%
														}
														
													}
													%>
												</div>
												<br><br>
							</div>					
						</div>										
					</div>
					
															
					
				
				<!-- 카카오지도 스크립트 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=87360543de15c8447313d97212c373f9&libraries=services,clusterer,drawing"></script>
				<!-- 카카오지도 스크립트 끝 -->
					
					<div class="col-xl-3 col-lg-4 col-md-5 col-sm-12 col-12">	
							<div class="side-bar p-l30 sticky-top">
							<h6 class="widget-title"><span>search</span></h6>
										 <div class="form-group">
						                    <label for="exampleSelect1"></label>
						                    <select id="choice" class="form-control" id="exampleSelect1">
						                      <option value="title" >제목</option>
						                      <option value="content">내용</option>
						                      <option value="writer" >작성자</option>
						                     
						                    </select>
                  							</div>
						
										
							
										<form class="form-inline my-2 my-lg-0">
						                    <input style="width:110px" class="form-control mr-sm-2" id="search" type="text" placeholder="Search"
						                    value="${search }">
						                    <button type="button" class="btn btn-secondary my-2 my-sm-0"  onclick="searchBbs()">Search</button>
						                  </form>
											<br><br>
											
								<div class="widget widget-social">
									<h6 class="widget-title"><span>Maps</span></h6>
									
									<!-- 카카오지도 배치 시작 -->
										<div id="map" style="width:230px;height:480px;"></div>
									<!-- 카카오지도 배치 끝 -->
								</div>
								<div class="widget widget_tag_cloud">
									<h6 class="widget-title"><span>Developers</span></h6>
									<div class="tagcloud text-center"> 
										<a href="#">Woojh</a>
										<a href="https://www.instagram.com/jjong_ta/">Wonjh</a>
										<a href="https://aesupbin.tistory.com/">Leesb</a>
										<a href="#">Kimyn</a>
										<a href="https://www.instagram.com/2j_woo/">Leejw</a>
									</div>
								</div>
							</div>
							
							<script>
								var cnt = document.getElementById('map');
								var opt = {
									center: new kakao.maps.LatLng(37.552331, 126.937783),
									level: 3
									
								};
								var map = new kakao.maps.Map(cnt, opt);
								var control = new kakao.maps.ZoomControl();
								map.addControl(control, kakao.maps.ControlPosition.TOPRIGHT); 
								var markerPosition  = new kakao.maps.LatLng(37.552331, 126.937783); 
								var marker = new kakao.maps.Marker({
						            position: markerPosition
						        });
								marker.setMap(map);
							</script>
							
							
						</div>
				</div>
			</div>
			</div>
			</div>
		
								<div class="clear m-b30" id="comment-list">
									<div class="comments-area" id="comments">
										
										<div>
											<!-- Form -->
											
											<!-- Form END -->
										</div>
									</div>
								</div>
							</div>
						</div>
					
			
               
			<!-- About Us End -->
			
       
		<!-- contact area END -->

    <!-- Content END-->
	<!-- Footer -->
    <footer class="site-footer">
      <div class="footer-top" style="padding-bottom:0px; padding-top:50px">
         <div class="container" style="height:350px;">
            <div class="row">
               <div class="col-xl-3 col-lg-2 col-md-6 d-md-none d-lg-block">
                  <div class="widget">
                     <img src="images/logo-white.png" style="width: 144px; height: 75px; alt="" />
                  </div>
               </div>
               <div class="col-xl-3 col-lg-4 col-md-6">
                  <h6 class="m-b30 footer-title"><span>🤝 Partnership</span></h6>
                  <div class="widget recent-posts-entry">
                     <div class="widget-post-bx">
                        <div class="widget-post clearfix">
                           <div class="dlab-post-media"> <img src="images/blog/recent-blog/pic1.png" alt=""> </div>
                           <div class="dlab-post-info">
                              <div class="dlab-post-header">
                                 <h6 class="post-title"><a href="https://www.airbnb.co.kr/">Airbnb</a></h6>
                              </div>
                              <div class="dlab-post-meta">
                                 <ul>
                                    <li class="post-date">Convenient shared housing.</li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="widget-post-bx">
                        <div class="widget-post clearfix">
                           <div class="dlab-post-media"> <img src="images/blog/recent-blog/pic2.jpg" alt=""> </div>
                           <div class="dlab-post-info">
                              <div class="dlab-post-header">
                                 <h6 class="post-title"><a href="https://www.tripadvisor.co.kr/">Tripadvisor</a></h6>
                              </div>
                              <div class="dlab-post-meta">
                                 <ul>
                                    <li class="post-date">Friendly travel assistant.</li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="widget-post-bx">
                        <div class="widget-post clearfix">
                           <div class="dlab-post-media"> <img src="images/blog/recent-blog/pic3.jpg" alt=""> </div>
                           <div class="dlab-post-info">
                              <div class="dlab-post-header">
                                 <h6 class="post-title"><a href="pic3.jpg">Hotels Combined</a></h6>
                              </div>
                              <div class="dlab-post-meta">
                                 <ul>
                                    <li class="post-date">Worldwide hotel price comparison.</li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-xl-3 col-lg-3 col-md-6">
                  <h6 class="m-b30 footer-title"><span>TRIPIA VIDEO🎞️</span></h6>
                  <a class="video widget relative popup-youtube overlay-black-middle" href="images/footer-video.mp4">
                     <img src="images/footer-video.gif" alt=""/>
                     <span class="play-video"><i class="la la-play"></i></span>
                  </a>
               </div>
               <div class="col-xl-3 col-lg-3 col-md-12">
                  <h6 class="m-b30 footer-title"><span>Subscribe</span></h6>
                  <ul class="d-flex widget-social-ic">
                     <li><a href="https://www.facebook.com/profile.php?id=100065663813068" class="site-button-link"><i class="fa fa-facebook"></i></a></li>
                     <li><a href="https://www.instagram.com/travel_with_tripia/" class="site-button-link"><i class="fa fa-instagram"></i></a></li>
    					<br>
    				
                  </ul>
                  <br>
                  Service number : 02-483-1983 / 010-5473-1843 <br><br>
                  Company : 23, Baekbeom-ro, Mapo-gu, Seoul, Republic of Korea, Plaza 3F <br><br>
             	  CEO : Su Bin Lee 
               </div>
            </div>
         </div>
      </div>
      <div class="footer-bottom">
         <div class="container">
            <div class="row">
               <div class="col-12 text-center">
                  <span>Copyright © 2020 DexignZone.</span>
               </div>
            </div>
         </div>
      </div>
   </footer>
    <!-- Footer END-->
    <button class="scroltop fa fa-chevron-up" ></button>
</div>
<!-- JAVASCRIPT FILES ========================================= -->
<script src="js/jquery.min.js"></script><!-- JQUERY.MIN JS -->
<script src="plugins/bootstrap/js/popper.min.js"></script><!-- BOOTSTRAP.MIN JS -->
<script src="plugins/bootstrap/js/bootstrap.min.js"></script><!-- BOOTSTRAP.MIN JS -->
<script src="plugins/bootstrap-select/bootstrap-select.min.js"></script><!-- FORM JS -->
<script src="plugins/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script><!-- FORM JS -->
<script src="plugins/magnific-popup/magnific-popup.js"></script><!-- MAGNIFIC POPUP JS -->
<script src="plugins/counter/waypoints-min.js"></script><!-- WAYPOINTS JS -->
<script src="plugins/counter/counterup.min.js"></script><!-- COUNTERUP JS -->
<script src="plugins/imagesloaded/imagesloaded.js"></script><!-- IMAGESLOADED -->
<script src="plugins/masonry/masonry-3.1.4.js"></script><!-- MASONRY -->
<script src="plugins/masonry/masonry.filter.js"></script><!-- MASONRY -->
<script src="plugins/owl-carousel/owl.carousel.js"></script><!-- OWL SLIDER -->
<script src="js/custom.js"></script><!-- CUSTOM FUCTIONS  -->
<script src="js/dz.carousel.js"></script><!-- SORTCODE FUCTIONS -->
<script src="js/dz.ajax.js"></script><!-- CONTACT JS  -->



										
</body>
</html>
