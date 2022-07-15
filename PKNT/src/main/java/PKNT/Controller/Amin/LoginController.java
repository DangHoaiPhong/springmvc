package PKNT.Controller.Amin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class LoginController extends BaseCotroller {
	
	@RequestMapping(value= "/account", method = RequestMethod.GET)
	public ModelAndView  login() {
		_mvShare.setViewName("/account/admin");
		return _mvShare;
	}
	@RequestMapping(value= "/account", method = RequestMethod.POST)
	public ModelAndView  Checklogin() {
		_mvShare.setViewName("/account/admin");
		return _mvShare;
	}
}
