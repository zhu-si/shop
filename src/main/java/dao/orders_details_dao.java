package dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import entity.orders_details;
import searchInfo.SearchInfo;

@Repository("orders_details_dao")
public interface orders_details_dao {
	
	@Select(value = "select * from orders_details ${where} ${limit}")
	public List<orders_details> select(SearchInfo info);
	
	@Insert("insert into orders_details(orders_id,product_id,count,price,nowprice,comments) values(#{orders_id},#{product_id},#{count},#{price},#{nowprice},#{comments})")
	public void add(orders_details od);
	
//	@Select(value = "select * from orders_details")
//	public List<orders> def();
//	
//	//���ﳵ���ɶ���
//	@Insert("insert into orders(date,code,amount,nowamount,address_id,user_id,status,comments) values(#{date},#{code},#{amount},#{nowamount},#{address_id},#{user_id},#{status},#{comments})")
//	public void insert(orders r);
//	
//	@Select("select * from orders where user_id=#{id}")
//	public List<orders> getId(int id);
//	
//	@Select("select * from orders #{where} #{limit}")
//	public List<orders> priceAll(SearchInfo info);
//	
//	
//	@Select("select d.orders_id,p.fullname,p.pics,d.nowprice,d.count from product p inner join orders_details d on d.product_id=p.id")
//	public List<orders> getById();
//	
//	//���ݶ����Ų�ѯ����id���ɶ�������
//	@Select("select * from orders where code=#{code}")
//	public orders code(String code);
//	
//	@Insert("insert into orders_details(orders_id,product_id,count,price,nowprice,comments) values(#{orders_id},#{product_id},#{count},#{price},#{nowprice},#{comments})")
//	public void add(orders_details od);
//	
//	@Insert("insert into orders_status(orders_id,date,dest_status,info,num,amount,comments) values(#{orders_id},#{date},#{dest_status},#{info},#{num},#{amount},#{comments})")
//	public void addStatus(orders_status os);
}
