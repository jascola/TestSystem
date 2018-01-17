package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import dao.RecognizDao;
import entity.Recogniz;


@Service
public class RecognizService {

	@Autowired
	private RecognizDao dao;
	public List<Recogniz> queryAll() {
		/*System.out.println("size:"+this.dao.queryAll().size());*/
		return this.dao.queryAll();
	}
	
	public List<Recogniz> query(Recogniz rec) {
		/*System.out.println("size:"+this.dao.queryAll().size());*/
		return this.dao.query(rec);
	}
	
	public Recogniz queryById(Integer id) {
		return this.dao.queryById(id);
	}

	@Transactional
	public int insert(Recogniz rec) {
		System.out.println("service zhixing");
		return this.dao.insert(rec);
	}

	@Transactional
	public int update(Recogniz rec) {
		return this.dao.update(rec);
	}

	@Transactional
	public int delete(Integer id) {
		return this.dao.delete(id);
	}
}
