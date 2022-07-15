package PKNT.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import PKNT.Entity.Category;
import PKNT.Entity.MapperCategory;
@Repository
public class CategoryDao extends BaseDao {
	
	public List<Category>GetDataCategory(){
		List<Category> list = new ArrayList<Category>();
		String sql = "SELECT * FROM category" ;
		list = _jdbcTemplate.query(sql, new MapperCategory());
		return list;
	}
}
