package dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import entity.product;

@Repository("product_dao")
public interface product_dao {
	
	@Select("select * from product ${where} ${limit}")
	public List<product> index();
	
	@Select("select * from product where id=#{id}")
	public product getById(int id);
	
}
