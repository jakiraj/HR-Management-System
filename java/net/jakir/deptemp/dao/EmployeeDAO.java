package net.jakir.deptemp.dao;

import java.util.List;

import net.jakir.deptemp.entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface EmployeeDAO extends JpaRepository<Employee, Integer>{

	@Query("select DISTINCT OBJECT(e) from Employee e ")
	List<Employee> getEmployeeList();

}
