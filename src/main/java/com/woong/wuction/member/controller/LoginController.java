package com.woong.wuction.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.woong.wuction.member.model.vo.Member;
import com.woong.wuction.member.service.MemberServiceImpl;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login.me")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("userId");
		String pwd = request.getParameter("userPwd");
		String remember = request.getParameter("remember");
		
		Member m = new Member();
		m.setMemId(id);
		m.setMemPwd(pwd);
		
		Member loginUser = new MemberServiceImpl().loginMember(m);
		System.out.println("loginUser : " + loginUser);
		if(loginUser != null) {
			// 로그인 성공
			
			// 사용자 아이디를 쿠키에 저장
			if ("on".equals(remember)) {
                Cookie cookie = new Cookie("savedUserId", id);
                cookie.setMaxAge(60 * 60 * 24 * 7); // 쿠키의 유효 기간을 7일로 설정
                response.addCookie(cookie);
            } else {
                // 사용자가 아이디 저장을 체크하지 않았으면, 이전 쿠키 삭제
                Cookie cookie = new Cookie("savedUserId", null);
                cookie.setMaxAge(0); // 쿠키 삭제
                response.addCookie(cookie);
            }
			
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
			
			response.sendRedirect(request.getContextPath());
		} else {
			// 로그인 실패
			request.setAttribute("uncorrectLogin", "계정 정보가 없습니다.");
			
			request.getRequestDispatcher("WEB-INF/views/member/loginPage.jsp").forward(request, response);
		}
	}

}
