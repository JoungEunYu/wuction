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
      margin: 0;
      /* 기본 마진 제거 */
      padding: 0;
      /* 기본 패딩 제거 */
    }

    .container {
      display: grid;
      grid-template-columns: minmax(192px, 896px) minmax(896px, 1020px) minmax(192px,
          896px);

      width: 100%;
      height: 100%;
    }

    .content {
      display: grid;
      grid-template-rows: minmax(100px, 150px) minmax(520px, 2fr) minmax(100px,
          150px);
      height: 100%;
    }

    main {
      display: grid;
      grid-template-columns: repeat(12, 1fr);
      grid-column-gap: 20px;
    }

    .main-adArea {
      height: 336px;
      display: flex;
      flex-direction: column;
      grid-column: 1 / span 12;
    }

    .main-adTextArea {
      flex: 2;
      font-weight: bold;
      display: flex;
      align-items: flex-end;
    }

    .main-adTextArea > text > b {
      background: linear-gradient(to right top, #ff0101, #e1ff00);
      color: transparent;
      -webkit-background-clip: text;
      font-size: 30px;
    }

    .slider-container {
      flex: 5;
      overflow: hidden;
      position: relative;
    }

    .slides {
      display: flex;
      height: 100%;
      transition: transform 0.5s ease-in-out;
      background-color: #e1ff00;
    }

    .slide {
      min-width: 100%;
      height: 100%;
      display: flex;
      flex-direction: row;
      align-items: center;
      justify-content: center;
      background-color: rgb(255, 255, 255);
      color: #2c2c2c;
      font-size: 15px;
      font-weight: bold;
      border: 2px solid #e5e5e5;
      box-sizing: border-box;
    }

    .slide>div {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .slide-description {
      text-align: center;
      font-size: 16px;
      margin-top: 10px;
    }

    .prev,
    .next {
      position: absolute;
      top: 50%;
      transform: translateY(-50%);
      background-color: #ffffff00;
      color: rgb(146, 146, 146);
      border: none;
      padding: 10px;
      cursor: pointer;
    }

    .prev {
      left: 0.5%;
      font-size: x-large;
    }

    .next {
      right: 0.5%;
      font-size: x-large;
    }

    .prevNextButtonArea, .adContentArea > div {
      flex: 1;
    }

    .adContentArea {
      flex: 12; display: flex
    }

    .adContentArea > div > button {
      width: 100%;
      height: 100%;
      cursor: pointer;
      border: 0px;
      margin: 0px;
      padding: 0px;
    }

    .adContentArea > div > button > img {
      width: 100%;
      height: 100%
    }

    .adContentArea > div > table {
      width: 100%;
      height: 100%
    }

    .adGoodsTitle {
      text-decoration: none;
      color: #000000
    }

    .adContentArea table tr td:first-child {
      color: #949494
    }

    .adContentArea table tr td:nth-child(2) {
      text-align: right
    }

    .main-GoodsTextArea {
      grid-column: 1 / span 12;
      height: 150px;
      font-size: 25px;
      color: #2c2c2c;
      font-weight: normal;
      display: flex;
      align-items: flex-end;
    }

    .goodsArea {
      height: 316px;
      display: block;
      border: 0;
      cursor: pointer;
      padding: 0;
      margin: 0;
      background-color: white;
      margin-bottom: 5%;
    }

    .goods1span3 {
      grid-column: 1 / span 3;
    }

    .goods4span3 {
      grid-column: 4 / span 3;
    }

    .goods7span3 {
      grid-column: 7 / span 3;
    }

    .goods10span3 {
      grid-column: 10 / span 3;
    }

    .goodsImg {
      width: 100%;
      height: 55%;
      background-size: cover;
      background-position: center;
    }

    .goodsImg + div {
      width: 100%;
      height: 45%;
      border-bottom: 2px solid #ffcccc;
      border-left: 2px solid #ffcccc;
      border-right: 2px solid #ffcccc;
      box-sizing: border-box;
    }

    .goodsInfoTable {
      width: 100%;
      height: 100%
    }

    .goodsInfoTable tr td:first-child {
      text-align: left;
      color: #949494;
      font-size: 12px
    }

    .goodsInfoTable tr td:nth-child(2) {
      text-align: right;
      font-size: 12px;
    }

    .goodsInfoTable tr:nth-child(2) td {
      font-weight: 900
    }

    .goodsInfoTable tr:first-child td {
      font-size: 15px;
      color:#2c2c2c;
    }


  </style>
</head>
<body>
  <div class="container">
    <div>좌측 빈 공간</div>
    <div class="content">
      <%@ include file="header.jsp" %>
      <main>
        <div class="main-adArea">
          <div class="main-adTextArea">
            인기
            <text><b>대폭발</b></text>
            상품 모음!!!!
          </div>
          <div class="slider-container">
            <div class="slides" id="slides">
              <div class="slide">
                <div class="prevNextButtonArea"></div>
                <div class="adContentArea">
                  <div>
                    <button>
                      <img src="../resource/8억인치_TV.png" alt="TV"/>
                    </button>
                  </div>
                  <div>
                    <table>
                      <tr>
                        <td colspan="2">
                          <a href="#" class="adGoodsTitle">엄청 비싼 TV</a>
                        </td>
                      </tr>
                      <tr>
                        <td>현재가</td>
                        <td>100,000,000원</td>
                      </tr>
                      <tr>
                        <td>입찰자</td>
                        <td>2,201,507명</td>
                      </tr>
                      <tr>
                        <td>경매기간</td>
                        <td>2024-08-22 23:00</td>
                      </tr>
                    </table>
                  </div>
                </div>
                <div class="adContentArea">
                  <div>
                    <button>
                      <img src="../resource/903069ba-ab95-4ba2-bf02-9f61b1dc0e86.png" alt="세상에서가장비싼운동화" />
                    </button>
                  </div>
                  <div>
                    <table>
                      <tr>
                        <td colspan="2">
                          <a href="#" class="adGoodsTitle">금으로 만든 신발</a>
                        </td>
                      </tr>
                      <tr>
                        <td>현재가</td>
                        <td>100,000,000원</td>
                      </tr>
                      <tr>
                        <td>입찰자</td>
                        <td>2,201,507명</td>
                      </tr>
                      <tr>
                        <td>경매기간</td>
                        <td>2024-08-22 23:00</td>
                      </tr>
                    </table>
                  </div>
                </div>
                <div class="prevNextButtonArea"></div>
              </div>
              <div class="slide">
                <div class="prevNextButtonArea"></div>
                <div class="adContentArea">
                  <div>
                    <button>
                      <img src="../resource/fndlql.png" alt="샤넬브메랑" />
                    </button>
                  </div>
                  <div>
                    <table>
                      <tr>
                        <td colspan="2">
                          <a href="#" class="adGoodsTitle">샤넬 한정판 브메랑</a>
                        </td>
                      </tr>
                      <tr>
                        <td>현재가</td>
                        <td>100,000,000원</td>
                      </tr>
                      <tr>
                        <td>입찰자</td>
                        <td>2,201,507명</td>
                      </tr>
                      <tr>
                        <td>경매기간</td>
                        <td>2024-08-22 23:00</td>
                      </tr>
                    </table>
                  </div>
                </div>
                <div class="adContentArea">
                  <div>
                    <button>
                      <img src="../resource/l_2017052201003110600249914.png" alt="비트코인" />
                    </button>
                  </div>
                  <div>
                    <table>
                      <tr>
                        <td colspan="2">
                          <a href="#" class="adGoodsTitle">비트코인 실물</a>
                        </td>
                      </tr>
                      <tr>
                        <td>현재가</td>
                        <td>100,000,000원</td>
                      </tr>
                      <tr>
                        <td>입찰자</td>
                        <td>2,201,507명</td>
                      </tr>
                      <tr>
                        <td>경매기간</td>
                        <td>2024-08-22 23:00</td>
                      </tr>
                    </table>
                  </div>
                </div>
                <div class="prevNextButtonArea"></div>
              </div>
              <div class="slide">
                <div class="prevNextButtonArea"></div>
                <div class="adContentArea">
                  <div>
                    <button>
                      <img src="../resource/다운로드.png" alt="슈프림벽돌" />
                    </button>
                  </div>
                  <div>
                    <table>
                      <tr>
                        <td colspan="2">
                          <a href="#" class="adGoodsTitle">슈프림 벽돌</a>
                        </td>
                      </tr>
                      <tr>
                        <td>현재가</td>
                        <td>100,000,000원</td>
                      </tr>
                      <tr>
                        <td>입찰자</td>
                        <td>2,201,507명</td>
                      </tr>
                      <tr>
                        <td>경매기간</td>
                        <td>2024-08-22 23:00</td>
                      </tr>
                    </table>
                  </div>
                </div>
                <div class="adContentArea">
                  <div>
                    <button>
                      <img src="../resource/다이아_박힌_헬로키티.png" alt="헬로키티" />
                    </button>
                  </div>
                  <div>
                    <table>
                      <tr>
                        <td colspan="2">
                          <a href="#" class="adGoodsTitle">다이아로 만든 헬로키티</a>
                        </td>
                      </tr>
                      <tr>
                        <td>현재가</td>
                        <td>100,000,000원</td>
                      </tr>
                      <tr>
                        <td>입찰자</td>
                        <td>2,201,507명</td>
                      </tr>
                      <tr>
                        <td>경매기간</td>
                        <td>2024-08-22 23:00</td>
                      </tr>
                    </table>
                  </div>
                </div>
                <div class="prevNextButtonArea"></div>
              </div>
            </div>
            <button class="prev" onclick="moveSlide(-1)">&#10094;</button>
            <button class="next" onclick="moveSlide(1)">&#10095;</button>
          </div>
        </div>
        <div class="main-GoodsTextArea">
          현재 상품
        </div>
        <div style="height: 45px"></div>
        <button class="goods1span3 goodsArea">
          <div class="goodsImg" style="background-image: url('../resource/뉴발란스327_43만원.png');"></div>
          <div>
            <table class="goodsInfoTable">
              <tr>
                <td colspan="2">
                  뉴발란스 327
                </td>
              </tr>
              <tr>
                <td>
                  현재가
                </td>
                <td>
                  430,000원
                </td>
              </tr>
              <tr>
                <td>
                  입찰자수
                </td>
                <td>15명</td>
              </tr>
              <tr>
                <td>
                  경매기간
                </td>
                <td>2024-12-30</td>
              </tr>
            </table>
          </div>
        </button>
        <button class="goods4span3 goodsArea">
          <div class="goodsImg" style="background-image: url('../resource/위아이스txt와차_500만원.png');"></div>
          <div>
            <table class="goodsInfoTable">
              <tr>
                <td colspan="2">
                  9천리 자전거
                </td>
              </tr>
              <tr>
                <td>
                  현재가
                </td>
                <td>
                  5,000,000원
                </td>
              </tr>
              <tr>
                <td>
                  입찰자수
                </td>
                <td>5명</td>
              </tr>
              <tr>
                <td>
                  경매기간
                </td>
                <td>2024-11-29</td>
              </tr>
            </table>
          </div>
        </button>
        <button class="goods7span3 goodsArea">
          <div class="goodsImg" style="
                background-image: url('../resource/조건웅실착셔츠_59만.png');"></div>
          <div>
            <table class="goodsInfoTable">
              <tr>
                <td colspan="2">
                  조건웅 실착 셔츠
                </td>
              </tr>
              <tr>
                <td>
                  현재가
                </td>
                <td>
                  590,000원
                </td>
              </tr>
              <tr>
                <td>
                  입찰자수
                </td>
                <td>14명</td>
              </tr>
              <tr>
                <td>
                  경매기간
                </td>
                <td>2024-10-28</td>
              </tr>
            </table>
          </div>
        </button>
        <button class="goods10span3 goodsArea">
          <div class="goodsImg" style="background-image: url('../resource/제네시스DH_1천7백만.png');"></div>
          <div>
            <table class="goodsInfoTable">
              <tr>
                <td colspan="2">
                  제네시스 DH
                </td>
              </tr>
              <tr>
                <td>
                  현재가
                </td>
                <td>
                  17,000,000원
                </td>
              </tr>
              <tr>
                <td>
                  입찰자수
                </td>
                <td>4명</td>
              </tr>
              <tr>
                <td>
                  경매기간
                </td>
                <td>2024-09-27</td>
              </tr>
            </table>
          </div>
        </button>
        <button class="goods1span3 goodsArea">
          <div class="goodsImg" style="background-image: url('../resource/타이틀리스트_62만원.png');"></div>
          <div>
            <table class="goodsInfoTable">
              <tr>
                <td colspan="2">
                  타이틀리스트
                </td>
              </tr>
              <tr>
                <td>
                  현재가
                </td>
                <td>
                  620,000원
                </td>
              </tr>
              <tr>
                <td>
                  입찰자수
                </td>
                <td>13명</td>
              </tr>
              <tr>
                <td>
                  경매기간
                </td>
                <td>2024-08-26</td>
              </tr>
            </table>
          </div>
        </button>
        <button class="goods4span3 goodsArea">
          <div class="goodsImg" style="background-image: url('../resource/Cp컴퍼니패딩_62만원.png');"></div>
          <div>
            <table class="goodsInfoTable">
              <tr>
                <td colspan="2">
                  씨피 컴퍼니 패딩
                </td>
              </tr>
              <tr>
                <td>
                  현재가
                </td>
                <td>
                  680,000원
                </td>
              </tr>
              <tr>
                <td>
                  입찰자수
                </td>
                <td>3명</td>
              </tr>
              <tr>
                <td>
                  경매기간
                </td>
                <td>2024-07-25</td>
              </tr>
            </table>
          </div>
        </button>
        <button class="goods7span3 goodsArea">
          <div class="goodsImg" style="background-image: url('../resource/소니a6400_110만원.png');"></div>
          <div>
            <table class="goodsInfoTable">
              <tr>
                <td colspan="2">
                  소니 a6400
                </td>
              </tr>
              <tr>
                <td>
                  현재가
                </td>
                <td>
                  1,100,000원
                </td>
              </tr>
              <tr>
                <td>
                  입찰자수
                </td>
                <td>22명</td>
              </tr>
              <tr>
                <td>
                  경매기간
                </td>
                <td>2024-06-24</td>
              </tr>
            </table>
          </div>
        </button>
        <button class="goods10span3 goodsArea">
          <div class="goodsImg" style="background-image: url('../resource/원피스피규어모음_100만원.png');"></div>
          <div>
            <table class="goodsInfoTable">
              <tr>
                <td colspan="2">
                  원피스 피규어 모음
                </td>
              </tr>
              <tr>
                <td>
                  현재가
                </td>
                <td>
                  1,000,000원
                </td>
              </tr>
              <tr>
                <td>
                  입찰자수
                </td>
                <td>11명</td>
              </tr>
              <tr>
                <td>
                  경매기간
                </td>
                <td>2024-05-23</td>
              </tr>
            </table>
          </div>
        </button>
        <button class="goods1span3 goodsArea">
          <div class="goodsImg" style="background-image: url('../resource/일레트릭기타_25만원.PNG');"></div>
          <div>
            <table class="goodsInfoTable">
              <tr>
                <td colspan="2">
                  스콰이어 일렉기타
                </td>
              </tr>
              <tr>
                <td>
                  현재가
                </td>
                <td>
                  250,000원
                </td>
              </tr>
              <tr>
                <td>
                  입찰자수
                </td>
                <td>25명</td>
              </tr>
              <tr>
                <td>
                  경매기간
                </td>
                <td>2024-04-22</td>
              </tr>
            </table>
          </div>
        </button>
        <button class="goods4span3 goodsArea">
          <div class="goodsImg" style="background-image: url('../resource/디올빈티지펜던트_50만원.png');"></div>
          <div>
            <table class="goodsInfoTable">
              <tr>
                <td colspan="2">
                  디올 빈티지 펜던트
                </td>
              </tr>
              <tr>
                <td>
                  현재가
                </td>
                <td>
                  500,000원
                </td>
              </tr>
              <tr>
                <td>
                  입찰자수
                </td>
                <td>23명</td>
              </tr>
              <tr>
                <td>
                  경매기간
                </td>
                <td>2024-03-21</td>
              </tr>
            </table>
          </div>
        </button>
        <button class="goods7span3 goodsArea">
          <div class="goodsImg" style="background-image: url('../resource/엔틱빈티지가구_68만원.png');"></div>
          <div>
            <table class="goodsInfoTable">
              <tr>
                <td colspan="2">
                  엔틱 빈티지 가구
                </td>
              </tr>
              <tr>
                <td>
                  현재가
                </td>
                <td>
                  570,000원
                </td>
              </tr>
              <tr>
                <td>
                  입찰자수
                </td>
                <td>1명</td>
              </tr>
              <tr>
                <td>
                  경매기간
                </td>
                <td>2024-02-20</td>
              </tr>
            </table>
          </div>
        </button>
        <button class="goods10span3 goodsArea">
          <div class="goodsImg" style="background-image: url('../resource/불가비골든링_100만원.png');"></div>
          <div>
            <table class="goodsInfoTable">
              <tr>
                <td colspan="2">
                  불가비 골든링
                </td>
              </tr>
              <tr>
                <td>
                  현재가
                </td>
                <td>
                  1,000,000원
                </td>
              </tr>
              <tr>
                <td>
                  입찰자수
                </td>
                <td>29명</td>
              </tr>
              <tr>
                <td>
                  경매기간
                </td>
                <td>2024-01-19</td>
              </tr>
            </table>
          </div>
        </button>
      </main>
      <%@ include file="footer.jsp" %>
    </div>
    <div>우측 빈 공간</div>
  </div>

  <script>
    let currentSlide = 0;

    function moveSlide(step) {
      const slides = document.getElementById("slides");
      const totalSlides = slides.children.length;
      currentSlide = (currentSlide + step + totalSlides) % totalSlides;
      slides.style.transform = "translateX(-" + currentSlide * 100 + "%)";
    }
  </script>
</body>
</html>