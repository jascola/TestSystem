package dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import entity.User;

@Repository
public interface UserDao {

	List<User>   query();//��ȫ��
	
	User queryById(Integer id);//����id�鵥��
	
	int insert(User user);//����һ��ʵ��
	
	int delete(Integer id);
	
	int update(User user);
	
}