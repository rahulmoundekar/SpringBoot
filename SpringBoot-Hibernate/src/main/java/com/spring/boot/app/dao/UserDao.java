package com.spring.boot.app.dao;

import java.util.List;

import com.spring.boot.app.model.UserDetails;

public interface UserDao {
	public List<UserDetails> getUserDetails();
}
