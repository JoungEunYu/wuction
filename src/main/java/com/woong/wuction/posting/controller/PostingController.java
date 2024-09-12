package com.woong.wuction.posting.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.woong.wuction.posting.model.vo.Posting;
import com.woong.wuction.posting.service.PostingServiceImpl;

/**
 * Servlet implementation class PostingServlet
 */
@WebServlet("/posting.pr")
public class PostingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostingController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int memNo = Integer.parseInt(request.getParameter("userNo"));
		String[] imgPaths = request.getParameterValues("imgPaths");
		String productName = request.getParameter("productName");
		String productInfo = request.getParameter("productInfo");
		int startPrice = Integer.parseInt(request.getParameter("startPrice"));
		int categoryNo = Integer.parseInt(request.getParameter("categoryNo"));
		String endTime = request.getParameter("endTime");
		
		
		Posting newPost = new Posting(memNo, categoryNo, productInfo, productName, endTime, startPrice);
		
		
		Posting post = new PostingServiceImpl().insertPosting(newPost);
		
		if(post != null) {
			// TODO : 이미지 테이블 생성하여 등록된 포스팅으로부터 받아온 게시글번호와 함께 이미지 경로 저장
			// 			1개 이상 무조건 등록, 최대 3개 등록 
//			for(String path : imgPaths) {
//				String currTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
//				int random = (int)(Math.random() * (99999-10000+1)) + 10000;
//				String ext = path.substring(path.lastIndexOf("."));
//				
//				String chgPath = currTime + random + ext;
//		
			
			
//				int maxSize = 10 * 1024 * 1024; 
//				HttpSession session = request.getSession();
//				String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");
//				
//				MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
						
				
				
//				
//			}
			int postingNo = post.getPostingNo();
			
			
			
			
			
			
			request.setAttribute("alertMsg", "업로드 성공");
			response.sendRedirect(request.getContextPath());
		} else {
			request.setAttribute("errorMsg", "업로드 실패");
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
