<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../common_header.jsp" %>
<script>
	function goSave(){
		//noti.t_gubun.value = "save"; 첨부파일 폼 형식 이여서 겟파라미터 안되서 못넘김 그래서  get방식으로 직접 넘기든가 해야댐 아니면 인풋에 벨류값 주던가 
		pro.method="post";
		pro.action="ProductController?t_gubun=uploadSave";
		pro.submit();
	}
</script>

	
<main>
	<div class="container">
        <div class="write_wrap">
        <h2 class="sr-only">상품등록</h2>
        
			<form name="pro" enctype="multipart/form-data">
              <table class="bord_table">
                  <colgroup>
                      <col width="20%">
                      <col width="*">
                  </colgroup>
                  <tbody>
                      <tr class="first">
                          <th>상품명</th>
                          <td><input type="text" name="title"></td>
                      </tr>
                      <tr>
                          <th>가격</th>
                          <td><input type="text" name="price"></td>
                      </tr>
                      <tr>
                        <th>상품이미지</th>
                        <td><input type="file" name="photo"></td>
                      </tr>
                      <tr>
                          <th>상품설명</th>
                          <td><textarea name="contents"></textarea></td>
                      </tr>
                   
                  </tbody>
              </table>
             
              <div class="btn_wrap">
                  <input type="submit" onClick="goSave()" value="등록" class="btn_ok">
                  <a href="javascript:goSave()" class="butt">Save</a>
              </div>
         	
        </div>
</main>


</body>
</html>