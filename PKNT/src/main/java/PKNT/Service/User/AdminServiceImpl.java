package PKNT.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import PKNT.Entity.BillDetail;
import PKNT.Entity.Bills;
import PKNT.Entity.User;
import PKNT.Dao.BillDetailDao;
import PKNT.Dao.BillsDao;
import PKNT.Dao.UserDao;
@Service
public class AdminServiceImpl implements IAdminService {

	@Autowired
	private BillsDao billsDao;
	@Autowired
	private BillDetailDao billDetail;
	@Autowired 
	UserDao userDao;
	
	public List<Bills> GetDataBill() {
		
		return billsDao.GetDataBill();
	}

	public List<BillDetail> GetDataBillDetail() {
		
		return billDetail.GetDataBillDetail();
	}

	public List<User> GetDataUser() {

		return userDao.GetDataUser();
	}
	
}
