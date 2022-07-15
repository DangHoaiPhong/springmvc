package PKNT.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperAdmin implements RowMapper<Admin> {

	public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Admin admin = new Admin();
		admin.setId(rs.getInt("id"));
		admin.setUser(rs.getString("user"));
		admin.setPassword(rs.getString("password"));
		return admin;
	}
}
