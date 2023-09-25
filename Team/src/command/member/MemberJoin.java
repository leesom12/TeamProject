package command.member;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletRequest;

import common.CommonExcute;
import common.CommonUtil;
import dao.MemberDao;
import dto.MemberDto;

public class MemberJoin implements CommonExcute {

	@Override
	public void execute(HttpServletRequest request) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		MemberDao dao = new MemberDao();
		
		String id = request.getParameter("t_id");
		String pw = request.getParameter("t_pw");
		try {
			pw = dao.encryptSHA256(pw);
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String name = request.getParameter("t_name");
		String address = request.getParameter("t_address");
		String tel = request.getParameter("t_tell");
		String reg_date = CommonUtil.getTodayTime();
		
		MemberDto dto = new MemberDto(id, name, pw, address, tel, reg_date);
		
		String msg = name+"님, 회원가입이 완료되었습니다!";
		int result = dao.saveMember(dto);
		if(result != 1) msg = "가입 실패!!";
		
		request.setAttribute("t_msg", msg);
		request.setAttribute("t_url", "MemberController");

	}

}
