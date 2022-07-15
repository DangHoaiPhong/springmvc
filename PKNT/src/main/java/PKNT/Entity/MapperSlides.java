package PKNT.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperSlides implements RowMapper<Slides> {

	public Slides mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Slides slides = new Slides();
		slides.setId(rs.getInt("id"));
		slides.setImg(rs.getString("img"));
		return slides;
	}
	
}
