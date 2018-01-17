package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import dao.ChoiceDao;
import entity.Choice;
import entity.ChoiceQueryDto;


@Service
public class ChoiceService {
	@Autowired
	private ChoiceDao dao;
	
	public List<Choice> queryAll() {
		return this.dao.queryAll();
	}
	
	public Choice queryById(Integer id) {
		return this.dao.queryById(id);
	}
	
	public List<Choice> query(ChoiceQueryDto cqd) {
		return this.dao.query(cqd);
	}

	@Transactional
	public int insert(Choice pro) {
		System.out.println(pro);
		return this.dao.insert(pro);
	}

	@Transactional
	public int update(ChoiceQueryDto cqd) {
		return this.dao.update(cqd);
	}

	@Transactional
	public int delete(Integer id) {
		return this.dao.delete(id);
	}
}
