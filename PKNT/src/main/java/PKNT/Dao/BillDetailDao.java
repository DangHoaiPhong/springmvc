package PKNT.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import PKNT.Entity.BillDetail;
import PKNT.Entity.MapperBillDetail;
@Repository
public class BillDetailDao extends BaseDao {
	public List<BillDetail>GetDataBillDetail(){
		List<BillDetail> list = new ArrayList<BillDetail>();
		String sql = "SELECT * FROM billdetail" ;
		list = _jdbcTemplate.query(sql, new MapperBillDetail());
		return list;
	}
}
