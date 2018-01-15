package dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import entity.Recogniz;
import entity.Subject;
@Repository
public interface RecognizDao {
	
	List<Recogniz> query();//查全部
	
	Subject queryById(Integer id);//根据id查单个
	
	int insert(Recogniz rec);//插入一个实体
	
	int delete(Integer id);
	
	int update(Recogniz rec);
}
