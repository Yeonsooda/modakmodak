package com.modak.user.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class UserDto {
   //user테이블
   private int user_classid;
   private String user_id, user_email, user_pwd, user_name, user_nickname, user_img, user_auth, user_grade, user_ip, user_salt, user_social;
   private Date user_logtime;
   
   //class테이블
   private int class_id;
   private String class_academy,class_class; 
	   

	}

