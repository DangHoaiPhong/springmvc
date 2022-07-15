package PKNT.Controller.Amin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import PKNT.Service.User.AdminServiceImpl;
import PKNT.Service.User.ProductService;
@Controller
public class AdminCotroller extends BaseCotroller {
	@Autowired
	ProductService productService;
	@Autowired
	AdminServiceImpl adminServiceImpl;
	
	@RequestMapping(value= {"/quan-tri/"})
	public ModelAndView  Index() {
		_mvShare.setViewName("/admin/index");
		return _mvShare;
	}
	//sản phẩm
	@RequestMapping(value= {"/quan-tri/quan-li-san-pham"})
	public ModelAndView  productsAll() {
		_mvShare.setViewName("/admin/productsAll");
		_mvShare.addObject("products",productService.GetDataProductsAll());
		return _mvShare;
	}
	@RequestMapping(value= {"/quan-tri/quan-li-san-pham/them-san-pham"})
	public ModelAndView  AddProducts() {
		_mvShare.setViewName("/admin/Add/AddPro");
		return _mvShare;
	}
	//loại sản phẩm
	@RequestMapping(value= {"/quan-tri/quan-li-loai"})
	public ModelAndView  cateegoryAll() {
		_mvShare.setViewName("/admin/categoryAll");
		_mvShare.addObject("category",_homeService.GetDataCategory());
		return _mvShare;
	}
	@RequestMapping(value= {"/quan-tri/quan-li-san-pham/them-loai"})
	public ModelAndView  AddCategory() {
		_mvShare.setViewName("/admin/Add/AddCategory");
		return _mvShare;
	}
	//----------------------------------------------
	@RequestMapping(value= {"/quan-tri/quan-li-don"})
	public ModelAndView  billAll() {
		_mvShare.setViewName("/admin/bill");
		_mvShare.addObject("bills",adminServiceImpl.GetDataBill());
		return _mvShare;
	}
	@RequestMapping(value= {"/quan-tri/quan-li-chi-tiet-don"})
	public ModelAndView  billDetail() {
		_mvShare.setViewName("/admin/billdetail");
		_mvShare.addObject("billdetail",adminServiceImpl.GetDataBillDetail());
		return _mvShare;
	}
	@RequestMapping(value= {"/quan-tri/quan-li-thong-tin-khach"})
	public ModelAndView  user() {
		_mvShare.setViewName("/admin/userAll");
		_mvShare.addObject("user",adminServiceImpl.GetDataUser());
		return _mvShare;
	}
}
