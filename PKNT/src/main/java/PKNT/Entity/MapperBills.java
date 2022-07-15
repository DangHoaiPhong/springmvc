package PKNT.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperBills implements RowMapper<Bills> {
	public Bills mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Bills bills = new Bills();
		bills.setId(rs.getInt("id"));
		bills.setUser(rs.getString("user"));
		bills.setPhone(rs.getString("phone"));
		bills.setUsername(rs.getString("username"));
		bills.setAddress(rs.getString("address"));
		bills.setTotal(rs.getDouble("total"));
		bills.setQuanty(rs.getInt("quanty"));
		bills.setNote(rs.getString("note"));
		return bills;
	}
}
