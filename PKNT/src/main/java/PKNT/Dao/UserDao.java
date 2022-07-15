package PKNT.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import PKNT.Dto.MapperProductsDto;
import PKNT.Dto.ProductsDto;
import PKNT.Entity.Category;
import PKNT.Entity.MapperCategory;
import PKNT.Entity.MapperUser;
import PKNT.Entity.User;

@Repository
public class UserDao extends BaseDao {

	public int AddAccount(User user) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO users ");
		sql.append("( ");
		sql.append("    user, ");
		sql.append("    password, ");
		sql.append("    username, ");
		sql.append("    address ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("    '"+user.getUser()+"',");
		sql.append("    '"+user.getPassword()+"',");
		sql.append("    '"+user.getUsername()+"',");
		sql.append("    '"+user.getAddress()+"' ");
		sql.append(")");	
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
	public List<User>GetDataUser(){
		List<User> list = new ArrayList<User>();
		String sql = "SELECT * FROM users" ;
		list = _jdbcTemplate.query(sql, new MapperUser());
		return list;
	}
	public User GetUser(User user) {
		String sql = "SELECT * FROM users WHERE user = '"+user.getUser()+"'";
		User result = _jdbcTemplate.queryForObject(sql, new MapperUser());	
		return result;
	}
}
