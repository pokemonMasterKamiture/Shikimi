package dao;

import java.io.Serializable;
import java.util.List;

public interface DataAccessObject<T> extends Serializable {
	public List<T> getAll();

	public T findById(Long l);

	public void add(T data);

	public void update(T data);

	public void delete(Long id);

	public void delete(T data);
}
