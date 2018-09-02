package service;

import java.util.List;

import entity.orders;
import entity.orders_details;

public interface order_service {
	
	public List<orders> def();

	public void insert(orders r);

	public void delete(int id);

	public void deleteall(int id);

	public Object getId(int id);

	public orders code(String code);
	
	public void add(orders_details od);
	
}
