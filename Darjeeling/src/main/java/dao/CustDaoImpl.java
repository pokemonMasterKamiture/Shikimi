package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import data.CustomerData;

public class CustDaoImpl implements Dao<CustomerData> {

	private static EntityManagerFactory factory = Persistence.createEntityManagerFactory("persistenceUnit");
	@Override
	public List<CustomerData> getAll() {
		EntityManager manager = factory.createEntityManager();
		Query query = manager.createQuery("from CustomerData");
		@SuppressWarnings("unchecked")
		List<CustomerData> list = query.getResultList();
		manager.close();
		return list;
	}

	@Override
	public CustomerData findById(Long l) {
		EntityManager manager = factory.createEntityManager();
		return (CustomerData) manager.createQuery("from CustomerData where id = " + l).getSingleResult();
	}

	@Override
	public void add(CustomerData data) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		manager.persist(data);
		transaction.commit();
		manager.close();

	}

	@Override
	public void update(CustomerData data) {
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
	public void delete(CustomerData data) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		CustomerData delete = manager.merge(data);
		manager.remove(delete);
		transaction.commit();
		manager.close();

	}

}
