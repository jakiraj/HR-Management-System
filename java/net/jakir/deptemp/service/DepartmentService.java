package net.jakir.deptemp.service;

import java.util.List;

import net.jakir.deptemp.entity.Department;
import net.jakir.deptemp.pojo.DepartmentVO;

public interface DepartmentService {
	public void saveDept(DepartmentVO dept);

	public List<Department> loadDeptDetails();

	public List<Department> loadDeptBasicInfo();

}
