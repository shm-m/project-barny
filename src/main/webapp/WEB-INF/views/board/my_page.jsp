<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml2/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

    <header>
         <div style=" height: auto; width: 300%; margin-top:70px; float:">
        <h2><a href = "${pageContext.request.contextPath}/board/my_page">마이페이지</a></h2>
    	<hr width = "100%" color = "#DCDCDC" ></hr>
    	<img class = "profile2" style= " width: 230px; height: auto; margin-top:0px; float:left; " src="/static/img/BARNY3.png" />
    	
    	
    	<ul id = "box3">
    		<h2>환영합니다</h2>
    	</ul>
    	
    	<ul id = "box">
    		<li>${member_name}님</li>
    	</ul>
    	
    		<ul id = "box1">
    		<li><a href="#">적립금</a>
    		</ul>
    		
    		<ul id = "box2">
    		<li><a href="#">배송지관리</a>
    		</ul>
    	<hr width = "100%" color = "#DCDCDC" ></hr>
    	
    	</div>
    	</header>
    	
    	
        <title>mypage</title>
        <style type="text/css">
            * {margin:0; padding:0; font-size:30px;font-family:"BBTreeGB";}
            ul, li, ol {list-style-type : none;}
            a {color:#333; text-decoration:none; font-family:"BBTreeGB";}
            a:hover{text-decoration:underline}
            a:link, a:visited, a:active, a:hover {color:#333}
            
            #nav{width:280px; border:1px solid #dbdbdb; border-bottom:none; background:#FFF0F5; border-bottom:1px solid #dbdbdb; float:both}
            #nav li ul {display:none; }
            #nav li ul li {background: 10px 10px no-repeat;padding:4px 0 3px 17px }
            #nav li ul li a {color:#666668; text-indent:0;}
            #nav li a {display:block; width:195px; padding:5px 0 5px 8px; text-decoration:none; background: no-repeat 0 0;}
            #nav li a:hover {font-weight:bold;}
            #nav li a.stay {background:=no-repeat 0 0 !important;}
        	#nav li ul li a {width:188px; padding:1px 0 0 15px; margin-left:-17px; background:none;}
        	#nav li .active {background:= no-repeat 0 0 !important; font-weight:bold;}
        	
        	
        	#box3{width:300px; height:200px; border-right:1px solid #DCDCDC; border-left:1px solid #DCDCDC;  float:left; margin:10px 0px 20px 50px; padding-right:20px; text-align: center; line-height: 250px; }
        	#box{width:300px; height:200px; border-right:1px solid #DCDCDC; float:left; margin:10px 20px 10px 30px; text-align: center; line-height: 250px; }
        	#box1{width:300px; height:200px; border-right:1px solid #DCDCDC; float:left; margin:10px 20px 10px 20px;  padding-right:30px; text-align: center; line-height: 250px; }
        	#box2{width:300px; height:200px; float:left; margin:0px 0px 10px 20px; padding-right:80px; text-align: center; line-height: 250px;}
       		
        </style>
        
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                var lastEvent = null;
                var slide  = "#nav > li > ul";
                var alink  = "#nav > li > a";
           
            	function accordion(){
            	    if (this == lastEvent) return false;
            		lastEvent = this;
            		setTimeout(function() {lastEvent = null}, 200);
            		
            		if ($(this).attr('class') != 'active') {
            			$(slide).slideUp();
            			$(this).next(slide).slideDown();
            			$(alink).removeClass('active');
                        $(this).addClass('active');
            		} else if ($(this).next(slide).is(':hidden')) {
            			$(slide).slideUp();
            			$(this).next(slide).slideDown();
            		} else {
            			$(this).next(slide).slideUp();
            		}
            	}
            	$(alink).click(accordion).focus(accordion);
            	$('#nav > li:last > a').addClass('stay');
             }); 
        </script>
    <body>	
    		
    	
    	
    
    	<c:if test="${member == null }"></c:if>
    	
        <ul id="nav">
           
            <li>마이페이지${member.id}</li>
            
            <li><a href="user_view?member_id">회원정보수정</a>
            <ul>
                    <li><a href="#">회원탈퇴</a></li>
                </ul>
            </li>
            
            <li><a href="#2">구독정보</a>
            	
            </li>
            
            <li><a href="#3">구매내역</a>
                
            </li>
           <li><a href="#4">1:1문의내역</a>
           		 <ul>
                    <li><a href="my_view?member_idx=${42}">내문의</a></li>
                 </ul>
            </li>
            
            <li><a href="my_review?member_idx=${42}">후기</a>
            	
            </li>
            
            <li><a href="#6">적립금</a>
            </li>
            
            
    </body>
</html>