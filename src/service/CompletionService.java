package service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.CompletionDao;
import entity.Completion;

@Service
public class CompletionService {

	@Autowired
    private CompletionDao dao;
	
	public List<Completion> queryAll() {
		return this.dao.queryAll();
	}
	
	public Completion queryById(Integer id) {
		return this.dao.queryById(id);
	}

	@Transactional
	public int insert(Completion pro) {
		
		return this.dao.insert(pro);
	}

	@Transactional
	public int update(Completion pro) {
		return this.dao.update(pro);
	}

	@Transactional
	public int delete(Integer id) {
		return this.dao.delete(id);
	}
}
