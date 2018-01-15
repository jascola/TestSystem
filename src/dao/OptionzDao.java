package dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import entity.Choice;
import entity.Optionz;
import entity.Subject;
@Repository
public interface OptionzDao {
	
	List<Optionz> queryAll();//��ȫ��
	
	Optionz queryById(Integer id);//����id�鵥��
	
	int insert(Optionz op);//����һ��ʵ��
	
	int delete(Integer id);
	
	int update(Optionz op);
}
