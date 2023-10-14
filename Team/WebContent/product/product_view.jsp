<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/view.css">
</head>
<script>
	function goIndex(){
		mem.method="post";
		mem.action="Index";
		mem.submit();
	}
	function goBuy(){
		mem.t_gubun.value="buy";
		mem.method="post";
		mem.action="ProductController";
		mem.submit();
	}
</script>
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
                <div class="link"><a href="">판매자정보</a></div>
                <div class="link"><a href="">판매현황</a></div>
                <div class="link"><a href="">메뉴</a></div>
            </div>
        </div>
    <!-- 메뉴 (밑에 div class="main_right"까지 가져가셔야 작동됩니다. main_right 안에 본인이 맡은 메인 구성 넣으시면 됩니다.)-->

        <div class="main_right">
        </div>
    <div class="view">
        <div class="view_header">
            <div class="view_home">
                <img src="image/home.png" width="15" height="15">
                홈
            </div>
        </div>
    <div class="view_product">
        <div class="product_jungbo">
            <div class="product_image">
                <div class="image">
                    <img src="image/samikpiano.PNG" class="product_imageclass">
                </div>
            </div>
            <div class="product_sangse">
                    <div class="product_gubun">
                        <div class="gubun_main">
                            <div class="gubun_price_name">
                                <div class="gubun_name">
                                    삼익피아노
                                </div>
                                <div class="gubun_price">
                                    <div class="price">
                                        70,000
                                    </div>
                                    <div class="won">
                                        원
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="product_sangte">
                            <div class="product_stat">
                                <div class="stat_list">
                                    <div class="jo">
                                        <img src="image/jo.png" width="i6" height="16">
                                        <div class="jo_in">
                                            11
                                        </div>
                                    </div>
                                    <div class="jo">
                                        <img src="image/clock.png" width="i6" height="16">
                                        <div class="jo_in">
                                            30
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="stat_jungbo">
                                <div class="jungbo">
                                    <div class="jungbo_1">
                                        상품상태
                                    </div>
                                    <div class="jungbo_2">
                                        최상급
                                    </div>
                                </div>
                                <div class="jungbo">
                                    <div class="jungbo_1">
                                        교환여부
                                    </div>
                                    <div class="jungbo_2">
                                        교환불가능
                                    </div>
                                </div>
                                <div class="jungbo">
                                    <div class="jungbo_1">
                                        배송비
                                    </div>
                                    <div class="jungbo_baesong">
                                        배송비무료
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="gumae_jangbaguni">
                            <button class="gumae" onClick="goBuy()">
                                	구매하기
                            </button>
                            <button class="jangbaguni">
                                장바구니
                            </button>
                        </div>
                    </div>
                    
            </div>
        </div>
    </div>

    <div class="product_1">
        <div class="product_2">
            <div class="product_3">
                <div class="product_neyong">
                    <div class="product_sangpumjungbo">
                        상품정보
                    </div>
                    <div class="product_sangseneyong">
                        <p style="width:663px;">
                          	상태 완전 좋은 기타 판매합니다.
                          	넥에 흠집 하나 없고 입문용으로 좋아요~
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="seller_1">
            <div class="seller_2">
                <div class="seller_3">
                    <div class="seller_jungbo">
                        판매자 정보
                    </div>
                    <div class="seller_sangse1">
                        <div class="seller_sangse2">
                            <a href="" class="seller_picture">
                                <img src="image/seller.PNG" width="70" height="70">
                            </a>
                            <div class="seller_sangse3">
                                <a href="" class="seller_name">
                                    track11
                                </a>
                                <div class="seller_sangpum">
                                    <a href="" class="seller_sangpumsu">
                                        상품5
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sangpum">
                        <a href="" class="sangpum_image">
                            <img src="image/mysell.png" width="130" height="130">
                            <div class="sangpum_price">
                                <span>17,000</span>
                                원
                            </div>
                        </a>
                        <a class="sangpum_image">
                            <img src="image/mysell.png" width="130" height="130">
                            <div class="sangpum_price">
                                <span>17,000</span>
                                원
                            </div>
                        </a>
                        <a class="sangpum_image">
                            <img src="image/mysell.png" width="130" height="130">
                            <div class="sangpum_price">
                                <span>17,000</span>
                                원
                            </div>
                        </a>
                        <a class="sangpum_image">
                            <img src="image/mysell.png" width="130" height="130">
                            <div class="sangpum_price">
                                <span>17,000</span>
                                원
                            </div>
                        </a>
                    </div>
                    <div class="sangpum_dubogi">
                        <a href="" class="dubogi">
                            <span class="dubogi_su">
                                1개
                            </span>
                            상품 더보기
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="more_product">
        <div class="more_product_title">
            <a href="">
                <div class="more_title">
                    상품 더보기
                </div>
            </a>
        </div>
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

