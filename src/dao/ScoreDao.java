package dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import entity.Score;

@Repository
public interface ScoreDao {
	
	List<Score> queryAll();//��ȫ��
	
	Score queryById(Integer id);//����id�鵥��
	
	int insert(Score sco);//����һ��ʵ��
	
	int delete(Integer id);
	
	int update(Score sco);	
}
