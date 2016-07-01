package data;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

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
	String reqparts;
	@Column
	Long reqnum;
	@OneToMany(mappedBy = "productdata", cascade = CascadeType.ALL)
	List<OrderData> orderdata;
	@Column
    String process;
	@Column
    Long income;

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

	public String getReqparts() {
		return reqparts;
	}

	public void setReqparts(String reqparts) {
		this.reqparts = reqparts;
	}

	public Long getReqnum() {
		return reqnum;
	}

	public void setReqnum(Long reqnum) {
		this.reqnum = reqnum;
	}

    public List<OrderData> getOrderdata() {
        return orderdata;
    }

    public void setOrderdata(List<OrderData> orderdata) {
        this.orderdata = orderdata;
    }

    public String getProcess() {
        return process;
    }

    public void setProcess(String process) {
        this.process = process;
    }

    public Long getIncome() {
        return income;
    }

    public void setIncome(Long income) {
        this.income = income;
    }
}
