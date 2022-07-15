package PKNT.Dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperProductsDto implements RowMapper<ProductsDto> {

	@Override
	public ProductsDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductsDto products = new ProductsDto();
		products.setId(rs.getLong("id"));
		products.setName(rs.getString("name"));
		products.setPrice(rs.getDouble("price"));
		products.setDetails(rs.getString("details"));
		products.setImg(rs.getString("img"));
		products.setId_category(rs.getInt("id_category"));
		return products;
	}

}
