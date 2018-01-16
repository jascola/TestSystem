package dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import entity.Score;
import entity.ScoreQueryDto;

@Repository
public interface ScoreDao {
	
	List<Score> queryAll();//查全部
	
	Score queryById(Integer id);//根据id查单个
	
	List<ScoreQueryDto> query(ScoreQueryDto sqd);
	
	int insert(Score sco);//插入一个实体
	
	int delete(Integer id);
	
	int update(Score sco);	
}
