package dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import entity.shopcar;
import searchInfo.SearchInfo;


public interface shopcar_dao {
	
	@Select(value = "select s.*,p.fullname,p.nowprice,p.pics,u.email from shopcar s INNER JOIN product p inner join user u on p.id=s.product_id and u.id=s.user_id where user_id=#{id}")
	public List<shopcar> shopcar(int id);
	
	
	@Insert("insert into shopcar(product_id,count,user_id) values(#{product_id},#{count},#{user_id})")
	public void insert(@Param("product_id")int product_id,@Param("count") int count,@Param("user_id") int user_id);

	@Update("update shopcar set count=#{count} where id=#{id}")
	public void update(shopcar car);
	
	@Delete("delete from shopcar where id=#{id}")
	public void delete(int id);
	
	@Select(value = "select * from shopcar where id=#{id}")
	public shopcar getById(int id);
}
