package service;

import java.util.List;

import entity.shopcar;

public interface shopcar_service {
	
	public List<shopcar> shopcar(int id);
	
	public void insert(int product_id,int count,int user_id);
	
	public void update(shopcar car);
	
	public void delete(int id);
	
	public shopcar getById(int id);

	
	
}
