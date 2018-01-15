package dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import entity.Score;
import entity.Subject;
@Repository
public interface ScoreDao {
	
	List<Score> query();//查全部
	
	Subject queryById(Integer id);//根据id查单个
	
	int insert(Score sco);//插入一个实体
	
	int delete(Integer id);
	
	int update(Score sco);	
}
