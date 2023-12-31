package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command_product.Product_Save;
import command_product.SearchList;
import common.CommonExcute;

/**
 * Servlet implementation class ProductController
 */
@WebServlet("/ProductController")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductController() {
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
		
		//업로드 폼
		if(gubun.equals("uploadForm")) {
			viewPage = "product/upload.jsp";
			
		//업로드 세이브	
		}else if(gubun.equals("uploadSave")) {
			CommonExcute pro = new Product_Save();
			pro.execute(request);
			viewPage = "common_alert.jsp";
			
		//상품 뷰
		}else if(gubun.equals("view")) {
			viewPage = "product/product_view.jsp";
			
		//상품 구매페이지	
		}else if(gubun.equals("buy")) {
			viewPage = "product/product_pay.jsp";
			
		}else if(gubun.equals("payment")) {
			viewPage = "product/payment.jsp";
			
		}else if(gubun.equals("complete")) {
			viewPage = "product/complete.jsp";
			
		//검색	
		}else if(gubun.equals("search")) {
			CommonExcute pro = new SearchList();
			pro.execute(request);
			viewPage = "product/search.jsp";
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
