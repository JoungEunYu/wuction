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
	    margin-top: 200px;
	    width: 326px;
	}
	#btn{
	    width: 326px;
	    height: 50px;
	    background-color: #ff6c6c;
	    color: white;
	    font-size: 16px;
	    border: none;
	    border-radius: 0px;  
	}
	.input1{
	    width: 320px;
	    height: 50px;
	    border-top-left-radius: 10px;
	    border-top-right-radius: 10px;
	    text-align: center;
	    border-bottom: none;
	    border-width: 1px;
	}
	.input2{
	    width: 320px;
	    height: 50px;
	    border-bottom-left-radius: 10px;
	    border-bottom-right-radius: 10px;
	    text-align: center;
	    border-width: 1px;
	}
	#logo{
	    width: 288px;
	    height: 151px;
	}
	#idCheck{
	    text-align: left;
	    
	}
	a{
	    text-decoration: none;
	    color: #909090;
	    margin: 10px;
	}
	
	
	#idSave {
	    display: flex;
	    align-items: end;
	}
	input[type="checkbox"]{
	    display: none;
	}
	
	input[type="checkbox"] + label{
	    display: inline-block;
	    width: 15px;
	    height: 15px;
	    border:1px solid #707070;
	    border-radius: 50%;
	    position: relative;
	    margin-top: 10px;
	}
	
	input[id="remember"]:checked + label::after{
	    content:'✔';
	    font-size: 11px;
	    width: 15px;
	    height: 15px;
	    position: absolute;
	    border-radius: 50%;
	    background-color: #ffffff;
	    line-height: 15px;
	    text-align: center;
	}
	#id-none {
	    display: flex;
	    margin-left: 75px;
	    color: #d30000;
	    font-size: 14px;
	}
        
        
</style>
</head>
<body>
    <table>
        <tr>
            <th><img src="resource/images/wuctionLogo.png" alt=""></th>
        </tr>
        <tr>
            <td>
                <input class="input1" type="text"> <br>
                <input class="input2" type="password">
                <div id="idCheck">
                    <div id="idSave">
                        <input type="checkbox" name="remember" id="remember">
                        <label for="remember"></label> &nbsp;<text>아이디 저장</text><text id="id-none">계정 정보가 없습니다.</text>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <button id="btn">로그인</button>
            </td>
        </tr>
        <tr>
            <td>
                <a href="">아이디 찾기</a>
                <a href="">비밀번호 찾기</a>
                <a href="">회원가입</a>
            </td>
        </tr>
    </table>
</body>
</html>