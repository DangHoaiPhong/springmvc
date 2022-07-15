package PKNT.Service.User;

import org.springframework.stereotype.Service;

import PKNT.Entity.User;
@Service
public interface IAccountService {
	public int AddAccount(User user);
	public User CheckAccount(User user);
	
}
