package service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.orders;
import entity.shopcar;

public interface shopcar_service {
	
	public List<shopcar> shopcar(int id);
	
	public void insert(int product_id,int count,int user_id);
	
	public void update(shopcar car);
	
	public void countUp(int id,int count);
	
	public void delete(int id);
	
	public shopcar getById(int id);

	public List<orders> payid(int id);
	
}
