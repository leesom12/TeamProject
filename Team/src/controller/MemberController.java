package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.member.MemberJoin;
import command.member.MemberLogin;
import command.member.MemberLogout;
import command.member.MemberSeller;
import common.CommonExcute;

/**
 * Servlet implementation class MemberController
 */
@WebServlet("/MemberController")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String gubun = request.getParameter("t_gubun");
		if(gubun == null) gubun="memberLogin";
		String viewPage="";
		
		//회원가입 페이지 이동
		if(gubun.equals("memberJoin")) {
			viewPage="member/member_join.jsp";
		}
		//로그인 페이지 이동
		else if(gubun.equals("memberLogin")) {
			viewPage="member/member_login.jsp";
		}
		//회원가입 저장
		else if(gubun.equals("memberSave")) {
			CommonExcute ce = new MemberJoin();
			ce.execute(request);
			viewPage="common_alert.jsp";
		}
		//로그인
		else if(gubun.equals("login")) {
			CommonExcute ce= new MemberLogin();
			ce.execute(request);
			viewPage="common_alert.jsp";
		}
		//로그아웃
		else if(gubun.equals("memberLogout")) {
			CommonExcute ce= new MemberLogout();
			ce.execute(request);
			viewPage="common_alert.jsp";
		}
		//마이페이지
		else if(gubun.equals("memberPage")) {
			CommonExcute ce= new MemberSeller();
			ce.execute(request);
			viewPage = "seller/seller.jsp";
		}
		
		RequestDispatcher rd= request.getRequestDispatcher(viewPage);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
