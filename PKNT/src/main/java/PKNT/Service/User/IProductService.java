package PKNT.Service.User;
import java.util.List;

import org.springframework.stereotype.Service;

import PKNT.Dto.ProductsDto;
@Service
public interface IProductService {
	public ProductsDto GetProductsOneID(long id);
	
	public List<ProductsDto> GetProductIDCategory(int id);
	
	public List<ProductsDto> GetDataProductsAll();
	
}
