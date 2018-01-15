package dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import entity.Subject;
import entity.User;

@Repository
public interface SubjectDao {
	
	List<Subject> queryAll();//��ȫ��
	
	Subject queryById(Integer id);//����id�鵥��
	
	int insert(Subject sub);//����һ��ʵ��
	
	int delete(Integer id);
	
	int update(Subject sub);
}
