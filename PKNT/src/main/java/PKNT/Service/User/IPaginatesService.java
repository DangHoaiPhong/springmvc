package PKNT.Service.User;

import org.springframework.stereotype.Service;

import PKNT.Dto.PaginatesDto;

@Service
public interface IPaginatesService {
	public PaginatesDto GetInfoPaginates(int totalData,int limit,int currenPage);
	
	
}
