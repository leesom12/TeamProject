<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/pay.css" rel=stylesheet>
<script src="https://kit.fontawesome.com/17da812ad5.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
    $(document).ready(function() {
        $(".card").click(function() {
            $(".pay_4").hide();
            $('#card').show();
            $('#cash').hide();
        });
        $(".cash").click(function() {
            $(".pay_4").show();
            $('#card').hide();
            $('#cash').show();
        });
    });
</script>
<script>
	function goOrder(){
		end.t_gubun.value="payment";
		end.method = "post";
		end.action = "ProductController";
		end.submit();
	}
	
	function goComplete(){
		end.t_gubun.value="complete";
		end.method = "post";
		end.action = "ProductController";
		end.submit();
	}
</script>

<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>

</head>
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
                        <a href=""><img src="image/logo.png" style="width: 140px; height: 50px;"></a>
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
	
	
	
	<section>
		<form name="end">
		<div class = "container">
		<input type="hidden" name="t_gubun">
		<p_info>
            <table border="1" cellpadding="10" cellspacing="0" width="1500" height="250">
                <thead>
                    <tr height="80">
                        <th colspan="2" style="background: #c0e2fe; font-size: 20px;">상품명</th>		
                        <th width="150" style="background: #c0e2fe; font-size: 20px;">수량</th>
                        <th width="150" style="background: #c0e2fe; font-size: 20px;">판매가</th>
                        <th width="150" style="background: #c0e2fe; font-size: 20px;">배송비</th>
                        <th width="150" style="background: #c0e2fe; font-size: 20px;">주문금액</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="border-right:none">
                            <div class="pic">
                                <img src="image/new1.png"  width="160" height="160" alt>	
                            </div>
                        </td>
                        <td style="border-left:none; padding-right: 50px; font-size: 18px;">Jackson - X Series Adrian Smith San Dimas SDXQM / 잭슨 애드리안 스미스 시그니처 (Trans Green)</td>
                        <td style="font-size: 18px">1</td>
                        <td style="font-size: 18px">948,970</td>
                        <td style="font-size: 18px">3000</td>
                        <td style="color: red; font-size: 18px;">951,970</td>
                    </tr>
                </tbody>
            </table>
        </p_info>
			
		<div class = "d_info">
		
		<div class = "order">
			
			<h2>주문하시는 분</h2>
			
			<table>
				<colgroup>
					<col width="20%">
					<col width="80%">
				</colgroup>
				
				<tr>
					<th>이름</th>
					<td>
						<input type="text" name="" style="height: 30px;">
					</td>
				</tr>
				
				<tr>
					<th>연락처</th>
					<td>
						<input type="text" name="" style="height: 30px;">
					</td>
				</tr>
				
				<tr>
					<th>주소</th>
					<td style="height: 160px;">
						<input type="text" id="sample6_postcode" placeholder="우편번호" style="height: 30px; margin-bottom: 10px;">
						<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" style="height: 30px;"><br>
						<input type="text" id="sample6_address" placeholder="주소" style="height: 30px; width: 282px; margin-bottom: 10px;"><br>
						<input type="text" id="sample6_detailAddress" placeholder="상세주소" style="height: 30px;">
						<input type="text" id="sample6_extraAddress" placeholder="참고항목" style="height: 30px;">
					</td>
				</tr>
				
				<tr>
					<th>E-mail</th>
					<td>
						<input type="text" name="" style="height: 30px;">
						<select name="" style="height: 30px;">
							<option value="">선택하세요</option>
							<option value="">@naver.com</option>
							<option value="">@gmail.com</option>
							<option value="">@nate.com</option>
						</select>
					</td>
				</tr>
			</table>
			
		</div>
		<br>
		<div class = "order">
		
		<h2>받으시는 분</h2>
		
		<table>
				<colgroup>
					<col width="20%">
					<col width="80%">
				</colgroup>
				
				<tr>
					<th>이름</th>
					<td>
						<input type="text" name="" style="height: 30px;">
					</td>
				</tr>
				
				<tr>
					<th>연락처</th>
					<td>
						<input type="text" name="" style="height: 30px;">
					</td>
				</tr>
				
				<tr>
					<th>주소</th>
					<td style="height: 160px;">
						<input type="text" id="sample6_postcode" placeholder="우편번호" style="height: 30px; margin-bottom: 10px;">
						<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" style="height: 30px;"><br>
						<input type="text" id="sample6_address" placeholder="주소" style="height: 30px; width: 282px; margin-bottom: 10px;"><br>
						<input type="text" id="sample6_detailAddress" placeholder="상세주소" style="height: 30px;">
						<input type="text" id="sample6_extraAddress" placeholder="참고항목" style="height: 30px;">
					</td>
				</tr>
				
				<tr>
					<th rowspan="3">배송메모</th>
					<td>
						<label><textarea rows="5" cols="48" name=""></textarea></label>
					</td>
				</tr>
		</table>
		
		</div>
		
		</div>	
		
		<div class="payment">
		
			<div class="pay_1" style="margin-top: 20px;">
			
				<div class="box_1">
					<p style="color: gray; padding-top: 15px;">주문금액</p>
					<br>
					<p>951,970원</p>
				</div>
				
				<div class="box_2">
					<p style="color: gray; padding-top: 15px;">배송비</p>
					<br>
					<p>3,000원</p>
				</div>
				
				<div class="box_3">
					<p style="color: gray; padding-top: 15px;">추가배송비</p>
					<br>
					<p>0원</p>
				</div>
				
			</div>
			
			<form name="money">
			<div class="pay_2">
				<table>
					<colgroup>
						<col width="70%">
						<col width="30%">
					</colgroup>
					
					<tr>
						<th style="font-size: 23px; padding-left: 210px;">총 결제금액</th>
						<th style="color:red; font-size: 25px;">954,970원</th>
					</tr>
				</table>
			</div>
			</form>
			
			
			<div class ="pay_3">
			
				<h3>결제수단</h3>
				<div class ="cash">
					<div class="fa-solid fa-coins coin"></div>
					<div class="box">
						<p style="font-weight: bold">무통장입금</p>
						<p style="color: gray;">계좌입금 결제(모바일 뱅킹, ATM 등을 이용)</p>
					</div>
				</div>
				<div class ="card">
					<div class="fa-regular fa-credit-card coin"></div>
					<div class="box">
						<p style="font-weight: bold">신용카드</p>
						<p style="color: gray;">카드결제, 네이버페이, 카카오페이 등 이용</p>
					</div>
				</div>
				
			</div>
		
			
			<div class ="pay_4" style="display:none">
				<p style="font-size: 25px;">국민 502901-01-356690 서건일</p>
				<h4 style="padding: 10px 0; font-size: 20px;">입금자명</h4>
				<input type="text" name="" style="height: 30px;">
			</div>
			
			<div class = "f_order">
				<table>
				
				<colgroup>
					<col width="100%">
				</colgroup>
					<tr>
						<th>
							<input type="button" id="cash" style="display:none;background: red; color: white; border: none" value="주문하기" onclick="goComplete()" >
							<input type="button" id="card" style="background: red; color: white; border: none" value="주문하기" onclick="goOrder()">
						</th>
					</tr>
					<tr>	
						<th>
							<input type="button" style="background: white; margin-top: 15px; border: none" value="취소하기" onclick="">	
						</th>
					</tr>
				</table>		
			</div>
			
		
		</div>
			
			
		</div>
		</form>
	</section>
	
	<footer>
		
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
		
	</footer>
</body>
</html>