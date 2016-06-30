package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import data.OrderData;

public class OrderDaoImpl implements DataAccessObject<OrderData> {

	private static final long serialVersionUID = 1L;
	private static EntityManagerFactory factory = Persistence.createEntityManagerFactory("persistenceUnit");
	@Override
	public List<OrderData> getAll() {
		EntityManager manager = factory.createEntityManager();
		Query query = manager.createQuery("from OrderData");
		@SuppressWarnings("unchecked")
		List<OrderData> list = query.getResultList();
		manager.close();
		return list;
	}

	@Override
	public OrderData findById(Long l) {
		EntityManager manager = factory.createEntityManager();
		return (OrderData) manager.createQuery("from OrderData where id = " + l).getSingleResult();
	}

	@Override
	public void add(OrderData data) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		manager.persist(data);
		transaction.commit();
		manager.close();

	}

	@Override
	public void update(OrderData data) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		manager.merge(data);
		transaction.commit();
		manager.close();

	}

	@Override
	public void delete(Long id) {
		delete(findById(id));

	}

	@Override
	public void delete(OrderData data) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		OrderData delete = manager.merge(data);
		manager.remove(delete);
		transaction.commit();
		manager.close();

	}

}
