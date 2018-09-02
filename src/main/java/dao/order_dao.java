package dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import entity.orders;
import entity.orders_details;
import entity.orders_status;

@Repository("order_dao")
public interface order_dao {
	
	@Select(value = "select * from orders ${where} ${limit}")
	public List<orders> def();
	
	//购物车生成订单
	@Insert("insert into orders(date,code,amount,nowamount,address_id,user_id,status,comments) values(#{date},#{code},#{amount},#{nowamount},#{address_id},#{user_id},#{status},#{comments})")
	public void insert(orders r);

	@Delete("delete from orders where id=#{id}")
	public void deleteall(int id);
	
	@Delete("delete from orders where id=#{id}")
	public void delete(int id);
	
	//根据订单号查询订单id生成订单详情
	@Select("select * from orders where code=#{code}")
	public orders code(String code);
	
	@Insert("insert into orders_details(orders_id,product_id,count,price,nowprice,comments) values(#{orders_id},#{product_id},#{count},#{price},#{nowprice},#{comments})")
	public void add(orders_details od);
	
	@Insert("insert into orders_status(orders_id,date,dest_status,info,num,amount,comments) values(#{orders_id},#{date},#{dest_status},#{info},#{num},#{amount},#{comments})")
	public void addStatus(orders_status os);
}
