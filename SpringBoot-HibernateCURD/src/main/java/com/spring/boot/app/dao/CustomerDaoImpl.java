package com.spring.boot.app.dao;

import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.boot.app.model.Customer;

@Repository
public class CustomerDaoImpl implements CustomerDao {

	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	public List<Customer> getAllCustomers() {
		Session session = this.sessionFactory.openSession();
		List<Customer> customerList = session.createQuery("from Customer")
				.list();
		return customerList;
	}

	public Customer getCustomer(int id) {
		Session session = this.sessionFactory.openSession();
		Customer customer = (Customer) session.get(Customer.class, id);
		return customer;
	}

	public Customer addCustomer(Customer customer) {
		Session session = this.sessionFactory.openSession();
		session.save(customer);
		return customer;
	}

	public void updateCustomer(Customer customer) {
		Session session = this.sessionFactory.openSession();
		Hibernate.initialize(customer);
		session.update(customer);
	}

	public void deleteCustomer(int id) {
		Session session = this.sessionFactory.openSession();
		Customer p = (Customer) session.load(Customer.class, new Integer(id));
		if (null != p) {
			session.delete(p);
		}
	}
}
