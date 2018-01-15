package dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import entity.Choice;
import entity.Subject;

@Repository
public interface ChoiceDao {
	
	List<Choice> query();//��ȫ��
	
	Subject queryById(Integer id);//����id�鵥��
	
	int insert(Choice cho);//����һ��ʵ��
	
	int delete(Integer id);
	
	int update(Choice cho);
}
