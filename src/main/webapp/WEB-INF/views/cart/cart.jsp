<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Ajax</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- jQuery 함수라서 써줘야한다. -->
	
	<script type="text/javascript">
	
	  /*    $.ajax({
    url : '서비스 주소'
    , data : '서비스 처리에 필요한 인자값'
    , type : 'HTTP방식' (POST/GET 등)
    , dataType : 'return 받을 데이터 타입' (json, text 등)
    , success : function('결과값'){
    // 서비스 성공 시 처리 할 내용
    }, error : function('결과값'){
    // 서비스 실패 시 처리 할 내용
    }
 }); */

 
		function cart() {
			var url = "${pageContext.request.contextPath}/cart.json";
			// 컨텍스트명 + rest/after로 들어오면 list로 들어와라
			
			$.ajax({
				// {}안에 객체 들어감
				// 쉼표 꼭 쓰기
				type : 'GET', // GET or POST(반드시 대문자로)
				url : url, // ${pageContext.request.contextPath}/rest/after.json
				cache : false, // 이걸 안쓰거나 true로 하면 수정해도 값 반영이 잘 안됌.
				dataType : 'json', // 데이터 타입은 무조건 json으로 꼭 해야함.
				success : function(result) { // 통신
					var htmls = "";
					$("#cart").html("") // html 초기화 시키겠다.
					
		               $("<tr>" , {
		                   html : "<td>" + "상품이름" + "</td>"+  // 컬럼명들
		                         "<td>" + "수량" + "</td>"+
		                         "<td>" + "가격" + "</td>"+		                                     		                        
		                         "<td>" + "삭제" + "</td>"
		                }).appendTo("#cart") // 이것을 테이블에붙임
					
		                if(result.length < 1) { // 1보다 작다는 얘기는 할게없다.
		                	html.push("장바구니가 비었습니다.");
		                	
		                } else {
		                	
		                	$(result).each(function(){
		           		    // 객체 자체를 가져오는 것이기때문에 따옴표 붙이지않는다.(result)
		                	// 따옴표 붙이면 선택자     		
		                		
		                	htmls += '<tr>';
		                    htmls += '<td>'+ this.product_name + '</td>';
		                    htmls += '<td>'+ this.product_qty + '</td>';
		                    htmls += '<td>'+ this.price + '</td>';
		                    htmls += '<td>'
		                    for(var i=0; i < this.bindent; i++) { //for 문은 시작하는 숫자와 종료되는 숫자를 적고 증가되는 값을 적어요. i++ 은 1씩 증가 i+2 는 2씩 증가^^
		                    htmls += '-'   
		                       }
		                    htmls += '<a href="${pageContext.request.contextPath}/content_view?bId=' + this.bid + '">' + this.btitle + '</a></td>';
		                    htmls += '<td>'+ this.bdate + '</td>'; 
		                    htmls += '<td>'+ this.bhit + '</td>';
		                    htmls += '<td>'+  '<a class="a-delete" href="${pageContext.request.contextPath}/ajax/delete?bid=' + this.bid +'">' +'삭제</a>'  + '</td>';   
		                    htmls += '</tr>';

		                		
		                	}); // each end

		                      htmls+='<tr>';
		                      htmls+='<td colspan="5"> <a href="${pageContext.request.contextPath}/order">주문하기</a> </td>';                         
		                      htmls+='</tr>';

		              }
					
					 $("#cart").append(htmls);
				}
				
				
				
			}); // Ajax end
			
			
		} // end getList	
		
		// url 치고 들어가면 success해서 List를 받아온다. 
		// 응답을 json으로 리턴받는다.
		// 서버에 출력되기까지 시간이 걸리는데 그 결과값을 받기도 전에 바로 다음 걸 실행시킨다.
		// 그 다음 응답이 오게되면(List) 그때 실행해준다.
		// => console.log가 먼저 실행되고 그 다음 List 불러옴
		
		// 우리가 1~10까지를 각각 만들어서 합쳐서 실행시키는데 
		// 3만 수정하고싶으면 다시 전체 불러올 필요없이 3만 수정하고 할수있기때문에 
		// ajax를 쓴다.
		
	  	/* $(document).ready(function (){
      
			 // 정적인 것. 한마디로 동적인 것은 클릭이벤트 먹지 않음.
			 // a-delete만 가져온다.
	         // $('.a-delete').click(function(event) {	        	 
	         // });
	         
			 // 동적인 것. document 전체를 가져온다.
	         $(document).on("click",".a-delete",function(event){
	         // prevendDefault()는 href로 연결해 주지 않고 단순히 click에 대한 처리를 하도록 해준다.
	         // 페이지로 들어가지않게 막아준다.
	         event.preventDefault();
	         console.log("ajax 호출전"); 
	         // 해당 tr제거
	         // 해당 줄 삭제
	         var trObj =  $(this).parent().parent();
	         
	         // Form 태그 : 비동기 통신이 아니기때문에 ajax(비동기통신 = 부분 갱신 = 깜빡임 없음.)써야 함.
	         $.ajax({
	             type : "GET", // 메서드
	             url : $(this).attr("href"), // action
	            // data:{"bId":"${content_view.bId}"}, 
	             success: function (result) {       
	                 console.log(result); 
	               if(result == "SUCCESS"){
	                    //getList();
	                  $(trObj).insert();  
	                            
	               }                       
	             },
	             error: function (e) {
	                 console.log(e);
	             }
	         })
	          
	      });
	   });    */ 
	
	</script>
	
	<!-- id는 단수 : 유일무이한 선택자 -> 중복되면 안된다. 
		 class는 복수일 때. -> delete를 class로 준 이유. -->
	
	<script>
      $(document).ready(function(){
         getList(); // 다음에 getList로 와라.         
         console.log("이건 언제 찍어?") // getList console 실행 후 ajax 실행. 
         //  = 비동기
      });
    </script>  
    
</head>
<body>
   <table id="list_table" width="500" cellpadding="0" cellspacing="0" border="1">
      
     
   </table>
</body>
</html>
