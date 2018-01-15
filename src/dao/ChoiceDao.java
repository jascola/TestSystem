package dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import entity.Choice;
import entity.Subject;

@Repository
public interface ChoiceDao {
	
	List<Choice> query();//查全部
	
	Subject queryById(Integer id);//根据id查单个
	
	int insert(Choice cho);//插入一个实体
	
	int delete(Integer id);
	
	int update(Choice cho);
}
