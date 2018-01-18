package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import dao.ScoreDao;
import entity.Score;
import entity.ScoreQueryDto;


@Service
public class ScoreService {

	@Autowired
	private ScoreDao dao;
	public List<Score> queryAll() {
		System.out.println("size:"+this.dao.queryAll().size());
		return this.dao.queryAll();
	}
	
	public List<Score> query(ScoreQueryDto sqd) {
		return this.dao.query(sqd);
	}
	
	public List<Score> querystu(ScoreQueryDto sqd) {
		return this.dao.querystu(sqd);
	}
	
	public Score queryById(Integer id) {
		return this.dao.queryById(id);
	}

	@Transactional
	public int insert(Score sco) {
		System.out.println("service zhixing");
		return this.dao.insert(sco);
	}

	@Transactional
	public int update(Score rec) {
		return this.dao.update(rec);
	}

	@Transactional
	public int delete(Integer id) {
		return this.dao.delete(id);
	}
}
