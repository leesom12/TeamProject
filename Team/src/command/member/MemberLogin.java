package command.member;

import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import common.CommonExcute;
import dao.MemberDao;

public class MemberLogin implements CommonExcute {

	@Override
	public void execute(HttpServletRequest request) {
		MemberDao dao= new MemberDao();
		String id= request.getParameter("t_id");
		String pw= request.getParameter("t_pw");
		try {
			pw= dao.encryptSHA256(pw);
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String msg="";
		String url="";
		
		String name = dao.memberLogin(id, pw);
		if(name.equals("")) {
			msg="정확하지 않은 아이디 혹은 패스워드입니다";
			url="MemberController";
		}else {
			msg= name+"님 환영합니다!";
			
			HttpSession session = request.getSession();
			session.setAttribute("sessionName", name);
			session.setAttribute("sessionId", id);
			
			session.setMaxInactiveInterval(60*60*3);
			url="index.jsp";
		}
		
		request.setAttribute("t_msg", msg);
		request.setAttribute("t_url", url);

	}

}
