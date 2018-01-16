package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import dao.ChoiceDao;
import entity.Choice;


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

	@Transactional
	public int insert(Choice pro) {
		System.out.println(pro);
		return this.dao.insert(pro);
	}

	@Transactional
	public int update(Choice pro) {
		return this.dao.update(pro);
	}

	@Transactional
	public int delete(Integer id) {
		return this.dao.delete(id);
	}
}
