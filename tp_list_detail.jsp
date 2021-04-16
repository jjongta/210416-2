<%@page import="dto.MemberDto"%>
<%@page import="dto.TpListDto"%>
<%@page import="dao.TpListDao"%>
<%@page import="java.util.List"%>
<%@page import="dto.CommentDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
}

* 페이드 타이머 */
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


<%-- <%
String sseq = request.getParameter("seq").trim();
int seq = Integer.parseInt(sseq);
%>
<%
TpListDao dao = TpListDao.getInstance();
TpListDto dto = dao.getTplistdetail(seq);
%> --%>

<%-- <%
MemberDto mem = (MemberDto)request.getSession().getAttribute("login");
%>
 --%>
<script type="text/javascript">
$(document).ready(function() {
   // 검색어 있는 경우   
   let search = ${search};   // Java Script에서 EL tag는 접근이 가능합니다.
   if(search == "") return;
   
   // select
   let obj = document.getElementById("choice");
   obj.value = ${choice};
   obj.setAttribute("selected", "selected");
});
</script>

</head>
<body id="bg">
<div class="page-wraper">
<div id="loading-area"></div>
      <!-- 전체 공통 header -->
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
            <div class="section-full content-inner bg-white">
                <div class="container">

               <div class="row" style="text-align: center;">
                  <div class="col-xl-9 col-lg-8 col-md-7 col-sm-12 col-12">

                     
                     <div class="blog-post blog-single blog-post-style-2 sidebar">
                        <div class="aur-box blog-user m-b60">
                           <div class="autr-profile-info">
                              <div class="autr-profile-content">
                                 
                                    <div class="section-head text-center">
                                       <div style="font-size: 20px; color: red;" class="title-sm">${dto.place}</div>
                                       <h2 class="title-head">${dto.title}</h2>
                                    </div>
                                    
                                    <div class="dlab-post-media blog-single post-audio">
                                       <img class="imgsize" src = "./upload/${dto.newFilename }">
                                    </div>
                                    
                                    <!-- 본문박스 시작 -->
                                    <div class="dlab-post-info">
                                       <div class="dlab-post-text text" style="text-align: left;">
                                          <p style="font-size: 20px; color: black;"><b>Writer</b>&nbsp;&nbsp;${dto.name }</p>
                                          <p style="font-size: 20px; color: black;"><b>Views</b>&nbsp;&nbsp;&nbsp;&nbsp;${dto.readcount }</p>
                                          <p style="font-size: 18px; color: black;">${dto.content }</p>
                                       </div>
                                    </div>
                                    
                                    <div class="blog-card-info style-1 no-bdr">
                                       <div class="date">
                                          ${dto.wdate }
                                       </div>
                                       
                                       <div class="">
                                          <!-- detail 하단에 버튼 설정 -->
                                          <!-- 유저가 버튼을 누를시 맛집 사진 다운 -->
                                       </div>
                                    </div>
                                    
                                    <div class="dtnline">
                                          <input type= "button" class="btn btn-secondary"  name ="btndown" value = "Picture Download"
                                                      onclick = "location.href='filedown?param=listdownload&filename=${dto.newFilename}&seq=${dto.seq}'">
                                          <!-- 글목록으로 다시가기 -->
                                          &nbsp;&nbsp;&nbsp;
                                          <button class="btn btn-secondary" onclick="golistTp()">Go Tripia List</button>
                                          
                                          
                                          <!-- 로그인아이디와 사용자 아이디가 동일할 시에 버튼 생성 -->
                                          <c:if test="${dto.id eq login.id || login.auth == 1}">   
                                          
                                          
                                             <!-- 수정 -->   
                                             &nbsp;&nbsp;&nbsp;
                                             <button class="btn btn-secondary" onclick = "updateBbs(${dto.seq})">Update Content</button>
                                          
                                             &nbsp;&nbsp;&nbsp;
                                          
                                              <!-- 삭제 -->   
                                               <!-- Button to Open the Modal -->
                                            
                                               <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModal">
                                                 Delete Card
                                               </button>
                                          
                                            <!-- The Modal -->
                                                  <div class="modal fade" id="myModal">
                                                    <div class="modal-dialog">
                                                  <div class="modal-content">
                                                
                                                  <!-- Modal Header -->
                                                  <div class="modal-header">
                                                    <h4 class="modal-title">Delete message</h4>
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                  </div>
                                                  
                                                  <!-- Modal body -->
                                                  <div class="modal-body">
                                                       <h5>정말로 게시물을 삭제하시겠습니까?</h5>
                                                       <h5>삭제 시 복구할 수 없습니다.</h5>
                                                  </div>
                                                  
                                                  <!-- Modal footer -->
                                                  <div class="modal-footer">
                                                     
                                                    <button type="button" class="btn btn-danger" data-dismiss="modal" onclick="deleteBbs(${dto.seq})">네, 삭제하겠습니다</button>
                                                       
                                                    <br>
                                                    <button type="button" class="btn btn-danger" data-dismiss="modal">아니요</button>
                                                  </div>
                                                  
                                                </div>
                                              </div>
                                            </div>
                                            </c:if>   
                                          </div>
                                    <br>
                                    
                           
                                    
                                    
                                    <script type="text/javascript">
                                    function updateBbs(seq) {
                                    //   alert('updateBbs');
                                       location.href = "TpList?param=Tplistupdate&seq=" + seq;
                                       
                                    }
                                    function deleteBbs(seq) {
                                       location.href = "TpList?param=Tplistdelete&seq=" + seq;
                                    }
                                    
                                    </script>
                                    
                              </div>
                           
                     
                        
                     </div>
                     
                     
                     
                     
                     
                     
                     
                     <div class="">   
                     <div class="clear m-b30" id="comment-list">
                        <div class="comments-area" id="comments">
                           <h6 class="comments-title"><span>Comments</span></h6>
                           <div>
                              
                              
                              <!-- list Clist -->
                              <c:if test="${empty Clist}">
                                 <table>
                                        <tr>
                                              <td colspan = "2"><h5>댓글이 없습니다</h5></td>
                                        </tr>
                                     </table>                              
                              </c:if>
                              
                              <c:if test="${not empty Clist}">
                              
                                 <c:forEach var="Cdto" items="${Clist}" varStatus="i">               
                                 <!-- 댓글 칸 DIV -->
                                 <div align="left">
                                    <ol class="comment-list">
                                    <li class="comment">
                                    <div class="comment-body">
                                       <div class="comment-author vcard"> 
                                          <img class="avatar photo" src="images/testimonials/pic1.png" alt=""> 
                                          <cite class="fn">${Cdto.commId}</cite> 
                                          <span class="says">says:</span> 
                                       </div>
                                       <div>${Cdto.commDate}</div>
                                       <p>${Cdto.commContent}</p>
                                       
                                       <!-- 삭제버튼 -->
                                       <c:if test="${login.id eq Cdto.commId}">
                                       
                                       <div class="reply">
                                       <img onclick="deleteComm(${Cdto.commNum}, ${Cdto.commTPSeq})" id="deletebtn" alt="" src="./images/delete.png"> 
                                       </div>
                                       </c:if>
                                    </div>
                                    
                                    <!-- list END -->
                                 </li>
                                 </ol>
                                 </div>
                              </c:forEach>
                              </c:if>
                              <script type="text/javascript">
                              function deleteComm(commNum, commListSeq) {
                                 //alert("딜리트버튼눌럿삼");
                                // alert("댓글번호" + commNum);
                                // alert("부모글번호" + commListSeq);
                                 location.href="comment?param=deletetpAf&commNum="+commNum+"&commTPSeq="+commListSeq;
                              }                        
                              </script>

                              <!-- comment list END -->
                              <!-- Form -->
                              <div class="comment-respond" > 
                                 <h3 class="comment-reply-title text-center" id="reply-title">Write Comment <small> <a style="display:none;" href="#" id="cancel-comment-reply-link" rel="nofollow">Cancel reply</a> </small> </h3>
                                 
                               <form action="comment?param=writeTPAf"   class="comment-form"  method="post"> 
                                    <input type="hidden" id="commNum" name="commNum" value="${Cdto.seq }">
                                    <input type ="hidden" id="comListSeq" name="comListSeq" value="${dto.seq }">
                                    <p class="comment-form-author">
                                       <!-- <label for="author">Name <span class="required">*</span></label> -->
                                       <input type="text" readonly="readonly"  name = "commid" value="${login.id }" placeholder="${login.id }" id="commid">
                                    </p>
                                    <p class="comment-form-email">
                                       <!-- <label for="email">Email <span class="required">*</span></label> -->
                                       
                                        <input type="text"  readonly="readonly" value="${login.email }" placeholder="Email" id="email">
                                    </p>
                                    <p class="comment-form-comment">
                                       <!-- <label for="comment">Comment</label> -->
                                       <textarea rows="8" name = "commContent"  placeholder="Add Comment"></textarea>
                                    </p>
                                     <p class="form-submit text-center"> 
                                       <!-- <input id = "btn" type="submit" value="Post Comment"> -->
                                       <button type="submit" id="btn">Post Comment</button>
                                     </p>
                                 </form>
                                 
                              </div>
                        </div><!--NOT DELETE  -->
                        <script type="text/javascript">
                        function deleteTp(seq,newfilename) {
                           location.href="filedelete?&seq=" + seq + "&newfilename=" + newfilename;
                        }
                        function updateTp(seq) {
                           location.href="TpList?param=Tplistupdate&seq=" + seq;
                        }
                        function golistTp() {
                           location.href="TpList?param=Tplist";
                        }
                           
                        
                        
                        </script>
                     <!-- Form END -->
                  </div>

               </div>
               
            </div>   
                  
         </div>

      </div>

   </div>   
   
   
