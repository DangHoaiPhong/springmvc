package PKNT.Service.User;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import PKNT.Dto.CartDto;
import PKNT.Entity.Bills;
@Service
public interface IBillsService {
	public int AddBills(Bills bill);
	public void AddBillsDetail(HashMap<Long, CartDto> carts);
}
