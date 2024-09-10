<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	table {
	    margin: auto;
	    margin-top:120px;
	    width: 326px;
	    text-align: center;
	    border-spacing: 10px;
	    font-size: 14px;
	}
	
	#id-find-btn {
	    width: 100%;
	    height: 50px;
	    background-color: #ff6c6c;
	    color: white;
	    font-size: 15px;
	    border: none;
	    border-radius: 0px;
	    margin-top: 90px;
	}
	
	#find-text {
	    font-size: 20px;
	    font-weight: bold;
	}
	
	#email {
	    height: 40px;
	    width: 326px;
	    border-radius: 10px;
	    text-indent: 15px;
	}
	
	#input-container {
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
	
	.blackBtn {
	    width: 65px;
	    height: 45px;
	    border-radius: 10px;
	    background-color: black;
	    color: white;
	    border: none;
	    cursor: pointer;
	}
	
	#input1 {
	    border-right: none;
	    width: 135px;
	    padding-left: 10px;
	    border-top-left-radius: 10px;
	    border-bottom-left-radius: 10px;
	}
	#input2{
	    border-left: none;
	    width: 94px;
	    text-align: right;
	    padding-right:10px;
	    border-top-right-radius: 10px;
	    border-bottom-right-radius: 10px;
	    font-size: 14px;
	    color: #909090;
	    height: 38px;
	    background-color: white;
	    border-color: black;
	}
	.auth-btn {
	    height: 40px;
	    width: 153px;
	    border-radius: 10px;
	    background-color: white;
	    font-size: 14px;
	    font-weight: 600;
	}
	
	.auth-btn:first-child {
	    margin-right: 28px;
	}
	#your-id2{
	    margin-left: 100px;
	    font-weight: 600;
	}
	#your-id-container{
	    border: 1px solid black;
	    height: 40px;
	    line-height: 40px;
	    border-radius: 10px;
	}

</style>
</head>
<body>
	<% 
		String contextPath = request.getContextPath();
	%>
    <table>
        <tr>
            <th><img src="../resource/Group38.png" alt="" style="margin-bottom: 50px;"></th>
        </tr>
        <tr>
            <td id="find-text">아이디 찾기</td>
        </tr>
        <tr>
            <td><input id="email" type="text" placeholder="이메일"></td>
        </tr>
        <tr>
            <td><button class="auth-btn">인증 번호 전송</button><button class="auth-btn">재전송</button></td>
        </tr>
        <tr>
            <td>
                <div style="display: flex; justify-content: space-between;">
                    <div id="input-container">
                        <input type="text" id="input1" class="same-input" placeholder="인증 번호">
                        <input type="text" id="input2" class="same-input" placeholder="남은시간">
                    </div>
                    <button class="blackBtn">인증</button>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div id="your-id-container">
                    <text id="your-id1">당신의 아이디</text><text id="your-id2">wjddmsdb113</text>
                </div>
            </td>
        </tr>
        <tr>
            <td><form action="<%= contextPath %>/loginPage.me"><button id="id-find-btn" type="submit">로그인 하기</button></form></td>
        </tr>
    </table>
</body>
</html>