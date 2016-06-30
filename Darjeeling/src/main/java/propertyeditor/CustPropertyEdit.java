package propertyeditor;

import java.beans.PropertyEditorSupport;

import dao.CustDaoImpl;
import dao.DataAccessObject;
import data.CustomerData;

public class CustPropertyEdit extends PropertyEditorSupport {

	public String getAsText() {
		CustomerData value = (CustomerData) getValue();

		if (value == null) {
			return "";
		} else {
			return "" + value.getId();
		}
	}

	public void setAsText(String value) {
		DataAccessObject<CustomerData> dao = new CustDaoImpl();
		CustomerData customerdata = (CustomerData) dao.findById(Long.parseLong(value));

		setValue(customerdata);
	}
}
