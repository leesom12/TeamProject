<%@ page pageEncoding="UTF-8"%>
<% 
	String sessionName = (String)session.getAttribute("sessionName");
%>

<!DOCTYPE html>
<html lang="kor">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Team Project</title>
    <link rel="stylesheet" href="css/Index.css">
    <link rel="stylesheet" href="css/search.css">
    <script type="text/javascript" src="js/jquery-1.8.1.min.js"></script>
	<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript">
	function goMemberPage(gubun){
		mem.t_gubun.value = gubun;
		mem.method="post";
		mem.action="MemberController";
		mem.submit();
	}
	function goUpload(gubun){
		mem.t_gubun.value = gubun;
		mem.method="post";
		mem.action="ProductController";
		mem.submit();
	}
	function goIndex(){
		mem.method="post";
		mem.action="Index";
		mem.submit();
	}
	function goMypage(gubun){
		mem.t_gubun.value = gubun;
		mem.method="post";
		mem.action="AdminController";
		mem.submit();
	}
</script>
    
</head>

<body>
<form name="mem">
	<input type="hidden" name="t_gubun">
</form>
    <!-- 헤더 -->
    <header>
        <div class="header fixed">
            <div class="header_top">
                <div class="top_in">
                    <ul class="top_list">
                        <li><a href="">고객센터</a></li>
                        <%if(sessionName == null) {%>
                        	<li><a href="javascript:goMemberPage('memberLogin')">로그인</a></li>
                        	<li><a href="javascript:goMemberPage('memberJoin')">회원가입</a></li>
                        <%} else{%>
                       		 <li><a href="javascript:goMypage('myPage')">마이페이지</a></li>
                       		 <li><a href="javascript:goUpload('uploadForm')">상품등록</a></li>
                       		 <li><a href="javascript:goMemberPage('memberLogout')">로그아웃</a></li>
                        <%} %>
                    </ul>
                </div>
            </div>
            <div class="header_main">
                <div class="main_in">
                    <div class="logo">
                        <a href="javascript:goIndex()"><img src="image/logo.png" style="width: 140px; height: 50px;"></a>
                    </div>
                    <div class="center"></div>