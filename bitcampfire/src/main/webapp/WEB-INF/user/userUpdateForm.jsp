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
			    <h3 class="content-header">회원 정보 수정</h3>
			    <div class="col-md-6 main-block-left">
			        <div class="panel panel-default">
			            <div class="panel-heading">
			            
		            		<div class="profile-picture " data-id="0">
			   					<span class="avatar-photo"><img src='//www.gravatar.com/avatar/92535d8d4eab5c6d4c0b02493f182aa8?d=identicon&s=40'/></span>
			   					<span>기본이미지
		   					</div>
				
							<div class="avatar clearfix avatar-medium ">
									<a href="/user/info/145032" class='avatar-photo' id="user_img"><img src="//file.okky.kr/profile/2022/1656835768025.png"/></a>
									<div class="avatar-info">
											<a class="user_nickname" href="/user/info/145032" title="tralala">tralala</a>
												<div class="activity block"><span class="fa fa-flash"></span> 10</div>
									</div>
							</div>
							
		           			<a id="edit-picture-btn">변경</a>
		           			<div class="profile-picture-list" style="display:none;">	
			           			<div class="profile-picture selected" data-type="uploaded" data-id="0" id="profile-uploaded-user_img">
				   					<span class="avatar-photo"><img src='//file.okky.kr/profile/2022/1656332142056.png'/></span>
				   					<span>Uploaded</span>
			   					</div>
			   					<button class="btn btn-primary" id="profile-upload-btn" style="font-size: 12px">이미지 업로드<br><small>권장 사이즈 150px<br>최대 250KB</small></button>
			  					<input type="file" name="files" accept="image/gif, image/jpg, image/jpeg, image/png" style="display:none;" id="user_img">
			  					<button class="btn btn-success picture-confirm-btn">확인</button>
		           			</div><!-- profile-picture-list -->
			            </div><!-- panel-heading -->			            
			            
			            
			            
			            <!-- upadate form start -->
			            <form method="POST" class="form-signup form-user panel-body" id="updateForm" autocomplete="off" action="/bitcampfire/user/update">
			            <input type="hidden" name="user_id" id="user_id" value="${userDto.user_id}">
							<!-- 
							<input type="hidden" name="_csrf" value="698dfadc-ce17-48ca-92db-b30e293be47c">
			            	<input type="hidden" name="_method" value="PUT" id="_method">
			                 -->
			                <fieldset>
			                    <div class="form-group">
			                        <label class="control-label" for="user_name">이름</label>
			                        <input type="text" name="user_name" class="form-control input-sm" placeholder="이름" required="" value="${userDto.user_name }" id="user_name">
			                    	<div id="user_nameDiv"></div>
			                    </div>
			                    <div class="form-group">
			                        <label class="control-label" for="user_nickname">닉네임</label>
			                        <input type="text" name="user_nickname" class="form-control input-sm" placeholder="닉네임" required="" value="${userDto.user_nickname }" id="user_nickname">		                        
		                        	<div id="user_nicknameDiv"></div>
		                        </div>

			                    
			                    <!-- email 폼 이동-->
				               	<div class="form-group">
				               		<div class="email-edit">
				                    	<label class="control-label" for="user_email">이메일 주소</label>
					               		<div class="field-subtitle"></div>
				               			<input type="text" name="user_email" class="form-control input-sm" placeholder="이메일" required="" value="${userDto.user_email }" id="user_email">
				               			<div id="user_emailDiv"></div>
											<button class="btn btn-primary" style="display:none;" data-email-type="UPDATE_EMAIL" type="button" id="verify-email-btn">인증</button>
											<button class="btn btn-success" style="display:none;" type="button" id="verify-email-retry-btn">재전송</button>	               			
				               		</div>
				               		
				               	</div>                   
			                </fieldset>
			                <button class="btn btn-primary btn-block" type="submit" id="userUpdateBtn">정보 수정</button>
			            </form>
		
			        </div><!-- panel panel-default -->
		       
			       <div class="panel panel-default">
			            <div class="panel-heading">
			                <a href="/bitcampfire/user/userPasswordChange" class="btn btn-info btn-block">비밀번호 변경</a>
			                <a href="/bitcampfire/user/userDeleteConfirm" class="btn btn-default btn-block">회원 탈퇴</a>
			            </div>
			        </div>
			    </div><!-- col-md-6 main-block-left --> 	   
			</div>	<!-- content-header -->
		</div> <!-- create-user -->         
   </div> <!-- main -->   
</div> <!-- layout-container -->
<script type="text/javascript">
$(function(){
	$.ajax({
		type: 'post',
		url: '/bitcampfire/user/getUser',
		//data: 'user_id=' + $('#user_id').val(),
		dataType: 'json',
		success: function(data){
			alert(JSON.stringify(data));
			/*
			$('#user_name').val(data.user_name);
			$('#user_nickname').val(data.user_nickname);
			$('#user_email').val(data.user_email);
			
		
			$('#user_id').val(data.user_id);
			$('#user_email').val(data.user_email);
			$('#user_pwd').val(data.user_pwd);
			$('#user_nickname').val(data.user_nickname);
			$('#user_name').val(data.user_name);
			$('#user_classid').val(data.user_classid);
			$('#user_img').val(data.user_img);
			$('#user_logtime').val(data.user_logtime);
			$('#user_auth').val(data.user_auth);
			$('#user_grade').val(data.user_grade);
			$('#user_ip').val(data.user_ip);
			$('#user_salt').val(data.user_salt);
			$('#user_social').val(data.user_social);
			*/

		},
		error: function(err){
			console.log(err);
		}
	});
});
</script>
<script type="text/javascript">
//회원정보 수정
$('#userUpdateBtn').click(function(){
	$('#user_nameDiv').empty();
	$('#user_nicknameDiv').empty();
	$('#user_emailDiv').empty();
	
	if($('#user_name').val()=='') {
		$('#user_nameDiv').html('이름 입력');
		$('#user_nameDiv').css('color', 'red');
		$('#user_nameDiv').css('font-size', '8pt');
		$('#user_nameDiv').css('font-weight', 'bold');

	}else if($('#user_nickname').val()=='') {
		$('#user_nicknameDiv').html('닉네임 입력');
		$('#user_nicknameDiv').css('color', 'red');
		$('#user_nicknameDiv').css('font-size', '8pt');
		$('#user_nicknameDiv').css('font-weight', 'bold');
		
	}else if($('#user_emailname').val()=='') {
		$('#user_emailDiv').html('이메일 입력');
		$('#user_emailDiv').css('color', 'red');
		$('#user_emailDiv').css('font-size', '8pt');
		$('#user_emailDiv').css('font-weight', 'bold');
		
	}else {
		$('#updateForm').submit();
		/*
		$.ajax({
			type: 'post',
			url: '/bitcampfire/user/update',
			data: $('#updateForm').serialize(),
			success: function(){
				alert('회원님의 정보를 수정하였습니다.')
				location.href = '/bitcampfire/user/updateForm';
			},
			error: function(err){
				console.log(err);
			}
		});
		*/
	}
});
</script>

</body>
</html>