package dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import entity.Choice;
import entity.Option;
import entity.Subject;
@Repository
public interface OptionDao {
	
	List<Option> query();//查全部
	
	Subject queryById(Integer id);//根据id查单个
	
	int insert(Option op);//插入一个实体
	
	int delete(Integer id);
	
	int update(Option op);
}
