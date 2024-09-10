<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
      html,
      body {
        height: 100%;
        margin: 0; /* 기본 마진 제거 */
        padding: 0; /* 기본 패딩 제거 */
      }

      header {
        display: grid;
        grid-template-columns: repeat(12, 1fr);
        grid-template-rows: 1fr 1fr;
        grid-column-gap: 20px;
        border-bottom: solid 1px #cecece;
      }

      .logo {
        background-image: url("resources/images/wuctionLogo.png");
        width: 100vw;
        height: 80%;
        border: 0px;
        background-color: white;
        background-repeat: no-repeat;
        background-size: contain;
        cursor: pointer;
      }

      .member-function-area {
        border: solid 2px #b6b6b6;
        border-radius: 20px;
        background-color: white;
        display: flex;
        justify-content: space-around;
        align-items: center;
        margin-top: 14%;
        height: 30%;
      }

      .member-function-area a {
        font-size: 10px;
        font-weight: normal;
        color: #2c2c2c;
        text-decoration-line: none;
      }
      
      .search-area {
         grid-column: 3 / span 8;
         grid-row: 2 / span 1;
         display: flex;
         align-items: center;
       }

       .search-area input { 
         border: solid 4px red;
         width: 100%;
         height: 35%;
       }

       .posting-btn-area {
         grid-column: 11 / span 2;
         grid-row: 2 / span 1;
         display: flex;
         align-items: center;
       }

       .posting-btn-area button {
         color: #ffffff;
         font-size: 16px;
         background-color: #ff5252;
         border-radius: 30px;
         border: 0px;
         width: 95%;
         margin-left: 5%;
         height: 40%;
         font-weight: 600;
         cursor: pointer;
       }
    </style>
</head>
<body>
	<%
		String contextPath = request.getContextPath();
	%>
    <header>
      <div
        style="
          grid-column: 1 / span 2;
          grid-row: 1 / span 2;
          display: flex;
          align-items: center;
        "
      >
        <button class="logo"></button>
      </div>
      <div style="grid-column: 3 / span 7; grid-row: 1 span 1"></div>
      
      <div style="grid-column: 10 / span 3; grid-row: 1 / span 1">
      
	  <c:choose>
	  	<c:when test="${empty loginUser}">
          <div class="member-function-area">
            <a href="<%= contextPath %>/loginPage.me">로그인</a>
            <a href="<%= contextPath %>/signupPage.me">회원가입</a>
            <a href="<%= contextPath %>/loginPage.me">마이페이지</a>
          </div>
        </c:when>
        <c:otherwise>
        	<div class="member-function-area">
            <a href="<%= contextPath %>/logout.me">로그아웃</a>
            <a href="<%= contextPath %>/myPage.me">마이페이지</a>
          </div>
        </c:otherwise>
	  </c:choose>
	  
        </div>
		<div class="search-area">
          <input
            type="text"
            name=""
            placeholder="검색어를 입력해주세요."
          />
        </div>

        <div class="posting-btn-area">
          <button>내 상품 등록</button>
        </div>
      </header>
  </body>
</html>