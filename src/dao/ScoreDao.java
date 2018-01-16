package dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import entity.Score;
import entity.ScoreQueryDto;

@Repository
public interface ScoreDao {
	
	List<Score> queryAll();//��ȫ��
	
	Score queryById(Integer id);//����id�鵥��
	
	List<ScoreQueryDto> query(ScoreQueryDto sqd);
	
	int insert(Score sco);//����һ��ʵ��
	
	int delete(Integer id);
	
	int update(Score sco);	
}
