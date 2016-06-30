package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import data.PartsData;

public class PartsDaoImpl implements DataAccessObject<PartsData> {

	private static final long serialVersionUID = 1L;
	private static EntityManagerFactory factory = Persistence.createEntityManagerFactory("persistenceUnit");
	@Override
	public List<PartsData> getAll() {
		EntityManager manager = factory.createEntityManager();
		Query query = manager.createQuery("from PartsData");
		@SuppressWarnings("unchecked")
		List<PartsData> list = query.getResultList();
		manager.close();
		return list;
	}

	@Override
	public PartsData findById(Long l) {
		EntityManager manager = factory.createEntityManager();
		return (PartsData) manager.createQuery("from PartsData where id = " + l).getSingleResult();
	}

	@Override
	public void add(PartsData data) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		manager.persist(data);
		transaction.commit();
		manager.close();

	}

	@Override
	public void update(PartsData data) {
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
	public void delete(PartsData data) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		PartsData delete = manager.merge(data);
		manager.remove(delete);
		transaction.commit();
		manager.close();

	}
}
