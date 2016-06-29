package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import data.ProductData;


public class ProdDaoImpl implements Dao<ProductData> {

	private static final long serialVersionUID = 1L;
	private static EntityManagerFactory factory = Persistence.createEntityManagerFactory("persistenceUnit");
	@Override
	public List<ProductData> getAll() {
		EntityManager manager = factory.createEntityManager();
		Query query = manager.createQuery("from ProductData");
		@SuppressWarnings("unchecked")
		List<ProductData> list = query.getResultList();
		manager.close();
		return list;
	}

	@Override
	public ProductData findById(Long l) {
		EntityManager manager = factory.createEntityManager();
		return (ProductData) manager.createQuery("from ProductData where id = " + l).getSingleResult();
	}

	@Override
	public void add(ProductData data) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		manager.persist(data);
		transaction.commit();
		manager.close();

	}

	@Override
	public void update(ProductData data) {
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
	public void delete(ProductData data) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		ProductData delete = manager.merge(data);
		manager.remove(delete);
		transaction.commit();
		manager.close();

	}
}
