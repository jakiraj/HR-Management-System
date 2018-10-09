package net.jakir.deptemp.utility;

import net.jakir.deptemp.dao.DepartmentDAO;
import net.jakir.deptemp.entity.Department;
import net.jakir.deptemp.entity.DeptEmpCode;
import net.jakir.deptemp.entity.Employee;
import net.jakir.deptemp.pojo.DepartmentVO;
import net.jakir.deptemp.pojo.EmployeeVO;

public class DomainVOConverter {
    public static Employee convertEmpVOtoEmp(EmployeeVO empVO) {
        Employee employee = new Employee();
        employee.setAddress(empVO.getAddress());
        employee.setContact(empVO.getEmail());
        employee.setFirstName(empVO.getFirstName());
        employee.setLastName(empVO.getLastName());
        employee.setStatus(new DeptEmpCode(empVO.getStatusId()));
        return employee;
    }

    public static Department convertDeptVOtoDomain(DepartmentVO vo) {
        Department dept = new Department();
        dept.setName(vo.getName());
        dept.setEmail(vo.getEmail());
        dept.setContact(vo.getPhone());
        dept.setDesc(vo.getDesc());
        dept.setStatus(new DeptEmpCode(vo.getStatusId()));
        return dept;
    }
}
