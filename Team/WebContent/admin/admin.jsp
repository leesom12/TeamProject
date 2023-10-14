<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>        
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Team Project</title>
    <link rel="stylesheet" href="css/Index.css">
</head>
<script>
	function goGumsu(){
		gum.method="post";
		gum.action="AdminController";
		gum.submit();
	}
	function goIndex(){
		mem.method="post";
		mem.action="Index";
		mem.submit();
	}
</script>
<body>
    <!-- 헤더 -->
    <header>
        <div class="header fixed">
            <div class="header_top">
                <div class="top_in">
                    <ul class="top_list">
                        <li><a href="">고객센터</a></li>
                        <li><a href="">마이페이지</a></li>
                        <li><a href="">로그인</a></li>
                        <li><a href="">회원가입</a></li>
                    </ul>
                </div>
            </div>
            <div class="header_main">
                <div class="main_in">
                    <div class="logo">
                       <a href="javascript:goIndex()"><img src="image/logo.png" style="width: 140px; height: 50px;"></a>
                    </div>
                    <div class="center"></div>
                    <div class="right">
                        <ul class="right_list">
                            <li><a href="">중고악기</a></li>
                            <li><a href="">중고악기</a></li>
                            <li><a href="">중고악기</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- 헤더 -->

    <!-- 메뉴 -->
    <div class="main">
        <div class="main_left">
            <div class="common_menu sticky_box">
                <div class="link_title">ADMIN</div>
                <div class="link"><a href="">검수목록</a></div>
                <div class="link"><a href="">판매현황</a></div>
                <div class="link"><a href="">메뉴</a></div>
            </div>
        </div>
    <!-- 메뉴 (밑에 div class="main_right"까지 가져가셔야 작동됩니다. main_right 안에 본인이 맡은 메인 구성 넣으시면 됩니다.)-->

        <div class="main_right">

            <div class="main_title">검수 목록</div>
			<c:forEach items="${t_productlist}" var="dto">
			<form name="gum">
			<input type="hidden" name="t_gubun" value="gumsu">
			<input type="hidden" name="p_no" value="${dto.getP_no()}">
            <div class="list">
                <div class="admin_list">
                    <div class="product_picture">
                    	<img src="attach/${dto.getAttach()}" style="width: 120px; height: 130px;">
                    </div>
                    <div class="product_explain">
                        <div class="product_number">${dto.getP_no()}</div>
                        <div class="product_name">판매자</div>
                        <div class="product_name">${dto.getP_name()}</div>
                    </div>
                    <div class="product_price">${dto.getPrice()}원</div>
                    <div class="product_regDate">${dto.getReg_date()}</div>
                    <c:choose>
                    <c:when test="${dto.getGumsu() eq 'n'}">
                    <div class="product_state2"> <button class="stateButton" onClick="goGumsu()">검수하기</button> </div>
                    </c:when>
                    <c:otherwise>
                    	<div class="product_state">완료</div>
                    </c:otherwise>
                    </c:choose>
                    
                </div>
            </div>
            </form>
			</c:forEach>
           

        </div>

    </div>



    <!-- 푸터 -->

    <div class="line"></div>
    <div class="footer line">
        <div class="footer_top">
            <div class="footer_b">
                <div style="width: 50%;">
                    <p id="footer_title">이용안내</p>
                    <p id="d">검수기준</p>
                    <p id="d">이용정책</p>
                    <p id="d">패널티 정책</p>
                    <p id="d">커뮤니티 가이드 라인</p>
                </div>
                <div style="width: 50%;">
                    <p id="footer_title">고객지원</p>
                    <p id="d">공지사항</p>
                    <p id="d">서비스 소개</p>
                    <p id="d">스토어 안내</p>
                </div>
            </div>
            <div class="footer_a">
                <p id="a">고객센터 1600-8888</p>
                <p id="b">운영시간 평일 09:00 - 18:00 (토∙일, 공휴일 휴무) </p>
                <p id="b">점심시간 평일 13:00 - 14:00</p>
                <a href=""><div id="b"> 카톡상담: 09:00~20:00</div></a>
                <a href=""><div id="b"> 이메일 문의 </div></a>
            </div>
        </div>
        <div class="line"></div>
        <div class="footer_c">
            <div class="footer_in">
                <ul class="footer_list">
                    <li><a href="">회사소개</a></li>
                    <li><a href="">이용약관</a></li>
                    <li><a href="">개인정보 처리방침</a></li>
                </ul>
            </div>

            <p>(주)버킷플레이스 | 대표이사 이승재 </p>
            <p>서울 서초구 서초대로74길 4 삼성생명서초타워 25층, 27층 | contact@bucketplace.net | 사업자등록번호 119-86-91245 사업자정보확인 | 통신판매업신고번호 제2018-서울서초-0580호</p>
            <p>(주)버킷플레이스는 통신판매중개자로 거래 당사자가 아니므로, 판매자가 등록한 상품정보 및 거래 등에 대해 책임을 지지 않습니다. 단, (주)버킷플레이스가 판매자로 등록 판매한 상품은 판매자로서 책임을 부담합니다.</p>
            <p>Copyright 2014. bucketplace, Co., Ltd. All rights reserved.</p>
        </div>
    </div>
    <!-- 푸터 -->
</body>
</html>