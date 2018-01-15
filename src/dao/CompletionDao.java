package dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import entity.Completion;
import entity.Optionz;
import entity.Subject;

@Repository
public interface CompletionDao {
	
	List<Completion> query();//��ȫ��
	
	Subject queryById(Integer id);//����id�鵥��
	
	int insert(Completion com);//����һ��ʵ��
	
	int delete(Integer id);
	
	int update(Completion com);
}
