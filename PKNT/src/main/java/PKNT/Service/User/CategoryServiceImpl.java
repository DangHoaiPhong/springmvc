package PKNT.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import PKNT.Dao.ProductsDao;
import PKNT.Dto.ProductsDto;
@Service
public class CategoryServiceImpl implements ICategoryService {
	@Autowired
	private ProductsDao productsDao;
	
	public List<ProductsDto> GetAllProductsID(int id) {
		return productsDao.GetAllProductsID(id);
	}
	
	public List<ProductsDto> GetDataProductsPaginate(int id, int start, int totalPage) {
		return productsDao.GetDataProductsPaginate(id,start, totalPage);
	}

}
