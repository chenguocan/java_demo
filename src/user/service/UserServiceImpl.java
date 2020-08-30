package user.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pojo.Customer;
import pojo.User;
import com.user.mapper.*;;
@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper usermapper;

    public void setMapper(UserMapper usermapper) {
    	this.usermapper=usermapper;
    }
 
	@Override
	public User login(String user_code,String user_password) {
		User u=this.usermapper.login(user_code, user_password);
		return u;
		// TODO Auto-generated method stub	
	}

	@Override
	public void register(User user) {
		// TODO Auto-generated method stub
		
	}
  
}
