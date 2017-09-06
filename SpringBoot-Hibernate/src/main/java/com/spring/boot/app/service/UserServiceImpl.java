package com.spring.boot.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.spring.boot.app.dao.UserDao;
import com.spring.boot.app.model.UserDetails;

public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	public List<UserDetails> getUserDetails() {
		return userDao.getUserDetails();
	}

}
