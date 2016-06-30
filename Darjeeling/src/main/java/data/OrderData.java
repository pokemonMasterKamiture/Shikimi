package data;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class OrderData {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column
	Long id;
	@Column
	String total;// 数
	@Column
	String deadlineMonth;
	@Column
	String deadlineDay;
	@Column
	String deadlineTime;
	@Column
	String deadlineMinute;
	@Column
	String progress;
	@ManyToOne(cascade = CascadeType.ALL)
	CustomerData customerdata;
	@ManyToOne(cascade = CascadeType.ALL)
	ReceiverData receiverdata;
	@ManyToOne(cascade = CascadeType.ALL)
	ProductData productdata;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}


	public OrderData() {
		super();
		customerdata = new CustomerData();
		receiverdata = new ReceiverData();
		productdata = new ProductData();
	}

	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
	}

	public String getProgress() {
		return progress;
	}

	public void setProgress(String progress) {
		this.progress = progress;
	}

	public String getDeadlineMonth() {
		return deadlineMonth;
	}

	public void setDeadlineMonth(String deadlineMonth) {
		this.deadlineMonth = deadlineMonth;
	}

	public String getDeadlineDay() {
		return deadlineDay;
	}

	public void setDeadlineDay(String deadlineDay) {
		this.deadlineDay = deadlineDay;
	}

	public String getDeadlineTime() {
		return deadlineTime;
	}

	public void setDeadlineTime(String deadlineTime) {
		this.deadlineTime = deadlineTime;
	}

	public String getDeadlineMinute() {
		return deadlineMinute;
	}

	public void setDeadlineMinute(String deadlineMinute) {
		this.deadlineMinute = deadlineMinute;
	}

	public CustomerData getCustomerdata() {
		return customerdata;
	}

	public void setCustomerdata(CustomerData customerdata) {
		this.customerdata = customerdata;
	}

	public ReceiverData getReceiverdata() {
		return receiverdata;
	}

	public void setReceiverdata(ReceiverData receiverdata) {
		this.receiverdata = receiverdata;
	}

	public ProductData getProductdata() {
		return productdata;
	}

	public void setProductdata(ProductData productdata) {
		this.productdata = productdata;
	}
}
