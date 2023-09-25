<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../common_header.jsp" %>

<script type="text/javascript">

	function memberLogin(){
		if(checkValue(memLogin.t_id,"ID를 입력하세요"))return;
		if(checkValue(memLogin.t_pw,"비밀번호를 입력하세요"))return;
		
		memLogin.t_gubun.value="login";
		memLogin.method="post";
		memLogin.action="MemberController";
		memLogin.submit();
	}
</script>

                    <div class="right">
                        <ul class="right_list">
                            <li><a href="">중고악기</a></li>
                            <li><a href="">중고악기</a></li>
                            <li><a href="">중고악기</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="header_bottom">
               
            </div>
        </div>
    </header>
    <!-- 헤더 -->
<main>
    <h2>Login</h2>
    <div class="content">
        <div class="login_wrap">
            <form name="memLogin">
            <input type="hidden" name="t_gubun">
               <div class="login_panel">
                    <div class="login_panel_input">
                        <input type="text" name="t_id" placeholder="아이디" class="login_input">
                    </div>
                    <div class="login_panel_input">
                        <input type="password" name="t_pw" placeholder="비밀번호" class="login_input">
                    </div>
                    <div>
                        <input type="checkbox" class="checkbox">로그인 상태 유지
                        
                    </div>
                    <div>
                        <button type="submit" onclick="javascript:memberLogin()" class="btn">로그인</button>
                    </div>
               </div>
            </form>
        </div>
    </div>
    <div class="find">
        <a href="">아이디 찾기</a>
        <a href="">비밀번호 찾기</a>
        <a href="">회원가입</a>
    </div>

</main>

 <%@ include file="../common_footer.jsp" %>
</body>
</html>