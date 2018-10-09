package net.jakir.deptemp.service;

import java.util.List;

import net.jakir.deptemp.pojo.EmployeeVO;
import net.jakir.deptemp.utility.DomainVOConverter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.jakir.deptemp.dao.EmployeeDAO;
import net.jakir.deptemp.entity.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	EmployeeDAO empDAO;

	@Override
	public List<Employee> loadEmpBasicInfo() {
		return empDAO.getEmployeeList();
	}

	@Override
	public Employee getEmpById(int id) {
		return empDAO.findOne(id);
	}

	@Override
	public void saveEmployee(EmployeeVO empVO) {
		Employee emp = DomainVOConverter.convertEmpVOtoEmp(empVO);
		empDAO.save(emp);
	}

}
