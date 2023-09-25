<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../common_header.jsp" %>
<script type="text/javascript">
	
	function memberJoin(){ 
		if(checkValue(memJoin.t_id,"ID를 입력하세요"))return;
		if(checkValue(memJoin.t_pw,"비밀번호를 입력하세요"))return;
		if(checkValue(memJoin.t_pw_ch,"비밀번호 확인을 입력하세요"))return;
		if(memJoin.t_pw.value != memJoin.t_pw_ch.value){
			alert("비밀번호 확인이 일치하지 않습니다");
			memJoin.t_pw_ch.value="";
			memJoin.t_pw_ch.focus();
			return;
		}
		if(checkValue(memJoin.t_name,"이름을 입력하세요"))return;
		if(checkValue(memJoin.t_address,"주소를 입력하세요"))return;
		if(checkValue(memJoin.t_tell,"휴대폰 번호를 입력하세요"))return;
		
		memJoin.t_gubun.value="memberSave";
		memJoin.method="post";
		memJoin.action="MemberController";
		memJoin.submit();
	}
		
</script>
    <!-- 헤더 -->

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
    <h2>Join</h2>
    
    <div class="content">
        <div class="login_wrap">
            
               <div class="login_panel">
               	<form name="memJoin">
               	<input type="hidden" name="t_gubun">
                    <div class="login_panel_input">
                        <input type="text" name="t_id" placeholder="아이디" class="login_input">
                    </div>
                    <div class="login_panel_input">
                        <input type="password" name="t_pw" placeholder="비밀번호" class="login_input">
                    </div>
                    <div class="login_panel_input">
                        <input type="password" name="t_pw_ch" placeholder="비밀번호확인" class="login_input">
                    </div>
                    <div class="login_panel_input">
                        <input type="text" name="t_name" placeholder="이름" class="login_input">
                    </div>
                    <div class="login_panel_input">
                        <input type="text" name="t_address" placeholder="주소" class="login_input">
                    </div>
                    <div class="login_panel_input">
                        <input type="text" name="t_tell" placeholder="휴대폰 번호( '-' 없이 숫자만 입력해 주세요)" class="login_input">
                    </div>
                </form>
                    <div>
                        <button type="button" onclick="memberJoin()" class="btn">회원가입</button>
                    </div>
               </div>
            
        </div>
    </div>
    

</main>

 <%@ include file="../common_footer.jsp" %>
</body>
</html>