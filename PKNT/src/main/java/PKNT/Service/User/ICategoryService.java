package PKNT.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import PKNT.Dto.ProductsDto;
@Service
public interface ICategoryService {
	public List<ProductsDto> GetAllProductsID(int id);
}
