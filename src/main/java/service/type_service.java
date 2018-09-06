package service;

import java.util.List;

import entity.type;
import searchInfo.SearchInfo;

public interface type_service {
	
	public List<type> def(SearchInfo info);

	public void insert(type t);

	public void delete(int id);
	
	public type getById(int id);

	public void update(type t);
	
	public type getByName(String name);

	public List<type> getByParentid(Integer parentid);

	public List<type> sear(String name);
}