<div class="col-xl-3 col-lg-4 col-md-5 col-sm-12 col-12">   
<div class="side-bar p-l30 sticky-top">
<div class="widget widget-newsletter text-center">
<form class="dzSubscribe dezPlaceAni" action="script/mailchamp.php" method="post">
<div class="news-back form-style">
<h5 style="color: #F7FE2E; text-shadow:3px 3px 3px rgb(0,0,0);">Tripia</h5>
<h5 style="color: #F7FE2E; text-shadow:3px 3px 3px rgb(0,0,0);">today's weather</h5>
<div class = 'weather'>
<div class ='CurrIcon'><img id ="CurrIcon" alt = "" src = ""></div>
<div style="font-size: 25px" class = 'CurrTemp'></div>
<div style="font-size: 20px" class = 'City'></div>

<select id = "place" class="form-control selectpicker noborder">
       <option value = "">Where?</option>
       <option value = "Incheon">인천</option>
       <option value = "Seoul">서울</option>
       <option value = "Busan">부산</option>
       <option value = "Jeju">제주</option>
</select>
    
</div>
                                 
                              
         <div class="dzSubscribeMsg"></div>
      </div>
   </form>
</div>
<div class="widget widget_gallery gallery-grid-2">
   <h6 class="widget-title"><span>travel</span></h6>
   <ul>
      <li>
         <a href="#">
            <div class="dlab-post-thum dlab-img-overlay1 dlab-img-effect">
               <img style="width: 107.22px; height: 107.22px;" src="images/gallery/widget-gallery/adsf.jpg" alt="">
      </div>
   </a>
