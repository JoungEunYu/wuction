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
 * Servlet implementation class UpdateMemberController
 */
@WebServlet("/update.me")
public class UpdateMemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateMemberController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String memPwd = request.getParameter("memPwd");
			
		
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		
		if (loginUser.getMemPwd().equals(memPwd)) {
			// ...
			
			String name = request.getParameter("name");
			String birthDate = request.getParameter("birthDate");

			loginUser.setName(name);
			loginUser.setBirthDate(birthDate);
			
			Member updateMem = new MemberServiceImpl().updateMember(loginUser);
			
			if(updateMem == null) {
				request.setAttribute("errorMsg", "정보 수정을 실패했습니다.");
				request.getRequestDispatcher("WEB-INF/views/common/errorPage.jsp").forward(request, response);
			}else {
				// 세션 영역에 수정된 사용자 정보를 저장
				HttpSession session = request.getSession();
				
				session.setAttribute("alertMsg", "정보 수정에 성공하였습니다.");
				session.setAttribute("loginUser", updateMem);
				
				response.sendRedirect(request.getContextPath() + "/myPage.me");
			}
			
			
		} else {
			request.setAttribute("errorMsg", "비밀번호를 잘못 입력하셨습니다.");
			request.getRequestDispatcher("WEB-INF/views/common/errorPage.jsp").forward(request, response);
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
