package PKNT.Controller.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller 
public class HomeController extends BaseController {
	
	@RequestMapping(value= {"/","/trang-chu"})
	public ModelAndView  Index() {
//		ModelAndView mv = new ModelAndView("/user/index");
		_mvShare.addObject("slides",_homeService.GetDataSlide());
		_mvShare.addObject("category",_homeService.GetDataCategory());
		_mvShare.addObject("products",_homeService.GetDataProducts());
		_mvShare.setViewName("/user/index");
		return _mvShare;
	}
}
