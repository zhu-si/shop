package service;

import java.util.List;

import entity.orders_details;
import searchInfo.SearchInfo;

public interface orders_details_service {
	
	public List<orders_details> select(SearchInfo info);
	
	public void add(orders_details od);
	
}
