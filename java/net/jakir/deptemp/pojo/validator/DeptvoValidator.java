package net.jakir.deptemp.pojo.validator;

import net.jakir.deptemp.entity.Department;
import net.jakir.deptemp.pojo.DepartmentVO;
import net.jakir.deptemp.pojo.EmployeeVO;
import net.jakir.deptemp.service.DepartmentService;
import net.jakir.deptemp.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class DeptvoValidator implements Validator {

    @Autowired
    private DepartmentService deptService;

    @Override
    public boolean supports(Class<?> paramClass) {
        return DepartmentVO.class.equals(paramClass);
    }

    @Override
    public void validate(Object obj, Errors errors) {
        DepartmentVO dept = (DepartmentVO) obj;
//        if(proj.getProjectNumber().equals("1")){
//            errors.rejectValue("projectNumber", "project.number.duplicated", "Wrong Number");
//        }
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "dept.name.required","default wrong name");
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