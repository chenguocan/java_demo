package com.user.mapper;



import org.apache.ibatis.annotations.Param;

import pojo.Customer;
import pojo.User;

public interface UserMapper {
      User login(@Param("user_code") String user_code,
    		  @Param("user_password") String user_password 
    		  );
    
}
