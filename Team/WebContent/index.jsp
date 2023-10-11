<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<%@ page import="dao.*,dto.*,common.*"%>
<%@include file="common_header.jsp" %>

                    
                    <div class="right">
                        <div class="search_area">
                            <div class="search">
                                <input type="text">
                                <a href="" style="font-size:20px;">search</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header_bottom">
                <ul class="bottom_list">
                   
                   
                </ul>
            </div>
        </div>
    </header>
    <!-- 헤더 -->
     <main>
        <div class="banner">
            <img src="image/banner3.png" style="width: 100%; height: 100%;">
        </div>
        <div class="container">
            <div class="items">
                <div class="items">
                <div class="items_wrap">
                    <div class="items_box">
                        <div class="items_image" style="background-image: url('image/i_piano.jpg')";><a href="" style="color: white">피아노</a></div>
						
                    </div>
                    <div class="items_box">
                        <div class="items_image" style="background-image: url('image/i_guitar.png')";><a href="" style="color: white">기타</a></div>
                
                    </div>
                    <div class="items_box">
                        <div class="items_image" style="background-image: url('image/i_bass.png')";><a href="" style="color: white">베이스</a></div>
                       
                    </div>
                    <div class="items_box">
                        <div class="items_image" style="background-image: url('image/i_drun.png')";><a href="" style="color: white">드럼</a></div>
                        
                    </div>
                    <div class="items_box">
                        <div class="items_image" style="background-image: url('image/i_violin.png')";><a href="" style="color: white">바이올린</a></div>
                        
                    </div>
                </div>
            </div>
            <div class="line"></div>
            <div class="main_product">
                <div class="product_title">
                    <div class="title">Most Popular</div>
                    <div class="sub_title">인기 상품</div>
                </div>
                <div class="product_list_wrap">
                    <div class="product_list">
                        <div class="product">
                            <a href="ProductView.html">
																							
                                <div class="product_item">
                                    <div class="img_box">
									<img src="image/white_piano.jpg">
									</div>
                                </div>
                            </a>
                            <div class="product_text">
                                <p class="product_company">영창</p>
                                <p class="product_name">영창 화이트 그랜드 피아노</p>
                                <p class="product_price">12,000,000원</p>
                            </div>
                        </div>
                        <div class="product">
                            <div class="product_item">
                                <a href="">
                                    <div class="img_box">
										<img src="image/star_piano.jpg">
									</div>
                                </a>
                            </div>
                            <div class="product_text">
                                <p class="product_company">스타인웨이</p>
                                <p class="product_name">스타인웨이 그랜드피아노</p>
                                <p class="product_price">7,000,000원</p>
                            </div>
                        </div>
                        <div class="product">
                            <div class="product_item">
                                <a href="">
                                    <div class="img_box">
										<img src="image/yamaha_piano.jpg">
									</div>
                                </a>
                            </div>
                            <div class="product_text">
                                <p class="product_company">야마하</p>
                                <p class="product_name">야마하 그랜드피아노</p>
                                <p class="product_price">5,000,000원</p>
                            </div>
                        </div>
                        <div class="product">
                            <div class="product_item">
                                <a href="">
                                    <div class="img_box">
										<img src="image/cra_gxe-600 able.jpg">
									</div>
                                </a>
                            </div>
                            <div class="product_text">
                                <p class="product_company">크래프터</p>
                                <p class="product_name">크래프터 gxe-600 able</p>
                                <p class="product_price">1,000,000원</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div style="height:80px;"></div>
            <div class="main_product">
                <div class="product_title">
                    <div class="title">New in</div>
                    <div class="sub_title">신규 등록 상품</div>
                </div>
                <div class="product_list_wrap">
                    <div class="product_list">
                    <c:forEach items="${t_productDtos}" var="dto">
                        <div class="product">
                            <div class="product_item">
                                <a href="">
                                    <div class="img_box"><img src="attach/${dto.getAttach()}"></div>
                                </a>
                            </div>
                            <div class="product_text">
                                <p class="product_company">YAMAHA</p>
                                <p class="product_name">${dto.getP_name()}</p>
                                <p class="product_price">${dto.getPrice() }원</p>
                            </div>
                        </div>
                    </c:forEach>   
                    </div>
                </div>
            </div>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			    <div class="product_title">
                    <div class="title">EVENT</div>
                    <div class="sub_title">이벤트</div>
                </div>
                 <div class="product_list_wrap">
                    <div class="product_list">
                        <div class="product">
                            <div class="product_item">
                                <a href="">
                                    <div class="img_box"><img src="image/i_event1.png"></div>
                                </a>
                            </div>
                            <div class="product_text">
                                <p class="product_company"></p>
                                <p class="product_name"></p>
                                <p class="product_price"></p>
                            </div>
                        </div>
                        <div class="product">
                            <div class="product_item">
                                <a href="">
                                    <div class="img_box"><img src="image/i_event2.png"></div>
                                </a>
                            </div>
                            <div class="product_text">
                                <p class="product_company"></p>
                                <p class="product_name"></p>
                                <p class="product_price"></p>
                            </div>
                        </div>
                        <div class="product">
                            <div class="product_item">
                                <a href="">
                                    <div class="img_box"><img src="image/i_event3.png"></div>
                                </a>
                            </div>
                            <div class="product_text">
                                <p class="product_company"></p>
                                <p class="product_name"></p>
                                <p class="product_price"></p>
                            </div>
                        </div>
                        <div class="product">
                            <div class="product_item">
                                <a href="">
                                    <div class="img_box"><img src="image/i_event4.png"></div>
                                </a>
                            </div>
                            <div class="product_text">
                                <p class="product_company"></p>
                                <p class="product_name"></p>
                                <p class="product_price"></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="news">
            <div class="news_a">
                <div class="news_title">
                    <div class="row">
                        <div class="row_1"><h5>NEWS</h5></div>
                        <div class="row_2"><a href="">more</a></div>
                    </div>
                </div>
                <ul>
                    <li><a href="">가오갤3, 분노의질주 외화 흥행질주 한국영화의 미래는...</a></li>
                    <li><a href="">[만물상] 발길 끊긴 영화관</a></li>
                    <li><a href="">한국필립모리스, '제10회 들꽃영화제' 후원</a></li>
                    <li><a href="">칸 레드 카펫에 오른 영화 '화란'의 주역들</a></li>
                    <li><a href="">막바지 향하는 칸영화제…황금종려상은 누구에게</a></li>
                    <li><a href="">"기다렸다" 작은영화관 '합천시네마' 재개관에 관객 북적</a></li>
                    <li><a href="">'스프린터' 독립영화 박스오피스 1위 '소중한 쾌거'</a></li>
                </ul>
            </div>
            <div class="news_b">
                <div class="news_title">
                    <div class="row">
                        <div class="row_1"><h5>리뷰</h5></div>
                        <div class="row_2"><a href="">more</a></div>
                    </div>
                </div>
                <ul>
                    <li><a href="">가오갤3, 분노의질주 외화 흥행질주 한국영화의 미래는...</a></li>
                    <li><a href="">[만물상] 발길 끊긴 영화관</a></li>
                    <li><a href="">한국필립모리스, '제10회 들꽃영화제' 후원</a></li>
                    <li><a href="">칸 레드 카펫에 오른 영화 '화란'의 주역들</a></li>
                    <li><a href="">막바지 향하는 칸영화제…황금종려상은 누구에게</a></li>
                    <li><a href="">"기다렸다" 작은영화관 '합천시네마' 재개관에 관객 북적</a></li>
                    <li><a href="">'스프린터' 독립영화 박스오피스 1위 '소중한 쾌거'</a></li>
                </ul>
            </div>
            <div></div>
        </div>
        <div class="news_wall"></div>
        <div class="news">
            <div class="news_a">
                <div class="news_title">
                    <div class="row">
                        <div class="row_1"><h5>굿즈</h5></div>
                        <div class="row_2"><a href="">more</a></div>
                    </div>
                </div>
                <ul>
                    <li><a href="">가오갤3, 분노의질주 외화 흥행질주 한국영화의 미래는...</a></li>
                    <li><a href="">[만물상] 발길 끊긴 영화관</a></li>
                    <li><a href="">한국필립모리스, '제10회 들꽃영화제' 후원</a></li>
                    <li><a href="">칸 레드 카펫에 오른 영화 '화란'의 주역들</a></li>
                    <li><a href="">막바지 향하는 칸영화제…황금종려상은 누구에게</a></li>
                    <li><a href="">"기다렸다" 작은영화관 '합천시네마' 재개관에 관객 북적</a></li>
                    <li><a href="">'스프린터' 독립영화 박스오피스 1위 '소중한 쾌거'</a></li>
                </ul>
            </div>
            <div class="news_b">
                <div class="news_title">
                    <div class="row">
                        <div class="row_1"><h5>잡담</h5></div>
                        <div class="row_2"><a href="">more</a></div>
                    </div>
                </div>
                <ul>
                    <li><a href="">가오갤3, 분노의질주 외화 흥행질주 한국영화의 미래는...</a></li>
                    <li><a href="">[만물상] 발길 끊긴 영화관</a></li>
                    <li><a href="">한국필립모리스, '제10회 들꽃영화제' 후원</a></li>
                    <li><a href="">칸 레드 카펫에 오른 영화 '화란'의 주역들</a></li>
                    <li><a href="">막바지 향하는 칸영화제…황금종려상은 누구에게</a></li>
                    <li><a href="">"기다렸다" 작은영화관 '합천시네마' 재개관에 관객 북적</a></li>
                    <li><a href="">'스프린터' 독립영화 박스오피스 1위 '소중한 쾌거'</a></li>
                </ul>
            </div>
            <div></div>
        </div>
        
        </div>
		
    </main>

 <%@ include file="common_footer.jsp" %>
</body>
</html>