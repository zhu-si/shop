package dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.user;

@Repository("user_dao")
public interface user_dao {
	
	@Select(value = "select * from user ${where} ${limit}")
	public List<user> def();

	@Insert("insert into user(email,password,tel,level,amount,status,comments) values(#{email},#{password},#{tel},#{level},#{amount},#{status},#{comments})")
	public void insert(user u);

	@Update("update user set email=#{email},tel=#{tel},comments=#{comments} where id=#{id}")
	public void update(user u);
	
	@Update("update user set amount=#{amount} where id=#{id}")
	public void updateamount(user us);
	
//	@Delete("delete from user where id=#{id}")
//	public void deleteall(int id);
//	
//	@Delete("delete from user where id=#{id}")
//	public void delete(int id);
	
	@Select("select * from user where id = #{id}")  
	public user getId(int id);
	
	
}
