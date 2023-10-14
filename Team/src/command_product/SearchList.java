package command_product;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import common.CommonExcute;
import dao.ProductDao;
import dto.ProductDto;

public class SearchList implements CommonExcute {

	@Override
	public void execute(HttpServletRequest request) {
		String search = request.getParameter("t_search");
		ProductDao dao = new ProductDao();
		ArrayList<ProductDto> arr = dao.getSearchList(search);
		
		request.setAttribute("t_arr", arr);
		request.setAttribute("t_search", search);
		
	}

}
