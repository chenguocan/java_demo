package user.service;

import java.util.List;

import pojo.*;

public interface UserService {
	public User login(String user_code,String user_password);
    void register(User user);
}
