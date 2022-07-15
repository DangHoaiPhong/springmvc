package PKNT.Controller.Amin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import PKNT.Service.User.HomeServiceImpl;
@Controller
public class BaseCotroller {
	@Autowired
	HomeServiceImpl _homeService;
	public ModelAndView _mvShare = new ModelAndView();
}
