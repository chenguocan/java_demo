package com.user.mapper;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.*;
public interface CustomerMapper {
     public List<Customer> findAll();
     public Customer queryById(int id);
     public int deleteCustomer(int cust_id);
     public int updateCustomer(Customer customer);
     public int addCustomer(Customer customer);
}
