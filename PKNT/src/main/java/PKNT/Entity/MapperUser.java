package PKNT.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperUser implements RowMapper<User> {

	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		User user = new User();
		user.setId(rs.getInt("id"));
		user.setUser(rs.getString("user"));
		user.setPassword(rs.getString("password"));
		user.setUsername(rs.getString("username"));
		user.setAddress(rs.getString("address"));
		return user;
	}
}
