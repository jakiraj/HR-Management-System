package net.jakir.deptemp.service;

import java.util.List;

import net.jakir.deptemp.entity.Employee;
import net.jakir.deptemp.pojo.EmployeeVO;

public interface EmployeeService {

	public List<Employee> loadEmpBasicInfo();

	public Employee getEmpById(int i);

    void saveEmployee(EmployeeVO emp);
}
