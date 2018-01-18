package dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import entity.Choice;
import entity.ChoiceQueryDto;
import entity.Subject;


@Repository
public interface ChoiceDao {
	
	List<Choice> queryAll();//查全部
	
	Choice queryById(Integer id);//根据id查单个
	
	int insert(Choice cho);//插入一个实体
	
	int delete(Integer id);
	
	int update(ChoiceQueryDto cqd);
	
	List<Choice> query(ChoiceQueryDto cqd);
	
	List<Choice> queryBySubjectId(Integer subjectId);
}
