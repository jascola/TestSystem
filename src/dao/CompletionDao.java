package dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import entity.Choice;
import entity.Completion;
import entity.Optionz;
import entity.Subject;

@Repository
public interface CompletionDao {
	
	List<Completion> queryAll();//查全部
	
	List<Completion> query(Completion com);
	
	Completion queryById(Integer id);//根据id查单个
	
	int insert(Completion com);//插入一个实体
	
	int delete(Integer id);
	
	int update(Completion com);
	
	List<Completion> queryBySubjectId(Integer subjectId);
}
