package net.jakir.deptemp.pojo.validator;

import net.jakir.deptemp.pojo.EmployeeVO;
import net.jakir.deptemp.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class EmpvoValidator implements Validator {

    @Autowired
    private EmployeeService ems;

    @Override
    public boolean supports(Class<?> paramClass) {
        return EmployeeVO.class.equals(paramClass);
    }

    @Override
    public void validate(Object obj, Errors errors) {
        EmployeeVO emp = (EmployeeVO) obj;
//        if(proj.getProjectNumber().equals("1")){
//            errors.rejectValue("projectNumber", "project.number.duplicated", "Wrong Number");
//        }
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "emp.firstname.required","default wrong name");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "emp.lastname.required","default wrong name");
        if(!errors.hasErrors()){
//            if(projectService.findProjectByName(proj.getProjectName())!=null){
//                errors.rejectValue("projectName", "project.name.duplicated", "Wrong Name");
//            }
//            if(projectService.findProjectByNum(proj.getProjectNumber())!=null){
//                errors.rejectValue("projectNumber", "project.number.duplicated", "Wrong Number");
//            }
        }
    }
}