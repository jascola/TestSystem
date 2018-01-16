package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.OptionzDao;
import entity.Completion;
import entity.Optionz;
@Service
public class OptionzService {
	@Autowired
	private OptionzDao dao;
	public List<Optionz> queryAll() {
		return this.dao.queryAll();
	}
	
	public Optionz queryById(Integer id) {
		return this.dao.queryById(id);
	}
	public List<Optionz> queryByChoiceId(Integer id) {
		return this.dao.queryByChoiceId(id);
	}
	@Transactional
	public int insert(Optionz pro) {
		
		return this.dao.insert(pro);
	}

	@Transactional
	public int update(Optionz pro) {
		return this.dao.update(pro);
	}

	@Transactional
	public int delete(Integer id) {
		return this.dao.delete(id);
	}
}
