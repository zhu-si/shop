package dao;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import entity.user;

@Repository("login_dao")
public interface login_dao {
	
	
	@Select("select * from user where email=#{email}") 
	public user login(user u);
	
}
