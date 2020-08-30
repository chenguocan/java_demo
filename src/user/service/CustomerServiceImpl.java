package user.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.user.mapper.CustomerMapper;

import pojo.Customer;
@Service
public class CustomerServiceImpl implements CustomerService {
   @Autowired
   CustomerMapper customers;
	@Override
	public List<Customer> findAll() {
		// TODO Auto-generated method stub
		return customers.findAll();
	}
	@Override
	public Customer queryById(int cust_id) {
		// TODO Auto-generated method stub
		return customers.queryById(cust_id);
	}
	@Override
	public int deleteCustomer(int cust_id) {
		// TODO Auto-generated method stub
		return customers.deleteCustomer(cust_id);
	}
	@Override
	public int updateCustomer(Customer customer) {
		// TODO Auto-generated method stub
		return customers.updateCustomer(customer);
	}
	@Override
	public int addCustomer(Customer customer) {
		// TODO Auto-generated method stub
		return customers.addCustomer(customer);
	}
	
}
