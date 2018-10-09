package net.jakir.deptemp.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "department")
public class Department {
	private Integer id;
	private String name;
	private String email;
	private String desc;
	private String contact;
	private DeptEmpCode status;
	private Set<Employee> employeeList;   

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "dept_id")
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column(name = "dept_name",length=100, nullable=false)
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Column(name = "dept_email",length=150)
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@OneToMany(mappedBy="department", fetch=FetchType.LAZY)    
	// OneToMany here, use mappedBy to find the owning part, fetch type is optional lazy is preferred.
	public Set<Employee> getEmployeeList() {
		return employeeList;
	}
	public void setEmployeeList(Set<Employee> employeeList) {
		this.employeeList = employeeList;
	}
	@Column(name = "descb",length=1000)
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	@Column(name = "contact",length=45)
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	@OneToOne
	@JoinColumn(name = "statusId")
	public DeptEmpCode getStatus() {
		return status;
	}
	public void setStatus(DeptEmpCode status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Department [id=" + id + ", name=" + name + ", email=" + email + ", desc=" + desc + ", contact="
				+ contact + ", status=" + status + "]";
	}
	
}
