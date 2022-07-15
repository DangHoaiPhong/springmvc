package PKNT.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import PKNT.Dto.MapperProductsDto;
import PKNT.Dto.ProductsDto;
@Repository
public class ProductsDao extends BaseDao {
	//lấy dữ liệu từ câu truy vấn qua sql 

	private StringBuffer SqlString() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT ");
		sql.append("p.id ");
		sql.append(", p.name ");
		sql.append(", p.price ");
		sql.append(", p.details ");
		sql.append(", p.img ");
		sql.append(", p.id_category ");
		sql.append("FROM ");
		sql.append("products AS p ");
		return sql;
	}
	//hiển thị sản phẩm
	private String SqlProducts() {
		StringBuffer sql = SqlString();
		sql.append("GROUP BY p.id ");
		sql.append("ORDER BY RAND() ");
		sql.append("LIMIT 9 ");
		return sql.toString();
	}
	public List<ProductsDto> GetDataProducts() {
		String sql = SqlProducts();
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new MapperProductsDto());
		return listProducts;
	}
	//lấy tất cả san pham
	private String SqlProductsAll() {
		StringBuffer sql = SqlString();
		return sql.toString();
	}
	public List<ProductsDto> GetDataProductsAll() {
		String sql = SqlProductsAll();
		List<ProductsDto> listProductsall = _jdbcTemplate.query(sql, new MapperProductsDto());
		return listProductsall;
	}
	//sản phẩm theo ID
	private StringBuffer SqlProductsID(int id) {
		StringBuffer sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		sql.append("AND id_category = " + id + " ");
		return sql;
	}
	public List<ProductsDto> GetAllProductsID(int id) {
		String sql = SqlProductsID(id).toString();  
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new MapperProductsDto());
		return listProducts;
	}
	//phân trang sản phẩm theo id
	private String SqlProductsPaganite(int id,int start, int totalPage) {
		StringBuffer sql = SqlProductsID(id); 
		sql.append("LIMIT " + start + ", " + totalPage);
		return sql.toString();
	}
	public List<ProductsDto> GetDataProductsPaginate(int id,int start, int totalPage) {
		StringBuffer sqlgetDataID = SqlProductsID(id);
		List<ProductsDto> listProductsID = _jdbcTemplate.query(sqlgetDataID.toString(), new MapperProductsDto());
		List<ProductsDto> listProducts = new ArrayList<ProductsDto>();
		if(listProductsID.size()>0) {
			String sql = SqlProductsPaganite(id, start, totalPage);  
			listProducts = _jdbcTemplate.query(sql, new MapperProductsDto());
		}
		return listProducts;
	}
	//chi tiết sản phẩm theo id
	private String SqlProductOneID(long id) {
		StringBuffer sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		sql.append("AND p.id = " + id + " ");
		sql.append("LIMIT 1 ");
		return sql.toString();
	}
	public List<ProductsDto> GetProductsOneID(long id) {
		String sql = SqlProductOneID(id);
		List<ProductsDto> listProductsOneID = _jdbcTemplate.query(sql, new MapperProductsDto());
		return listProductsOneID;
	}
	public ProductsDto FindProductsOneID(long id) {
		String sql = SqlProductOneID(id);
		ProductsDto product = _jdbcTemplate.queryForObject(sql, new MapperProductsDto());
		return product;
	}
}
