<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <style>
            table {
                padding-top: 20px;
                text-align: center;
                margin: auto;
                border-spacing: 10px;
            }

            .shortInput {
                width: 210px;
                height: 40px;
                border-radius: 10px;
            }

            .input {
                width: 326px;
                height: 40px;
                border-radius: 10px;
            }

            .blackBtn {
                width: 95px;
                height: 45px;
                margin-left: 20px;
                color: white;
                background-color: black;
                border: none;
                border-radius: 10px;
            }

            .right {
                text-align: right;
                font-size: 15px;
            }

            .authBtn {
                height: 25px;
                width: 153px;
                border-radius: 10px;
                background-color: white;
                font-size: 12px;
            }

            .authBtn:first-child {
                margin-right: 24px;
            }

            #signup-btn {
                width: 100%;
                height: 50px;
                background-color: #ff6c6c;
                color: white;
                font-size: 15px;
                border: none;
                border-radius: 0px;
                cursor: pointer;
            }

            #input-container {
                border-width: 1px;
                width: 210px;
                height: 40px;
                display: flex;
                align-items: center;
            }

            .same-input {
                width: 60px;
                margin: 0;
                margin-top: 5px;
                border-radius: 0px;
                font-size: 14px;
                color: #909090;
                height: 38px;
                background-color: white;
                border-color: black;

            }

            .auth-agree {
                border: 1px solid black;
                width: 326px;
                height: 40px;
                border-radius: 10px;
                line-height: 40px;
                text-align: left;
            }

            input[type="checkbox"] {
                display: none;
            }

            input[type="checkbox"]+label {
                display: inline-block;
                width: 15px;
                height: 15px;
                border: 1px solid #707070;
                border-radius: 50%;
                position: relative;
                margin-top: 3px;
                margin-bottom: 3px;
                color: #909090;
            }

            input[id="remember"]:checked+label::after {
                content: '✔';
                position: absolute;
                font-size: 11px;
                width: 15px;
                height: 15px;
                border-radius: 50%;
                background-color: #1dd200;
                color: white;
                line-height: 15px;
                left: 0;
            }

            #auth-check {
                display: flex;
                align-items: center;

            }

            #signup-text {
                font-size: 20px;
                font-weight: bold;
            }

            .password-text {
                vertical-align: super;
            }

            #input-container>input:first-child {
                border-right: none;
                width: 105px;
                padding-left: 10px;
                border-top-left-radius: 10px;
                border-bottom-left-radius: 10px;
            }

            #input-container>input:nth-child(2) {
                border-left: none;
                width: 94px;
                text-align: right;
                padding-right: 10px;
                border-top-right-radius: 10px;
                border-bottom-right-radius: 10px;
            }
        </style>
    </head>

    <body>

        <% String contextPath=(String)request.getContextPath(); %>
            <form action="<%= contextPath %>/insert.me" method="post">
                <table style="width: 626px;">
                    <tr>
                        <th style="width: 150px;"></th>
                        <th style="width: 326px;"><img src="../resource/Group38.png" alt=""></th>
                        <th style="width: 150px;"></th>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <text id="signup-text">회원가입</text>
                        </td>

                    </tr>
                    <tr>
                        <td class="right">
                            <label for="" class="text">아이디</label>
                        </td>
                        <td>
                            <input type="text" name="userId" class="shortInput"><button class="blackBtn">중복체크</button>
                        </td>

                    </tr>
                    <tr>
                        <td class="right"><label for="" class="text">비밀번호</label></td>
                        <td><input type="password" name="userPwd" class="input">
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <div style="font-size: 12px; text-align: left;">8 ~ 12자리의 비밀번호를 입력해주세요.</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="right"><label for="password" class="text">비밀번호 확인</label></td>
                        <td><input type="password" name="userPwdCheck" class="input"><br>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <div style="font-size: 12px; text-align: left; color: #ff0000;">동일한 비밀번호를 입력해주세요.</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="right"><label for="" class="text">이름</label></td>
                        <td><input type="text" name="userName" class="input"></td>

                    </tr>
                    <tr>
                        <td class="right"><label for="" class="text">생년월일 8자리</label></td>
                        <td><input type="text" name="userBirth" class="input"></td>

                    </tr>
                    <tr>
                        <td class="right"><label for="" class="text">배송지</label></td>
                        <td>
                            <input type="text" name="userPostcode" id="postcode" class="shortInput"
                                placeholder="우편번호"><button class="blackBtn"
                                onclick="execDaumPostcode(); return false;">우편번호</button>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="text" name="userAddress" class="input" placeholder="주소" id="address"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="text" name="userAddressDetail" class="input" placeholder="상세 주소"
                                id="detailAddress"></td>
                    </tr>
                    <tr>
                        <td class="right"><label for="" class="text">이메일</label></td>
                        <td><input type="text" name="userEmail" class="input"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><button class="authBtn">인증 번호 전송</button><button class="authBtn">재전송</button></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <div style="display: flex; justify-content: space-between;">
                                <div id="input-container">
                                    <input type="text" name="authNum" id="input1" class="same-input" placeholder="인증 번호">
                                    <input type="text" id="input2" class="same-input" placeholder="남은시간" disabled>
                                </div>
                                <button class="blackBtn">인증</button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <div id="auth-check"
                                style="border: 1px solid; width: 326px;height: 40px; border-radius: 10px; margin-top: 30px;">
                                &nbsp;&nbsp;&nbsp;<input type="checkbox" id="remember">
                                <label for="remember"></label><text
                                    style="line-height: 100%; color: #ff0000;">&nbsp;&nbsp;&nbsp;인증 약관 동의</text>

                                <div style="display: inline-block;"><span></span></div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><button id="signup-btn">회원가입</button></td>
                    </tr>
                </table>
            </form>
            <script>
                function execDaumPostcode() {
                    new daum.Postcode({
                        oncomplete: function (data) {
                            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                            var addr = ''; // 주소 변수
                            var extraAddr = ''; // 참고항목 변수

                            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                                addr = data.roadAddress;
                            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                                addr = data.jibunAddress;
                            }

                            // 우편번호와 주소 정보를 해당 필드에 넣는다.
                            document.getElementById('postcode').value = data.zonecode;
                            document.getElementById("address").value = addr;
                            // 커서를 상세주소 필드로 이동한다.
                            document.getElementById("detailAddress").focus();
                        }
                    }).open();
                }
            </script>
    </body>

    </html>