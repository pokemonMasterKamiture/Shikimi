package data;

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
	String product;
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
	@ManyToOne
	CustomerData customerdata;
	@ManyToOne
	ReceiverData receiverdata;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}


	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
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
}
