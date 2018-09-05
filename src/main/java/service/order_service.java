package service;

import java.util.List;

import entity.orders;
import entity.orders_details;
import entity.orders_status;

public interface order_service {
	
	public List<orders> def();

	public void insert(orders r);
	
	public List<orders> getId(int id);

	public List<orders> getById();

	public orders code(String code);
	
	public void add(orders_details od);
	
	public void addStatus(orders_status os);
}
