package net.jakir.deptemp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import net.jakir.deptemp.service.DepartmentService;
@Controller
public class MainController {
	@Autowired
	DepartmentService deptService;
	
	@RequestMapping("/main")
	public String showMain(ModelMap model) {
		model.addAttribute("deptList", deptService.loadDeptDetails());
		model.addAttribute("active_tab","home");
		return "welcome";
	}
}
