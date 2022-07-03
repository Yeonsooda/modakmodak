package com.modak.user.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.modak.user.bean.UserDto;

@Repository
@Transactional
public class UserDaoMyBatis implements UserDao{
	
	@Autowired
	private SqlSession sqlSession = null;
	
	@Override
	public UserDto getUser(String user_id) {
		return sqlSession.selectOne("userSQL.getUser", user_id);
	}

	@Override
	public void update(Map<String, String> map) {
		sqlSession.update("userSQL.update", map);
		
	}

	@Override
	public void delete(String user_id) {
		sqlSession.delete("userSQL.delete", user_id);		
	}


}
