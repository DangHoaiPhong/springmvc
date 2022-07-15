package PKNT.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import PKNT.Dao.ProductsDao;
import PKNT.Dto.ProductsDto;
@Service
public class ProductService implements IProductService {
	@Autowired
	ProductsDao productDao = new ProductsDao();
	
	public ProductsDto GetProductsOneID(long id) {
		List<ProductsDto> listProductsOneID = productDao.GetProductsOneID(id);
		return listProductsOneID.get(0);
	}

	public List<ProductsDto> GetProductIDCategory(int id) {
		
		return productDao.GetAllProductsID(id);
	}

	public List<ProductsDto> GetDataProductsAll() {
		List<ProductsDto> listProductsall = productDao.GetDataProductsAll();
		return listProductsall;
	}

}
