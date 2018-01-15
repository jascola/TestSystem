package dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import entity.Completion;
import entity.Optionz;
import entity.Subject;

@Repository
public interface CompletionDao {
	
	List<Completion> query();//查全部
	
	Subject queryById(Integer id);//根据id查单个
	
	int insert(Completion com);//插入一个实体
	
	int delete(Integer id);
	
	int update(Completion com);
}
