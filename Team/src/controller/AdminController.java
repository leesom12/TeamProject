package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminDao;
import dto.AdminDto;

/**
 * Servlet implementation class AdminController
 */
@WebServlet("/AdminController")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		AdminDao dao = new AdminDao();
		String gubun = request.getParameter("t_gubun");
		if(gubun == null) gubun="myPage";
		String viewPage="";
		
		if(gubun.equals("myPage")) {
			ArrayList<AdminDto> productlist = dao.getProductList();
			request.setAttribute("t_productlist", productlist);
			viewPage = "admin/admin.jsp";
			
		}else if(gubun.equals("gumsu")) {
			String p_no = request.getParameter("p_no");
			int result = dao.getGumsu(p_no);
			
			String msg = "검수실패!";
			if(result == 1) msg = "검수완료!";
			
			request.setAttribute("t_msg", msg);
			request.setAttribute("t_url", "Index");
			
			viewPage = "common_alert.jsp";
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(viewPage);
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
