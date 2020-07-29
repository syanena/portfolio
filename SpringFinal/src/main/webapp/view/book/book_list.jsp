<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>list</title>

<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/view/css/shards.min.css?v=3.0.0">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/view/css/shards-demo.min.css?v=3.0.0">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/view/carousel/slick/slick.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/view/carousel/slick/slick-theme.css" />
	
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/view/css/header.css">
<script type="text/javascript"
	src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	
	<script src="<%=request.getContextPath()%>/view/js/bootstrap.min.js"></script>

    <script src="<%=request.getContextPath()%>/view/js/bootstrap-dropdownhover.min.js"></script>

<style>
		.box-container div{
			padding: 10px;
			border: 1px solid green;
			background-color: #e3ffe0;
		}
		#list_menu { position: absolute; top: 20px; left: 30px; }
		#content_page { position: absolute; left: 300px; }
		#box3 { position: absolute; top: 20px; right: 30px; }
		#box4 { position: fixed; top: 20px; right: 30px; }
		
		.module_category_section {
    margin-top: 30px;
}

.book_macro_column_5 {
    width: 20%;
    float: left;
    margin-top: 20px;
}

.book_macro_portrait {
    text-align: center;
}

.book_macro_portrait .book_thumbnail_wrapper {
    position: relative;
    text-align: left;
    display: block;
    margin: 0 auto;
}

.book_thumbnail_wrapper .book_thumbnail .thumbnail_btn {
    display: block;
    position: absolute;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    z-index: 200;
    cursor: pointer;
    box-sizing: border-box;
}
.book_metadata_wrapper {
    cursor: default;
}

.book_macro_portrait .book_metadata_wrapper {
    text-align: left;
    display: block;
    margin: 8px auto 0 auto;
}

.book_thumbnail_wrapper .book_thumbnail .thumbnail_image {
    display: block;
    width: 100%;
    height: 100%;
    position: relative;
    background: #d9d9d9;
}

.book_thumbnail_wrapper .book_thumbnail {
    display: inline-block;
    position: relative;
    height: auto;
}

.book_macro_110 .book_macro_portrait .book_thumbnail_wrapper {
    height: 167px;
}

.book_macro_110 .book_thumbnail_wrapper {
    width: 180px;
}

.thumnail_image {
width: 100px;
    height: 140px;
}

.book-list-thumbnail {
    display: block;
    box-sizing: border-box;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: linear-gradient(to right, rgba(0, 0, 0, .2) 0, rgba(0, 0, 0, 0) 5%, rgba(0, 0, 0, 0) 95%, rgba(0, 0, 0, .2) 100%);
    border: solid 1px rgba(0, 0, 0, .1);
    content: '';
}

.book_macro_110.book_macro_portrait .book_metadata_wrapper {
    width: 170px;
}

.book_macro_portrait .book_metadata_wrapper {
    text-align: left;
    display: block;
    margin: 8px auto 0 auto;
}

.book_metadata_wrapper {
    cursor: default;
}

.book_metadata_wrapper .meta_title .title_link .title_text {
    font-size: 13px;
    line-height: 1.4em;
    font-weight: 700;
    color: #333;
    word-break: keep-all;
    text-overflow: ellipsis;
    display: block;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    word-wrap: break-word;
    word-break: break-all;
    white-space: normal;
    max-height: 2.7em;
    overflow: hidden;
    
}

.title_link {
text-decoration:none;}

.book_macro_portrait .book_metadata_wrapper .author {
    word-break: keep-all;
    text-overflow: ellipsis;
    display: block;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    word-wrap: break-word;
    word-break: break-all;
    white-space: normal;
    max-height: 3.1em;
    overflow: hidden;
}

.StarRate_IconBox {
	position: relative;
	margin-top: -1px;
	margin-right: 1px;
	vertical-align: -11%;
	font-size: 0;
	overflow: hidden;
}

.Rating-Star {
	width: 11px;
	height: 11px;
}

.Rating-Member {
	color: #999;
	font-size: 11px;
	line-height: 1em;
	vertical-align: -35%;
}

.book_metadata_wrapper .author a, .book_metadata_wrapper .author span {
    font-size: 12px;
    color: #666;
    font-weight: 400;
    line-height: 1.2em;
    word-break: break-all;
}

