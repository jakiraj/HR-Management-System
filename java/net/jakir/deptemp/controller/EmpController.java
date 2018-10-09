package net.jakir.deptemp.controller;

import net.jakir.deptemp.pojo.EmployeeVO;
import net.jakir.deptemp.pojo.validator.EmpvoValidator;
import net.jakir.deptemp.service.CodeService;
import net.jakir.deptemp.service.DepartmentService;
import net.jakir.deptemp.utility.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import net.jakir.deptemp.service.EmployeeService;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class EmpController {
	
	@Autowired
	private EmployeeService ems;

	@Autowired
	private EmpvoValidator validator;

	@Autowired
	private DepartmentService deptService;

	@Autowired
	CodeService codeService;

	@InitBinder
	private void initBinder(WebDataBinder binder) {
		binder.setValidator(validator);
		binder.registerCustomEditor( Date.class, new CustomDateEditor( new SimpleDateFormat( "MM/dd/yyyy"), true ));
		binder.registerCustomEditor( String.class, new StringTrimmerEditor( true ));
	}

	@RequestMapping("/manageEmp")
	public String manageEmp(ModelMap model) {
		model.addAttribute("active_tab","manage_emp");
		model.addAttribute("employeeList", ems.loadEmpBasicInfo());
		return "manage_emp";
	}

	@GetMapping("/createEmp")
	public String showCreateEmp(ModelMap model, @ModelAttribute("emp") EmployeeVO emp) {
		model.addAttribute("active_tab","new_emp");
		model.addAttribute("statusCodeList", codeService.getCodeByType(Constants.EMP_STATUS));
		model.addAttribute("deptList", deptService.loadDeptBasicInfo());
	emp.setFirstName("HELLO");
		return "createEmp";
	}

	@PostMapping("/createEmp")
	public String createDept(ModelMap model, @ModelAttribute("emp") @Valid EmployeeVO emp, BindingResult br, RedirectAttributes rediAtrb) {
		if(!br.hasErrors()) {
			ems.saveEmployee(emp);
			rediAtrb.addFlashAttribute("successMsg", "The Employee is Created Successfully!");
			return "redirect:/main";
		}else {
			model.addAttribute("statusCodeList", codeService.getCodeByType(Constants.EMP_STATUS));
			return "createEmp";
		}
	}
}
