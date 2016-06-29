package data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ProductData {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column
	Long id;
	@Column
	String name;
	@Column
	Long price;
	@Column
	Long tock;
	@Column
	Long reqparts;
	@Column
	Long reqnum;

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

	public Long getPrice() {
		return price;
	}

	public void setPrice(Long price) {
		this.price = price;
	}

	public Long getTock() {
		return tock;
	}

	public void setTock(Long tock) {
		this.tock = tock;
	}

	public Long getReqparts() {
		return reqparts;
	}

	public void setReqparts(Long reqparts) {
		this.reqparts = reqparts;
	}

	public Long getReqnum() {
		return reqnum;
	}

	public void setReqnum(Long reqnum) {
		this.reqnum = reqnum;
	}
}
