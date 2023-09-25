<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String sessionId = (String)session.getAttribute("sessionId"); %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Team Project</title>
    <link rel="stylesheet" href="../css/seller.css">
     <script type="text/javascript" src="../js/jquery-1.8.1.min.js"></script>
	<script type="text/javascript" src="../js/common.js"></script>
    <script>
    	
    		
    		
    			
    			
    			function goSangjumUpdate(){
    				if(checkValue(mem.t_sangjum_name,"상점명을 입력해 주세요")) return;
    				$.ajax({
    					type : "POST",
    					url : "SangjumUpdateController",
    					data: "t_sangjum_name="+mem.t_sangjum_name.value+"&t_sangjum_soge="+mem.t_sangjum_soge.value+"&t_id="+mem.t_id.value,
    					dataType : "text",
    					error :function(request,status,error){
    				        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
    					},
    					success : function(data){
    						alert(data);
    					
    					}
    				});				
    			}
    			
    			
    		
    		
    	
    </script>
</head>
<body>
    <!-- 헤더 -->
    <header>
        <div class="header fixed">
            <div class="header_top">
                <div class="top_in">
                    <ul class="top_list">
                        <li><a href="">고객센터</a></li>
                        <li><a href="">마이페이지</a></li>
                        <li><a href="MemberController">로그인</a></li>
                        <li><a href="">회원가입</a></li>
                    </ul>
                </div>
            </div>
            <div class="header_main">
                <div class="main_in">
                    <div class="logo">
                        <a href="">로고자리</a>
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
            <div class="header_bottom">
                
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
            <div class="view_header">
                <a href="Index.html">
                    <div class="view_home">
                         <img src="../image/home.png" width="15" height="15">
                         홈 
                    </div>
                </a>
            </div>
            <div class="seller_body">
                <div class="seller_main">
                    <div class="seller_jungbo">
                        <div class="seller_jungbo2">
                            <div class="seller_image">
                                <div class="seller_image2">
                                    <div size="310" class="seller_image3">
                                        <div class="seller_image4">
                                            <div class="seller_image5"></div>
                                        </div>
                                        <div class="seller_sangse">
                                            <img src="../image/mysell.png" class="seller_png" width="194" height="194">
                                            <div class="sangjum_name">
                                            	아이디
                                            </div>
                                            <div class="sangpumsu">
                                                <a href="seller.html" class="gesu">
                                                    상품
                                                    <b>5</b>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <form name="mem">
                            <input type="hidden" name="t_id" value="<%=sessionId%>">
                            <div class="seller_name">
                                <div class="namepart">
                                    <input type="text" name="t_sangjum_name" value="아이디" style="border:none;font-size:23px;" maxlength="10">
                                </div>
                                <div class="sangjum_jungbo">
                                    <div class="opendate">
                                        <img src="../image/opendate.png" width="14" height="13">
                                        오픈일
                                        <div class="opendate_date">9일전</div>
                                    </div>
                                    <div class="panmesu">
                                        <img src="../image/panmesu.png" width="14" height="13">
                                        총판매
                                        <div class="panmesu_su">0회</div>
                                    </div>
                                    <div class="sangjum_sangpum">
                                        <img src="../image/sangpumsu.png" width="14" height="13">
                                        상품
                                        <div class="sangpumsu_su">5개</div>
                                    </div>
                                </div>
                                
                                <div class="sangjum_soge">
                                    <input type="text" class="soge" name="t_sangjum_soge" value="봇치의 상점" style="border:none;font-size:15px;width:450px;height:100px;resize: none;" maxlength="165">
                                </div>
                                <input type="button" value="변경" onclick="goSangjumUpdate()" style="float:right;width:80px;">
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sangpum_body">
                <div class="sangpum_main">
                    <div class="sangpumgesu">
                        <div class="sangpum">
                            상품
                            <span class="all_sangpumsu">5</span>
                        </div>
                    </div>
                    <div class="sangpumsu_main">
                        <div class="all_sanpumsu2">
                            <div class="all_sanpumsu3">
                                <div class="all_sangpumsu4">
                                    <div>전체</div>
                                    <div class="all_sangpumsu5">
                                        5개
                                    </div>
                                    <div class="sangpum_search_body">
                                        <div class="sangpum_search">
                                            <select class="search_name" style="width:100px">
                                                <option  class="sangpum_regdate">등록순</option>
                                                <option class="sangpum_rowprice">가격 낮은순</option>
                                                <option class="sangpum_highprice">가격 높은순</option>
                                            </select>

                                        </div>
                                    </div>
                                </div>
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="more_product">
                <div class="more_product_list">
                    <div class="product_list">
                        <div class="product">
                            <div class="product_item">
                                <a href="">
                                    <img src="" class="img_box">
                                </a>
                            </div>
                            <div class="product_text">
                                <p class="product_name">삼익피아노</p>
                                <p class="product_price">
                                    60.000
                                    <span>원</span>
                                </p>
                            </div>
                        </div>
                        <div class="product">
                            <div class="product_item">
                                <a href="">
                                    <img src="" class="img_box">
                                </a>
                            </div>
                            <div class="product_text">
                                <p class="product_name">삼익피아노</p>
                                <p class="product_price">
                                    60.000
                                    <span>원</span>
                                </p>
                            </div>
                        </div>
                        <div class="product">
                            <div class="product_item">
                                <a href="">
                                    <img src="" class="img_box">
                                </a>
                            </div>
                            <div class="product_text">
                                <p class="product_name">삼익피아노</p>
                                <p class="product_price">
                                    60.000
                                    <span>원</span>
                                </p>
                            </div>
                        </div>
                        <div class="product">
                            <div class="product_item">
                                <a href="">
                                    <img src="" class="img_box">
                                </a>
                            </div>
                            <div class="product_text">
                                <p class="product_name">삼익피아노</p>
                                <p class="product_price">
                                    60.000
                                    <span>원</span>
                                </p>
                            </div>
                        </div>
                        <div class="product">
                            <div class="product_item">
                                <a href="">
                                    <img src="" class="img_box">
                                </a>
                            </div>
                            <div class="product_text">
                                <p class="product_name">삼익피아노</p>
                                <p class="product_price">
                                    60.000
                                    <span>원</span>
                                </p>
                            </div>
                        </div>

                    </div>
                </div>      
            </div>   
        </div>
    </div>

    <!-- 푸터 -->
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
    <!-- 푸터 -->
</body>
</html>