package PKNT.Dao;

import java.util.ArrayList;
import java.util.List;

import PKNT.Entity.Admin;
import PKNT.Entity.MapperAdmin;

public class AdminDao extends BaseDao {
	public List<Admin>GetDataADmin(){
		List<Admin> list = new ArrayList<Admin>();
		String sql = "SELECT * FROM admin" ;
		list = _jdbcTemplate.query(sql, new MapperAdmin());
		return list;
	}
	public Admin GetAdmin(Admin admin) {
		String sql = "SELECT * FROM admin WHERE user = '"+admin.getUser()+"'";
		Admin result = _jdbcTemplate.queryForObject(sql, new MapperAdmin());	
		return result;
	}
}