.book_macro_portrait .book_metadata_wrapper .book_button, .book_macro_portrait .book_metadata_wrapper .book_metadata {
    margin-top: 3px;
}

@import url(//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css);
}
@import url(https://fonts.googleapis.com/css?family=Titillium+Web:300);
.fa-2x {
font-size: 2em;
}
.fa {
position: relative;
display: table-cell;
width: 60px;
height: 36px;
text-align: center;
vertical-align: middle;
font-size:20px;
}


.main-menu:hover,nav.main-menu.expanded {
width:250px;
overflow:visible;
}

.main-menu {
background:white;
border-right:1px solid #e5e5e5;
position:absolute;
top:0;
bottom:0;
height:100%;
left:0;
width:60px;
overflow:hidden;
-webkit-transition:width .05s linear;
transition:width .05s linear;
-webkit-transform:translateZ(0) scale(1,1);
z-index:1000;
}

.main-menu>ul {
margin:7px 0;
}

.main-menu li {
position:relative;
display:block;
width:250px;
}

.main-menu li>a {
position:relative;
display:table;
border-collapse:collapse;
border-spacing:0;
color:#999;
 font-family: arial;
font-size: 14px;
text-decoration:none;
-webkit-transform:translateZ(0) scale(1,1);
-webkit-transition:all .1s linear;
transition:all .1s linear;
  
}

.main-menu .nav-icon {
position:relative;
display:table-cell;
width:60px;
height:36px;
text-align:center;
vertical-align:middle;
font-size:18px;
}

.main-menu .nav-text {
position:relative;
display:table-cell;
vertical-align:middle;
width:190px;
  font-family: 'Titillium Web', sans-serif;
}

.main-menu>ul.logout {
position:absolute;
left:0;
bottom:0;
}

.no-touch .scrollable.hover {
overflow-y:hidden;
}

.no-touch .scrollable.hover:hover {
overflow-y:auto;
overflow:visible;
}

a:hover,a:focus {
text-decoration:none;
}

nav {
-webkit-user-select:none;
-moz-user-select:none;
-ms-user-select:none;
-o-user-select:none;
user-select:none;
}

nav ul,nav li {
outline:0;
margin:0;
padding:0;
list-style:none;
}
.main-menu li:hover>a,nav.main-menu li.active>a,.dropdown-menu>li>a:hover,.dropdown-menu>li>a:focus,.dropdown-menu>.active>a,.dropdown-menu>.active>a:hover,.dropdown-menu>.active>a:focus,.no-touch .dashboard-page nav.dashboard-menu ul li:hover a,.dashboard-page nav.dashboard-menu ul li.active a {
color:#fff;
background-color:#17c671;
}

.area {
float: left;
background: #e2e2e2;
width: 100%;
height: 100%;
}

@font-face {
  font-family: 'Titillium Web';
  font-style: normal;
  font-weight: 300;
  src: local('Titillium WebLight'), local('TitilliumWeb-Light'), url(http://themes.googleusercontent.com/static/fonts/titilliumweb/v2/anMUvcNT0H1YN4FII8wpr24bNCNEoFTpS2BTjF6FB5E.woff) format('woff');
}

#ridi_books div#books_contents div#contents_wrap #contents_menu {
    display: table-cell;
    vertical-align: top;
    padding-bottom: 320px;
    width: 235px;
    box-sizing: border-box;
    padding-right: 33px;
}

#contents_menu .menu_wrapper .main_category_wrapper .main_category_list {
    display: block;
    position: relative;
    margin-top: 5px;
    margin-bottom: 5px;
}

#contents_menu .menu_wrapper .main_category_wrapper .main_category_list .main_category_button.opened {
    background: #17c671;
    color: #fff;
}

#contents_menu .menu_wrapper .main_category_wrapper .main_category_list .sub_category_wrapper {
    margin-bottom: 10px;
    margin-top: 5px;
}

#contents_menu .menu_wrapper .main_category_wrapper .main_category_list .sub_category_wrapper .sub_category_list .sub_category_list_item:focus, #contents_menu .menu_wrapper .main_category_wrapper .main_category_list .sub_category_wrapper .sub_category_list .sub_category_list_item:hover, #contents_menu .menu_wrapper .main_category_wrapper .main_category_list .sub_category_wrapper .sub_category_list.selected .sub_category_list_item {
    color: #17c671;
    font-weight: 700;
    text-decoration: none;
}