</li>
<li>
   <a href="#">
      <div class="dlab-post-thum dlab-img-overlay1 dlab-img-effect">
         <img style="width: 107.22px; height: 107.22px;" src="images/gallery/widget-gallery/jeju.jpg" alt="">
      </div>
   </a>
</li>
<li>
   <a href="#">
      <div class="dlab-post-thum dlab-img-overlay1 dlab-img-effect">
         <img style="width: 107.22px; height: 107.22px;" src="images/gallery/widget-gallery/summer.jpg" alt="">
      </div>
   </a>
</li>
<li>
   <a href="#">
      <div class="dlab-post-thum dlab-img-overlay1 dlab-img-effect">
         <img style="width: 107.22px; height: 107.22px;" src="images/gallery/widget-gallery/beach.jpg" alt="">
            </div>
         </a>
      </li>
   </ul>
</div>

                        <div class="widget widget_tag_cloud">
                           <h6 class="widget-title"><span>Developers</span></h6>
                           <div class="tagcloud text-center"> 
                              <a href="#">Woojh</a>
                              <a href="#">Wonjh</a>
                              <a href="https://aesupbin.tistory.com/">Leesb</a>
                              <a href="#">Kimyn</a>
                              <a href="https://www.instagram.com/2j_woo/">Leejw</a>
                           </div>
                        </div>
                     </div>
                  </div>
<!-- 날씨스크립트 -->
<script type="text/javascript">

 var place;/// = $("#place option:selected").val();

$(document).ready(function(){
   
   $("#place").change(function(){
   
   //   alert($("#place option:selected").val());
       place = $("#place option:selected").val();
      let weather = 'http://api.openweathermap.org/data/2.5/weather?q='+ place +'&appid=0da614b3fe6226c81e152090ea42602a&units=metric'
   
       $.ajax({
           url: weather,
           dataType: 'json',
           type: 'GET',
           success: function(data){
              
               var $Icon = (data.weather[0].icon);
               var $Temp = Math.floor(data.main.temp) + 'º';
               var $city = data.name;
   
                $('#CurrIcon').attr("src",'http://openweathermap.org/img/wn/'+ $Icon + '@2x.png');
                $('.CurrTemp').html($Temp);
                $('.City').html($city);
                
                //prepand, append
           }
       });
   });
});

</script>
   
   
   
   
   
   
</div><!-- row 종료 -->
   





                </div>
         </div>
         <!-- About Us End -->
      </div>
      <!-- contact area END -->
   </div>
<!-- Content END-->


   <!-- Footer -->
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