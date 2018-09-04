package dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import entity.operator;
import entity.user;

@Repository("login_dao")
public interface login_dao {
	
	
	@Select("select * from user where email=#{email}") 
	public user login(user u);
	
	@Select("select * from user where email=#{email}") 
	public user getEmail(String email);
	
	@Insert("insert into user(email,password,tel,level,amount,status,comments) values(#{email},#{password},#{tel},#{level},#{amount},#{status},#{comments})")
	public void insert(user u);
	
}
