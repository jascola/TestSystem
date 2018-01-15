package dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import entity.User;

@Repository
public interface UserDao {

	List<User> queryAll();//查全部
	
	User queryById(Integer id);//根据id查单个
	
	int insert(User user);//插入一个实体
	
	int delete(Integer id);
	
	int update(User user);
	
}
