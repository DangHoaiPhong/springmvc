package PKNT.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import PKNT.Dao.CategoryDao;
import PKNT.Dao.ProductsDao;
import PKNT.Dao.SlidesDao;
import PKNT.Dto.ProductsDto;
import PKNT.Entity.Category;
import PKNT.Entity.Slides;
@Service
public class HomeServiceImpl implements IHomeService{
	@Autowired
	private SlidesDao slidesDao;
	@Autowired
	private CategoryDao categoryDao;
	@Autowired
	private ProductsDao productsDao;
	public List<Slides> GetDataSlide() {
		// TODO Auto-generated method stub
		return slidesDao.GetDataSlide();
	}
	public List<Category> GetDataCategory() {
		// TODO Auto-generated method stub
		return categoryDao.GetDataCategory();
	}

	@Override
	public List<ProductsDto> GetDataProducts() {
		// TODO Auto-generated method stub
		List<ProductsDto> listProducts = productsDao.GetDataProducts();
		return listProducts;
	}
	
	
}
