<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>bitcampfire - 회원정보 수정</title>
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" href="../css/application.css">
</head>
<body>
<div class="layout-container">
 	<div class="main">
			<div id="create-user" class="content clearfix" role="main">
			    <h3 class="content-header">비밀번호 변경</h3>
				   <form action="/bitcampfire/user/updatePasswordChange" method="post">
						<input type="hidden" name="_csrf" value="dc460125-e996-48aa-96cc-b55d025e95c2">
						    <div class="col-sm-8 col-sm-offset-2">
						        <div class="panel panel-default panel-margin-10">
						            <div class="panel-body panel-body-content text-center">
						            
						                <p class="lead">변경하실 비밀번호를 입력해 주세요.</p>
						                
						                <div class="form-group">
						                    <input type="password" name="user_pwd" id="user_pwd" class="form-control form-control-inline text-center" placeholder="현재 비밀번호" />
						                </div>
						                
						                <div class="form-group">
						                    <input type="password" name="newPwd" id="newPwd" class="form-control form-control-inline text-center" placeholder="새 비밀번호" />
						                </div>
						                
						                <div class="form-group">
						                    <input type="password" name="newPwdCheck" id="newPwdCheck" class="form-control form-control-inline text-center" placeholder="새 비밀번호 확인" />
						                </div>
						                
						                <button type="submit" class="btn btn-primary">비밀번호 변경</button> 
						                <a href="/" class="btn btn-default">취소</a> <!-- 메인으로 이동  -->
						            
						            </div><!-- panel-body panel-body-content text-center -->
						        </div><!-- panel panel-default panel-margin-10 -->
						    </div><!-- col-sm-8 col-sm-offset-2 -->
				   </form>
			</div><!-- create-user -->          
   </div> <!-- main -->   
</div> <!-- layout-container -->

</body>
</html>