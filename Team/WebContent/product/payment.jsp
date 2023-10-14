<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- PC결제창 호출함수 예시 -->
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=euc-kr"/>
   <script type="text/javascript" src="https://testspay.kcp.co.kr/plugin/kcp_spay_hub.js"></script>

<script type="text/javascript">
   /* 표준웹 실행 */
   function jsf__pay( form )
   {
      try
      {
         KCP_Pay_Execute_Web( form );
       
      }
      catch (e)
      {
         /* IE 에서 결제 정상종료시 throw로 스크립트 종료 */
    	 
      }
     
   }

</script>
</head>
<body onload="jsf__pay( document.order_info )">
   <form name="order_info">
         <input type="hidden" name="ordr_idxx" value="TEST1234567890"/>
         <input type="hidden" name="good_name" value="TEST상품"/>
         <input type="hidden" name="good_mny" value="1"/>
         <input type="hidden" name="pay_method" value="100000000000"/> <!-- 결제수단(신용카드) -->
         <input type="hidden" name="site_cd" value="T0000"/>
         <input type="hidden" name="site_key" value="3grptw1.zW0GSo4PQdaGvsF__"/>
   </form>
</body>
</html>