package net.jakir.deptemp.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "code")
public class DeptEmpCode {
	private Integer cId;
	private String type;
	private String value;
	private String desc;
	private String inactiveInd;
	public DeptEmpCode() {
	}
	public DeptEmpCode(Integer cId) {
		this.cId = cId;
	}

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "id")
	public Integer getcId() {
		return cId;
	}
	public void setcId(Integer id) {
		this.cId = id;
	}
	@Column(name = "CODE_TYPE",length=45, nullable=false)
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Column(name = "VALUE",length=45, nullable=false)
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	@Column(name = "DESCB",length=45)
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	@Column(name = "INACTIVE_IND",length=1)
	public String getInactiveInd() {
		return inactiveInd;
	}
	public void setInactiveInd(String inactiveInd) {
		this.inactiveInd = inactiveInd;
	}
}
