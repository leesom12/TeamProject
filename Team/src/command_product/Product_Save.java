package command_product;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import common.CommonExcute;
import common.CommonUtil;
import dao.ProductDao;
import dto.ProductDto;

public class Product_Save implements CommonExcute {

	@Override
	public void execute(HttpServletRequest request) {
		ProductDao dao = new ProductDao();
		String productDir = "C:/Users/admin/git/TeamProject/Team/WebContent/attach";
		int maxSize = 1024 * 1024 * 5;
		MultipartRequest mpr = null;
		try {
			mpr = new MultipartRequest(request, productDir, maxSize, "utf-8", new DefaultFileRenamePolicy());
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String no = dao.getMaxNo();
		String title = mpr.getParameter("title");
		String content = mpr.getParameter("contents");
		String attach = mpr.getFilesystemName("photo");
		String price = mpr.getParameter("price");
		HttpSession session = request.getSession();
		String reg_id = (String)session.getAttribute("sessionId");
		String reg_date = CommonUtil.getTodayTime();
		
		ProductDto dto = new ProductDto(no, title, reg_id, reg_date, price, "n", attach, content);
		
		int result = dao.getProductSave(dto);
		
		String msg = "등록성공!";
		if(result == 0) msg = "등록실패!";
		request.setAttribute("t_msg", msg);
		request.setAttribute("t_url", "index.jsp");
	}

}
