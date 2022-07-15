package PKNT.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import PKNT.Dto.MapperProductsDto;
import PKNT.Dto.ProductsDto;
import PKNT.Entity.BillDetail;
import PKNT.Entity.Bills;
import PKNT.Entity.MapperBills;
@Repository
public class BillsDao extends BaseDao {
	public int AddBills(Bills bill) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO bills ");
		sql.append("( ");
		sql.append("    user, ");
		sql.append("    phone, ");
		sql.append("    username, ");
		sql.append("    address, ");
		sql.append("    total, ");
		sql.append("    quanty, ");
		sql.append("    note ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("    '"+bill.getUser()+"',");
		sql.append("    '"+bill.getPhone()+"',");
		sql.append("    '"+bill.getUsername()+"',");
		sql.append("    '"+bill.getAddress()+"',");
		sql.append("    '"+bill.getTotal()+"',");
		sql.append("    '"+bill.getQuanty()+"',");
		sql.append("    '"+bill.getNote()+"' ");
		sql.append(")");	
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
	//lấy thông tin đơn hàng
	public List<Bills>GetDataBill(){
		List<Bills> list = new ArrayList<Bills>();
		String sql = "SELECT * FROM bills" ;
		list = _jdbcTemplate.query(sql, new MapperBills());
		return list;
	}
	public long GetIDLastBills() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT MAX(id) FROM bills;");
		long id = _jdbcTemplate.queryForObject(sql.toString(),new Object[] {}, Long.class);
		return id;
	}
	public int AddBillsDetail(BillDetail billDetail) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO billdetail ");
		sql.append("( ");
		sql.append("    id_product, ");
		sql.append("    id_bills, ");
		sql.append("    quanty, ");
		sql.append("    total ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("    '"+billDetail.getId_product()+"',");
		sql.append("    '"+billDetail.getId_bills()+"',");
		sql.append("    '"+billDetail.getQuanty()+"',");
		sql.append("    '"+billDetail.getTotal()+"' ");
		sql.append(")");	
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
}
