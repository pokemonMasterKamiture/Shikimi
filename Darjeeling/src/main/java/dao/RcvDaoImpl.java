package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import data.ReceiverData;


public class RcvDaoImpl implements DataAccessObject<ReceiverData> {

	private static final long serialVersionUID = 1L;
	private static EntityManagerFactory factory = Persistence.createEntityManagerFactory("persistenceUnit");
	@Override
	public List<ReceiverData> getAll() {
		EntityManager manager = factory.createEntityManager();
		Query query = manager.createQuery("from ReceiverData");
		@SuppressWarnings("unchecked")
		List<ReceiverData> list = query.getResultList();
		manager.close();
		return list;
	}

	@Override
	public ReceiverData findById(Long l) {
		EntityManager manager = factory.createEntityManager();
		return (ReceiverData) manager.createQuery("from ReceiverData where id = " + l).getSingleResult();
	}

	@Override
	public void add(ReceiverData data) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		manager.persist(data);
		transaction.commit();
		manager.close();

	}

	@Override
	public void update(ReceiverData data) {
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
	public void delete(ReceiverData data) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		ReceiverData delete = manager.merge(data);
		manager.remove(delete);
		transaction.commit();
		manager.close();

	}

}
