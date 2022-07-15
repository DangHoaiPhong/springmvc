package PKNT.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import PKNT.Dto.PaginatesDto;
import PKNT.Service.User.CategoryServiceImpl;
import PKNT.Service.User.PaginateServiceImpl;
@Controller
public class CategoryController extends BaseController {
	
	@Autowired
	private CategoryServiceImpl categoryService;
	
	@Autowired
	private PaginateServiceImpl paginateService;
	
	private int totalProductsPage = 9 ;
	
	@RequestMapping(value= "/san-pham/{id}")
	public ModelAndView  Product(@PathVariable String id) {
		_mvShare.setViewName("/user/products/category");	
		int totalData = categoryService.GetAllProductsID(Integer.parseInt(id)).size();
		PaginatesDto paginatesInfo = paginateService.GetInfoPaginates(totalData, totalProductsPage, 1);		
		_mvShare.addObject("idCategory", id);
		_mvShare.addObject("paginatesInfo", paginatesInfo);
		_mvShare.addObject("ProductsPaganite", categoryService.GetDataProductsPaginate(Integer.parseInt(id),paginatesInfo.getStart(), totalProductsPage));
		return _mvShare;
	}
	@RequestMapping(value= "/san-pham/{id}/{currentPage}")
	public ModelAndView  Product(@PathVariable String id,@PathVariable String currentPage ) {
		_mvShare.setViewName("/user/products/category");	
		int totalData = categoryService.GetAllProductsID(Integer.parseInt(id)).size();
		PaginatesDto paginatesInfo = paginateService.GetInfoPaginates(totalData, totalProductsPage, Integer.parseInt(currentPage));		
		_mvShare.addObject("idCategory", id);
		_mvShare.addObject("paginatesInfo", paginatesInfo);
		_mvShare.addObject("ProductsPaganite", categoryService.GetDataProductsPaginate(Integer.parseInt(id),paginatesInfo.getStart(), totalProductsPage));
		return _mvShare;
	}
}
