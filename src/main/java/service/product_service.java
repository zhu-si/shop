package service;

import java.util.List;

import entity.product;
import searchInfo.SearchInfo;

public interface product_service {
	
	public List<product> index(SearchInfo info);
	
	public product getById(int id);
	
}
