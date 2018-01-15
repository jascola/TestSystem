package dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import entity.Subject;
import entity.User;

@Repository
public interface SubjectDao {
	
	List<Subject> queryAll();//查全部
	
	Subject queryById(Integer id);//根据id查单个
	
	int insert(Subject sub);//插入一个实体
	
	int delete(Integer id);
	
	int update(Subject sub);
}
