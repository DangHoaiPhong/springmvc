package PKNT.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import PKNT.Dto.ProductsDto;
import PKNT.Entity.Category;
import PKNT.Entity.Slides;
@Service
public interface IHomeService {
	public List<Slides>GetDataSlide();
	public List<Category> GetDataCategory();
	public List<ProductsDto> GetDataProducts();
}
