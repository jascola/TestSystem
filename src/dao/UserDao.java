package dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import entity.User;

@Repository
public interface UserDao {

	List<User> queryAll();//��ȫ��
	
	User queryById(Integer id);//����id�鵥��
	
	int insert(User user);//����һ��ʵ��
	
	int delete(Integer id);
	
	int update(User user);
	
}
