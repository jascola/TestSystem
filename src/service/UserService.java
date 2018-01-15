package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.UserDao;
import entity.User;

@Service
public class UserService {

	@Autowired
	private UserDao dao;
	public List<User> queryAll() {
		return this.dao.queryAll();
	}
	
	public User queryById(Integer id) {
		return this.dao.queryById(id);
	}

	@Transactional
	public int insert(User pro) {
		System.out.println("service zhixing");
		return this.dao.insert(pro);
	}

	@Transactional
	public int update(User pro) {
		return this.dao.update(pro);
	}

	@Transactional
	public int delete(Integer id) {
		return this.dao.delete(id);
	}
}
