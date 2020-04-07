package sof302.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "Records")
public class Record {
	@Id
	@GeneratedValue
	private Integer id;
	
	@NotNull(message = "Vui Lòng chọn kiểu !")
	private Boolean type;
	
	@NotBlank(message = "Vui Lòng Nhập lý do !")
	private String reason;
	
	
	@Temporal(TemporalType.DATE) 
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@NotNull(message = "Vui Lòng nhập Ngày /Tháng /Năm")
		private Date date;
	
	@ManyToOne
	@JoinColumn(name = "staffid")
	private Staff staff;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Boolean getType() {
		return type;
	}
	public void setType(Boolean type) {
		this.type = type;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Staff getStaff() {
		return staff;
	}
	public void setStaff(Staff staff) {
		this.staff = staff;
	}
}
