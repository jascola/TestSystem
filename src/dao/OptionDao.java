package dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import entity.Choice;
import entity.Option;
import entity.Subject;
@Repository
public interface OptionDao {
	
	List<Option> query();//��ȫ��
	
	Subject queryById(Integer id);//����id�鵥��
	
	int insert(Option op);//����һ��ʵ��
	
	int delete(Integer id);
	
	int update(Option op);
}
