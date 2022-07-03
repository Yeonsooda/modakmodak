package com.modak.user.service;

import java.util.Map;

import com.modak.user.bean.UserDto;

public interface UserService {

	public UserDto getUser(String user_id);

	public void update(Map<String, String> map);

	public void delete(String user_id);
}
