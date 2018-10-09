package net.jakir.deptemp.service;

import java.util.List;

import net.jakir.deptemp.pojo.DepartmentVO;
import net.jakir.deptemp.utility.DomainVOConverter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.jakir.deptemp.utility.Constants;
import net.jakir.deptemp.dao.DepartmentDAO;
import net.jakir.deptemp.entity.Department;
import net.jakir.deptemp.entity.DeptEmpCode;

@Service//use service to indicate it is a service layer
public class DepartmentServiceImpl implements DepartmentService {

	@Autowired
	DepartmentDAO deptDAO;
	
	@Override
	@Transactional
	public void saveDept(DepartmentVO deptVO) {
		Department dept = DomainVOConverter.convertDeptVOtoDomain(deptVO);
		deptDAO.save(dept);
	}

	@Override
	@Transactional
	public List<Department> loadDeptDetails() {
		List<Department> dList = deptDAO.findAllDepartments();
		return dList;
	}

	@Override
	@Transactional()
	public List<Department> loadDeptBasicInfo() {
		return deptDAO.findBasicDeptInfo();
	}

}
