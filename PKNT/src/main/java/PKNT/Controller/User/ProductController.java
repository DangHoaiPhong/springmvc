package PKNT.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import PKNT.Service.User.IProductService;

@Controller
public class ProductController extends BaseController {
	
	@Autowired
	private IProductService _productService;
	
	@RequestMapping(value= {"chi-tiet-san-pham/{id}"})
	public ModelAndView  Index(@PathVariable long id) {
		_mvShare.setViewName("/user/products/product");
		_mvShare.addObject("product", _productService.GetProductsOneID(id));
		int idCategory = _productService.GetProductsOneID(id).getId_category();
		_mvShare.addObject("productIDCategory", _productService.GetProductIDCategory(idCategory));
		return _mvShare;
	}
}
