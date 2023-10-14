<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>       
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/search.css">
</head>
<script>
	function goIndex(){
		mem.method="post";
		mem.action="Index";
		mem.submit();
	}
</script>
<body>
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
    <main>
        <div class="search_title">
            <div class="search_area">
                <div class="search">
                    <input type="text" value="${t_search }">
                    <a href="javascript:goSearch()" style="font-size:20px;">search</a>
                </div>
            </div>
        </div>

        <div class="content">
            <div>
                <div class="content_title">
                    <p>검색하신 상품</p>
                </div>
                <div class="product_list_wrap">
                
                    <div class="product_list">
                    <c:forEach items="${t_arr}" var="dto">
                        <div class="product">
                            <a href="ProductView.html">
                                <div class="product_item">
                                    <div class="img_box"><img src="attach/${dto.getAttach()}" style="width:280px; height:300px;"></div>
                                </div>
                            </a>
                            <div class="product_text">
                                
                                <p class="product_name">${dto.getP_name()}</p>
                                <p class="product_price">${dto.getPrice()}원</p>
                            </div>
                        </div>
                     </c:forEach>  
                      
                    </div>
                </div>
                
                
            </div>
        </div>
    </main>

    <div class="line"></div>
    <div class="footer">
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
</body>
</html>