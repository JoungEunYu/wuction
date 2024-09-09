<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

      #container {
        display: grid;
        grid-template-columns: minmax(192px, 896px) minmax(896px, 1020px) minmax(
            192px,
            896px
          );

        width: 100%;
        height: 100%;
      }

      #content {
        display: grid;
        grid-template-rows: minmax(100px, 150px) minmax(520px, 2fr) minmax(
            100px,
            150px
          );
        height: 100%;
      }

      main {
        display: grid;
        grid-template-columns: repeat(12, 1fr);
        grid-column-gap: 20px;
      }
    </style>
</head>
<body>
    <div id="container">
      <div>좌측 빈 공간</div>
      <div id="content">
        <%@ include file="../common/header.jsp" %>
        <main>
          <div
            style="
              grid-column: 1 / span 2;
              border-left: 1px solid #B1B1B1;
              border-right: 1px solid #B1B1B1;
            "
          >
            <div
              style="background-color: #9b9b9b; height: 76px; width: 100%"
            ></div>
            <div
              style="
                background-color: #2c2c2c;
                height: 41px;
                width: 100%;
                display: flex;
                align-items: center;
                justify-content: center;
                border-bottom: 1px solid #c7c7c7;
              "
            >
              <a
                href="#"
                style="text-decoration: none; color: #ffffff; font-size: 15px"
                >나의 정보</a
              >
            </div>
            <div
              style="
                background-color: #ffffff;
                height: 41px;
                width: 100%;
                display: flex;
                align-items: center;
                justify-content: center;
                border-bottom: 1px solid #c7c7c7;
              "
            >
              <a
                href="#"
                style="text-decoration: none; color: #2c2c2c; font-size: 15px"
                >나의 경매 목록</a
              >
            </div>
            <div
              style="
                background-color: #ffffff;
                height: 41px;
                width: 100%;
                display: flex;
                align-items: center;
                justify-content: center;
                border-bottom: 1px solid #c7c7c7;
              "
            >
              <a
                href="#"
                style="text-decoration: none; color: #2c2c2c; font-size: 15px"
                >나의 입찰 목록</a
              >
            </div>
          </div>

          <div style="grid-column: 4 / span 8">
            <div
              style="
                height: 108px;
                width: 100%;
                display: flex;
                align-items: flex-end;
              "
            >
              <text style="margin-bottom: 10px; font-size: 18px; font-weight: 800">나의 정보<text>
            </div>
            <div
              style="width: 100%; border: 1px solid #b1b1b1; display: flex; justify-content: center; align-items: center;"
            >
             <table style="width: 100%; height: 293px;">
                <tr style="background-color: #F1F1F1;">
                  <th style="width: 350px; text-align: left; padding-left: 1%;">상품명</td>
                  <th>내 입찰 가격</td>
                  <th style="text-align: right; padding-right: 1%;">입찰일</td>
                </tr>
                <tr>
                  <td>메타몽인형</td>
                  <td style="text-align: center;">5,000,000</td>
                  <td style="text-align: right;">2024-12-30</td>
                </tr>
                <tr>
                  <td>이브이 인형</td>
                  <td style="text-align: center;">5,000,000</td>
                  <td style="text-align: right;">2024-12-30</td>
                </tr>
                <tr>
                  <td>잠만보 인형</td>
                  <td style="text-align: center;">5,000,000</td>
                  <td style="text-align: right;">2024-12-30</td>
                </tr>
                <tr>
                  <td>리자몽인형</td>
                  <td style="text-align: center;">5,000,000</td>
                  <td style="text-align: right;">2024-12-30</td>
                </tr>
             </table>
            </div>
          </div>
        </main>
        <%@ include file="../common/footer.jsp" %>
      </div>
      <div>우측 빈 공간</div>
    </div>
  </body>
</html>