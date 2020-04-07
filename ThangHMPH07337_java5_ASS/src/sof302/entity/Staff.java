package sof302.entity;

import java.util.Collection;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "Staffs")
public class Staff {
	@Id
	@GeneratedValue
	private Integer id;
	
	@NotBlank(message = "Vui lòng nhập tên nhân viên !")
	private String name;
	private boolean gender;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@NotNull(message = "Vui Lòng nhập ngày/tháng/năm")
	private Date birthday;
	
	@NotBlank(message = "vui lòng nhập email (ex:abc123@gmail)")
	private String email;
	
	@NotBlank(message = "Vui lòng nhập số điện thoại !")
	@Length(min = 10, max = 10, message = "Vui lòng nhập đủ số điện thoại !")
	private String phone;
	
	@NotNull(message = "Vui Lòng nhập lương !")
	private Float salary;
	private Integer lever;
	private	String notes;
	
	@OneToMany(mappedBy = "staff", fetch = FetchType.EAGER)
	private Collection<Record> records;
	
	@ManyToOne
	@JoinColumn(name = "departid")
	private Depart depart;	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public boolean isGender() {
		return gender;
	}
	public void setGender(boolean gender) {
		this.gender = gender;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Float getSalary() {
		return salary;
	}
	public void setSalary(Float salary) {
		this.salary = salary;
	}
	public String getNotes() {
		return notes;
	}
	public void setNotes(String notes) {
		this.notes = notes;
	}
	public Collection<Record> getRecord() {
		return records;
	}
	public void setRecords(Collection<Record> records) {
		this.records = records;
	}
	public Depart getDepart() {
		return depart;
	}
	public void setDepart(Depart depart) {
		this.depart = depart;
	}
	public Integer getLever() {
		return lever;
	}
	public void setLever(Integer lever) {
		this.lever = lever;
	}
}
