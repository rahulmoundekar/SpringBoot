package com.spring.boot.app.service;

import java.util.List;

import com.spring.boot.app.model.Customer;


public interface CustomerService {
	public List<Customer> getAllCustomers() ;

	public Customer getCustomer(int id) ;

	public void addCustomer(Customer customer);

	public void updateCustomer(Customer customer) ;

	public void deleteCustomer(int id) ;
}
