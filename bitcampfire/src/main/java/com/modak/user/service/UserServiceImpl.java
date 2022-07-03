package com.modak.user.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.modak.user.bean.UserDto;
import com.modak.user.dao.UserDao;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDao userDao;
	
	@Override
	public UserDto getUser(String user_id) {
		return userDao.getUser(user_id);
	}

	public void update(Map<String, String> map) {
		userDao.update(map);
		
	}

	@Override
	public void delete(String user_id) {
		userDao.delete(user_id);
		
	}

}
