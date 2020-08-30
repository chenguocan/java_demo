package user.service;

import java.util.List;

import pojo.Customer;

public interface CustomerService {
	public List<Customer> findAll();
	 public Customer queryById(int id);
	 public int deleteCustomer(int cust_id);
	 public int updateCustomer(Customer customer);
	 public int addCustomer(Customer customer);
}
