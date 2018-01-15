package dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import entity.Choice;
import entity.Optionz;
import entity.Subject;
@Repository
public interface OptionzDao {
	
	List<Optionz> query();//查全部
	
	Subject queryById(Integer id);//根据id查单个
	
	int insert(Optionz op);//插入一个实体
	
	int delete(Integer id);
	
	int update(Optionz op);
}
