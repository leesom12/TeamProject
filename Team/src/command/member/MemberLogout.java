package command.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import common.CommonExcute;

public class MemberLogout implements CommonExcute {

	@Override
	public void execute(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String sessionName= (String)session.getAttribute("sessionName");
		if(sessionName == null){
			sessionName="";
		}else{
			sessionName= sessionName+"님";
		}
		session.invalidate();
		
		String msg= sessionName+" 로그아웃 되었습니다";
		request.setAttribute("t_msg", msg);
		request.setAttribute("t_url", "index.jsp");

	}

}
