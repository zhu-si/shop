package dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import entity.address;

@Repository("address_dao")
public interface address_dao {
	
	@Select("select * from address where user_id = #{id}")
	public List<address> getByUser_id(int id);
	
	@Insert("insert into address(user_id,zone,addr,name,tel,status) value(#{user_id},#{zone},#{addr},#{name},#{tel},#{status})")
	public void insert(address add);
	
	
}
