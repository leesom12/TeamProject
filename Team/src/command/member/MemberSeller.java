package command.member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import common.CommonExcute;
import dao.MemberDao;
import dto.MemberDto;

public class MemberSeller implements CommonExcute {

	@Override
	public void execute(HttpServletRequest request) {
		MemberDao dao  = new MemberDao();
		
		String id = request.getParameter("t_id");
		
		MemberDto dto = dao.getSellerView(id);
		
		int count = dao.getSangpumsu(id);
		
		request.setAttribute("t_dto", dto);
		request.setAttribute("t_count", count);
		
	}

}
