package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import dao.UserDao;
import entity.User;
import entity.UserQueryDto;

@Service
public class UserService {

	@Autowired
	private UserDao dao;
	
	public List<User> query(UserQueryDto user){
		return this.dao.query(user);
	}
	
	public List<User> queryAll() {
		System.out.println("size:"+this.dao.queryAll().size());
		return this.dao.queryAll();
	}
	
	public User queryById(Integer id) {
		return this.dao.queryById(id);
	}
	public User queryByName(String name) {
		return this.dao.queryByName(name);
	}

	@Transactional
	public int insert(User user) {
		System.out.println("service zhixing");
		return this.dao.insert(user);
	}

	@Transactional
	public int update(User user) {
		return this.dao.update(user);
	}

	@Transactional
	public int delete(Integer id) {
		return this.dao.delete(id);
	}
	
	
}
