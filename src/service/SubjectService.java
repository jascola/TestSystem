package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import dao.SubjectDao;
import entity.Subject;


@Service
public class SubjectService {

	@Autowired
	private SubjectDao dao;
	public List<Subject> queryAll() {
		/*System.out.println("size:"+this.dao.queryAll().size());*/
		return this.dao.queryAll();
	}
	
	public Subject queryById(Integer id) {
		return this.dao.queryById(id);
	}
	
	public List<Subject> queryByName(String subjectName) {
		System.out.println("queryByName service working..."+ " name:"+ subjectName);
		return this.dao.queryByName(subjectName);
	}

	@Transactional
	public int insert(Subject sub) {
		System.out.println("insert service working...");
		return this.dao.insert(sub);
	}

	@Transactional
	public int update(Subject sub) {
		return this.dao.update(sub);
	}

	@Transactional
	public int delete(Integer id) {
		return this.dao.delete(id);
	}
}
