package PKNT.Service.User;

import org.springframework.stereotype.Service;

import PKNT.Dto.PaginatesDto;
@Service
public class PaginateServiceImpl {
	public PaginatesDto GetInfoPaginates(int totalData,int limit,int currentPage) {
		//set có nghĩa là paginate đã tạo sẽ nhận giá trị truyền vô 		
		PaginatesDto paginate = new PaginatesDto();
		paginate.setLimit(limit);
		paginate.setTotalPage(SetInforTotalPage(totalData, limit));
		paginate.setCurrentPage(CheckCurrentPage(currentPage ,paginate.getTotalPage()));
		int start = FindStart(paginate.getCurrentPage(), limit);
		paginate.setStart(start);
		int end = FindEnd(paginate.getStart(), limit, totalData);
		paginate.setEnd(end);
		
		return paginate;
		
	}

	private int FindEnd(int start, int limit, int totalData) {
		// TODO Auto-generated method stub
		return start + limit > totalData ? totalData : (start + limit) -1;
	}

	private int FindStart(int currentPage, int limit) {
		// TODO Auto-generated method stub
		return ((currentPage - 1) * limit) + 1;
	}

	private int SetInforTotalPage(int totalData, int limit) {
		// TODO Auto-generated method stub
		int totalPage = 0;
		totalPage = totalData / limit;
		totalPage = totalPage * limit < totalData ? totalPage + 1 : totalPage;
		return totalPage;
	}
	public int CheckCurrentPage(int currentPage,int totalPage ) {
		if (currentPage < 1) {
			return 1;
		}
		if (currentPage > totalPage) {
			return totalPage;
		}
		return currentPage;
	}
	
}
