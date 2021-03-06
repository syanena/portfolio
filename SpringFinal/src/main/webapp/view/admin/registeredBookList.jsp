<%--
  Created by IntelliJ IDEA.
  User: gil
  Date: 2020-03-26
  Time: 오후 4:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>headless</title>
    <link rel="stylesheet" href="Shards-3.0.0/css/shards-demo.css">
    <link rel="stylesheet" href="Shards-3.0.0/css/shards-demo.css.map">
    <link rel="stylesheet" href="Shards-3.0.0/css/shards-demo.min.css">
    <link rel="stylesheet" href="Shards-3.0.0/css/shards-demo.min.css.map">
    <link rel="stylesheet" href="Shards-3.0.0/css/shards-extras.css">
    <link rel="stylesheet" href="Shards-3.0.0/css/shards-extras.css.map">
    <link rel="stylesheet" href="Shards-3.0.0/css/shards-extras.min.css">
    <link rel="stylesheet" href="Shards-3.0.0/css/shards-extras.min.css.map">
    <link rel="stylesheet" href="Shards-3.0.0/css/shards.css">
    <link rel="stylesheet" href="Shards-3.0.0/css/shards.css.map">
    <link rel="stylesheet" href="Shards-3.0.0/css/shards.min.css">
    <link rel="stylesheet" href="Shards-3.0.0/css/shards.min.css.map">
    <script src="Shards-3.0.0/jquery-3.4.1.min.js"></script>
    <script src="Shards-3.0.0/js/demo.js"></script>
    <script src="Shards-3.0.0/js/demo.min.js"></script>
    <script src="Shards-3.0.0/js/shards.js"></script>
    <script src="Shards-3.0.0/js/shards.min.js"></script>
    <style>

        .grid-container {/*그리드 구간이 필요할때마다 컬럼과 로우를 추가한다(tr,td하듯이)*/
            display: grid;
            grid-template-columns: 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr;
            grid-template-rows: 1fr;
            margin: 0 300px 0 300px;
        }
        /*쓰려는 용도에 맞추어 css를 적용*/
        .grid-top {
            padding: 40px;
            text-align: center;
            background-color: chartreuse;
            grid-column: 1/11;
        }
        .grid-side {
            padding: 5px;
            text-align: left;
            border: 1px solid black;
            background-color: greenyellow;
            grid-column: 1/3;
            grid-row: 2/6;
        }
        .grid-item {
            padding: 40px;
            text-align: center;
            border: 1px solid black;
            background-color: lightgreen;
            grid-column:3 / 11;
        }

    </style>

</head>

<body>
<div class="grid-container">
    <div class="grid-top"><a href="#"> 쌍용북스</a></div>

    <div class="grid-side">
        <h6>관리자홈</h6>
        <ul>
            <li><a href="#">리뷰관리</a></li>
            <li><a href="#">공지사항관리</a></li>
            <li><a href="#">문의사항관리</a></li>
            <li><a href="#">매출현황보기</a></li>
            <li><a href="#">상품등록하기</a></li>
        </ul>
    </div>

    <div class="grid-item" style="text-align: right">카테고리 / 가격 / 순번</div>
    <div class="grid-item">
        <table border="1px" style="border: 1px solid red; margin: auto; text-align: center;">
            <tbody>
            <tr>
                <td>순번</td>
                <td>책제목</td>
                <td>분류코드</td>
                <td>저자</td>
                <td>대분류</td>
                <td>소분류</td>
                <td>출판일</td>
                <td>가격</td>
            </tr>

           <c:forEach items="${bookInfoList}" var="bookInfoList" varStatus="i">
               <tr>
                   <td>${i.index+1}</td>
                   <td><a href="joinDetailBookInfo/${bookInfoList.isbn}"> ${bookInfoList.book_subject}</a></td>
                   <td>${bookInfoList.isbn}</td>
                   <td>${bookInfoList.book_writer}</td>
                   <td>${bookInfoList.book_m_category}</td>
                   <td>${bookInfoList.book_s_category}</td>
                   <td>${bookInfoList.book_pday}</td>
                   <td>${bookInfoList.book_price}</td>
               </tr>
           </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="grid-item">
        <div style="text-align: right; margin-right: 30px;">
            <button>상품 등록하기</button>
        </div>
    </div>
</div>
</body></html>
