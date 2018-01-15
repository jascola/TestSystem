package dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import entity.Choice;


@Repository
public interface ChoiceDao {
	
	List<Choice> queryAll();//��ȫ��
	
	Choice queryById(Integer id);//����id�鵥��
	
	int insert(Choice cho);//����һ��ʵ��
	
	int delete(Integer id);
	
	int update(Choice cho);
}
