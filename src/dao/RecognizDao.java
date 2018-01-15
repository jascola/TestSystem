package dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import entity.Recogniz;
@Repository
public interface RecognizDao {
	
	List<Recogniz> queryAll();//查全部
	
	Recogniz queryById(Integer id);//根据id查单个
	
	int insert(Recogniz rec);//插入一个实体
	
	int delete(Integer id);
	
	int update(Recogniz rec);
}
