package service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.orders;
import entity.shopcar;
import searchInfo.SearchInfo;

public interface shopcar_service {
	
	public List<shopcar> shopcar(int id);
	
	public void insert(int product_id,int count,int user_id);
	
	public void update(shopcar car);
	
	public void countUp(int id,int count);
	
	public void del(int id);
	
	public void deletes(String ids);
	
	public shopcar getById(int id);

	public List<orders> payid(int id);
	
	public List<orders> priceAll(SearchInfo info);
	
	public List<shopcar> select(SearchInfo info);
}
