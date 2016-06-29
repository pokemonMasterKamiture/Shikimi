package data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ReceiverData {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column
	Long id;
	@Column
	String name;
	@Column
	String address;
	@Column
	String tel;
	@Column
	String love;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getLove() {
		return love;
	}

	public void setLove(String love) {
		this.love = love;
	}
}
