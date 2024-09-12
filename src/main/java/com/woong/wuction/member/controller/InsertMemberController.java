package com.woong.wuction.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.woong.wuction.member.model.vo.Member;
import com.woong.wuction.member.service.MemberServiceImpl;

/**
 * Servlet implementation class InsertMemberController
 */
@WebServlet("/insert.me")
public class InsertMemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertMemberController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("userId");
		String pw = request.getParameter("userPwd");
		String name = request.getParameter("userName");
		String birth = request.getParameter("userBirth");
		String postCode = request.getParameter("userPostcode");
		String address = request.getParameter("userAddress");
		String adDetail = request.getParameter("userAddressDetail");
		String email = request.getParameter("userEmail");
		
		String fullAddress = address + "/" + adDetail;

		Member m = new Member(id, pw, name, birth, postCode, fullAddress, email);
		System.out.println(m.toString());
		int result = new MemberServiceImpl().insertMember(m);
		
		if(result > 0) {
			HttpSession session = request.getSession();
			session.setAttribute("alertMsg", "회원가입 성공입니다.");
			
			response.sendRedirect(request.getContextPath());
		} else {
			request.setAttribute("errorMsg", "회원가입에 실패했습니다.");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}
	}
		
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
