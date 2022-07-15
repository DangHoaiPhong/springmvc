package PKNT.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import PKNT.Entity.BillDetail;
import PKNT.Entity.Bills;
import PKNT.Entity.User;
@Service
public interface IAdminService {
	public List<Bills>GetDataBill();
	public List<BillDetail>GetDataBillDetail();
	public List<User>GetDataUser();
	
}
