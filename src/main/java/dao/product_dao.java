package dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import entity.product;
import searchInfo.SearchInfo;

@Repository("product_dao")
public interface product_dao {
	
	@Select("select * from product ${where} ${limit}")
	public List<product> select();
	
	@Select("select * from product where id=#{id}")
	public product getById(int id);
	
	@Select("select * from product where type_id=#{id}")
	public List<product> getByType_id(int id);
	
	@Select("select * from product ${where}")
	public List<product> getByType(SearchInfo info);
}
