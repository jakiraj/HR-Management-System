package net.jakir.deptemp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping({"","/"})
public class LoginController {

	static Logger logger = LoggerFactory.getLogger(LoginController.class);

	@RequestMapping(method=RequestMethod.GET)
	public String showIndex(ModelMap model) {
		logger.error("Hi");
		return "redirect:/main";
	}
	
	@RequestMapping("/login")
	public String showLogin(ModelMap model) {
		return "login";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/login?logout";
	}

	@RequestMapping(value = "/deny", method = RequestMethod.GET)
	public String accessDenyPage(HttpServletRequest request, HttpServletResponse response) {
		return "deny";
	}
	@RequestMapping(value = "/server_error")
	public String error(ModelMap model) {
		return "error/server_error";
	}
}