#contents_menu .menu_wrapper .main_category_wrapper .main_category_list .sub_category_wrapper .sub_category_list .sub_category_list_item {
    display: block;
    width: 130px;
    line-height: 1.5em;
    padding: 3px 10px;
    font-size: 13px;
    color: #636c73;
    letter-spacing: -.03em;
}

#ridi_books div#books_contents div#contents_wrap {
    display: flex;
    width: 900px;
    margin: 0 auto;
    position: relative;
    clear: both;
    margin-top: 33px;
    width: 953px;
    padding: 0 24px;
}

#ridi_books {
    cursor: default;
    min-width: 320px;
}

#contents_menu .menu_wrapper .main_category_wrapper .main_category_list .main_category_button {
    position: relative;
    display: block;
    width: 110px;
    height: 24px;
    padding-left: 5px;
    font-size: 14px;
    font-weight: 700;
    color: #000;
    line-height: 24px;
    text-align: left;
    border: none;
    background: 0 0;
    cursor: pointer;
    -webkit-appearance: none;
    -moz-appearance: none;
    -webkit-tap-highlight-color: transparent;
    box-sizing: border-box;
    box-shadow: none;
    border-radius: 4px;
}

#ridi_books div#books_contents {
    width: 100%;
    position: relative;
    overflow-x: hidden;
    overflow-y: hidden;
    min-height: 500px;
}




	</style>
	
	<script>

function searchParam(key) {
	  return new URLSearchParams(location.search).get(key);
	};

function addClass(element, className) { element.className += " " + className; };

function removeClass(element, className) {
	var check = new RegExp("(\\s|^)" + className + "(\\s|$)"); 
	element.className = element.className.replace(check, " ").trim(); };


	  window.onload = function() {
		  
		  var param = searchParam("book_m_category");

		  
		  var atag = document.getElementsByClassName("main_category_button");
		  for (var i = 0; i < atag.length; i++) {
		    var categoryname = atag[i].innerText;
		    
		    if(param==categoryname) {
		    	addClass(atag[i], "opened");
		    	break;
		    }
		    
		    
		  };
	  };


</script>
</head>
<body id="ridi_books">

<div id="books_contents">

<div id="contents_wrap">

