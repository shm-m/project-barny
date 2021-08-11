<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html">
<html>
<head>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보</title>
</head>

<body>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<form class="form-compact" action="">
            <div class="row paddingBottom20">
                <div class="container col-4">
                    <div class="row">
                        <h6 class="text-center col-12 mb-0">회원정보</h6>
                    </div>
                    
                    <div class="dropdown-divider mb-3"></div>
                    
                    <div class="form-group row">
                        <label for="member_name" class="col-4 col-form-label-sm text-right">이름:</label> 
                        <div class="col-8">
                            <div class="input-group"> 
                                <input id="member_name" name="text" type="text" class="form-control form-control-sm" readonly>
                            </div>
                        </div>
                    </div> 
                    
                    <div class="form-group row align-items-center">
                        <label for="member_id" class="col-4 col-form-label-sm text-right" value="<%=user.getMember_id()%>">아이디:</label> 
                        <div class="col-8">
                          <div class="input-group"> 
                            <input id="member_id" name="text" type="text" class="form-control form-control-sm" readonly>
                          </div>
                        </div>
                    </div>
                    
                    <div class="form-group row align-items-center">
                        <label for="pw" class="col-4 col-form-label-sm text-right">비밀번호:</label> 
                        <div class="col-8">
                          <div class="input-group"> 
                            <input id="pw" name="text" type="text" class="form-control form-control-sm" readonly>
                          </div>
                          
                          <div class="form-group row align-items-center">
                        <label for="pw" class="col-4 col-form-label-sm text-right">비밀번호 확인:</label> 
                        <div class="col-8">
                          <div class="input-group"> 
                            <input id="pw" name="text" type="text" class="form-control form-control-sm" readonly>
                          </div>
                        </div>
                    </div>
                    
                     <div class="form-group row align-items-center">
                        <label for="nickname" class="col-4 col-form-label-sm text-right">닉네임:</label> 
                        <div class="col-8">
                          <div class="input-group"> 
                            <input id="nickname" name="text" type="text" class="form-control form-control-sm" readonly>
                          </div>
                        </div>
                    </div>
                    
                    <div class="form-group row align-items-center">
                        <label for="tel" class="col-4 col-form-label-sm text-right">연락처:</label> 
                        <div class="col-8">
                          <div class="input-group"> 
                            <input id="tel" name="text" type="text" class="form-control form-control-sm" readonly>
                          </div>
                        </div>
                    </div>
                    
                    <div class="form-group row align-items-center">
                        <label for="email" class="col-4 col-form-label-sm text-right">이메일:</label> 
                        <div class="col-8">
                          <div class="input-group"> 
                            <input id="email" name="text" type="text" class="form-control form-control-sm" readonly>
                          </div>
                        </div>
                    </div>
                    
                    <div class="form-group row align-items-center">
                        <label for="date_of_birth" class="col-4 col-form-label-sm text-right">생년월일:</label> 
                        <div class="col-8">
                          <div class="input-group"> 
                            <input id="email" name="text" type="text" class="form-control form-control-sm" readonly>
                          </div>
                        </div>
                    </div>
                    
    <input type="submit" value="수정" class="btn btn-primary pull-right">
    <div class="clearfix"></div>      
                          
        </form>
		

</body>
</html>