<div id="contents_menu">
	<nav class="menu_wrapper">
		<ul class="main_category_wrapper">
			<li class="main_category_list">
				<a class="main_category_button"
				href="${pageContext.request.contextPath}/book/book_list?book_m_category=소설"
				
				onclick="open();">소설</a>
			<ul class="sub_category_wrapper">
				<li class="sub_category_list">
					<a class="sub_category_list_item">일반</a>
				</li>
				<li class="sub_category_list">
					<a class="sub_category_list_item">SF</a>
				</li>
				<li class="sub_category_list">
					<a class="sub_category_list_item">추리</a>
				</li>
				<li class="sub_category_list">
					<a class="sub_category_list_item">판타지/무협</a>
				</li>
				<li class="sub_category_list">
					<a class="sub_category_list_item">로맨스</a>
				</li>
			</ul>
			
			<li class="main_category_list">
				<a class="main_category_button" 
				href="${pageContext.request.contextPath}/book/book_list?book_m_category=자기개발"
				onclick="open();">자기개발</a>
				
			<ul class="sub_category_wrapper">
				<li class="sub_category_list">
					<a class="sub_category_list_item">성공/삶의 자세</a>
				</li>
				<li class="sub_category_list">
					<a class="sub_category_list_item">취업/창업</a>
				</li>
				<li class="sub_category_list">
					<a class="sub_category_list_item">설득/화술/협상</a>
				</li>
			</ul>
			
			<li class="main_category_list">
				<a class="main_category_button" 
				href="${pageContext.request.contextPath}/book/book_list?book_m_category=건강/다이어트">건강/다이어트</a>
				
			<ul class="sub_category_wrapper">
				<li class="sub_category_list">
					<a class="sub_category_list_item">스마일/뷰티</a>
				</li>
				<li class="sub_category_list">
					<a class="sub_category_list_item">건강/다이어트</a>
				</li>
				<li class="sub_category_list">
					<a class="sub_category_list_item">운동/스포츠</a>
				</li>
			</ul>
			
			<li class="main_category_list">
				<a class="main_category_button" 
				href="${pageContext.request.contextPath}/book/book_list?book_m_category=외국어">외국어</a>
				
			<ul class="sub_category_wrapper">
				<li class="sub_category_list">
					<a class="sub_category_list_item">비즈니스 영어</a>
				</li>
				<li class="sub_category_list">
					<a class="sub_category_list_item">일반 영어</a>
				</li>
				<li class="sub_category_list">
					<a class="sub_category_list_item">제2 외국어</a>
				</li>
			</ul>
			
			<li class="main_category_list">
				<a class="main_category_button" 
				href="${pageContext.request.contextPath}/book/book_list?book_m_category=컴퓨터/IT">컴퓨터/IT</a>
				
			<ul class="sub_category_wrapper">
				<li class="sub_category_list">
					<a class="sub_category_list_item">IT비즈니스</a>
				</li>
				<li class="sub_category_list">
					<a class="sub_category_list_item">IT자격증</a>
				</li>
				<li class="sub_category_list">
					<a class="sub_category_list_item">개발/프로그래밍</a>
				</li>
				<li class="sub_category_list">
					<a class="sub_category_list_item">IT해외원서</a>
				</li>
			</ul>
			
			<li class="main_category_list">
				<a class="main_category_button" 
				href="${pageContext.request.contextPath}/book/book_list?book_m_category=경영/경제">경영/경제</a>
				
			<ul class="sub_category_wrapper">
				<li class="sub_category_list">
					<a class="sub_category_list_item">경영 일반</a>
				</li>
				<li class="sub_category_list">
					<a class="sub_category_list_item">경제 일반</a>
				</li>
				<li class="sub_category_list">
					<a class="sub_category_list_item">마케팅/세일즈</a>
				</li>
				<li class="sub_category_list">
					<a class="sub_category_list_item">CEO/리더십</a>
				</li>
			</ul>
			
		
		</ul>
	
	</nav>
</div>

	
	<div id="content_page">
		<div id="selected_category">
			선택한 카테고리
		</div>
		<div id="book_popular_list">
			<div id="book_popular_title">
				<h3>신간|베스트 셀러|전체</h3>
			</div>
			
				<c:forEach var="article" items="${booklist}">
				<c:set var="title" value="${article.book_subject}" />

				<div class="book_macro_110 book_macro_column_5 book_macro_portrait">
					<div class="book_thumbnail_wrapper">
					<div class="book_thumbnail">
						<div class="thumnail_image">
						<a href="${pageContext.request.contextPath}/book/book_content?isbn=${article.isbn}">
						<img
						src="<%=request.getContextPath()%>/view/images/carousel/${article.isbn}.jpg"
						class="book-list-thumbnail">
						</a>
						</div>
					</div>
					</div>
					<div class="book_metadata_wrapper">
					<h3 class="meta_title">
					
					<a class="title_link" href="${pageContext.request.contextPath}/book/book_content?isbn=${article.isbn}">
						
						
						
						
						<span class="title_text js_highlight_helper">
						<c:if test="${fn:length(title)<=10}">
							${article.book_subject }
						</c:if>
						<c:if test="${fn:length(title)>10}">
							${fn:substring(title, 0, 10)}...
						</c:if>
						</span></a>
						
						
						</h3>
						
					
						<p class="book_metadata author">
						<a>${article.book_writer }</a></p>

					
				</div>
				</div>
				</c:forEach>

				<c:if test="${startPage > bottomLine}">

					<a href="book_list?pageNum=${startPage - bottomLine}">[이전]</a>
				</c:if>
				<c:forEach var="i" begin="${startPage}" end="${endPage}">
					<a href="book_list?pageNum=${i}">[${i}]</a>
				</c:forEach>


				<c:if test="${endPage < pageCount}">
					<a href="book_list?pageNum=${startPage + bottomLine}">[다음]</a>
				</c:if>
				
		</div>
	</div>

</div>
</div>



</body>
</html>