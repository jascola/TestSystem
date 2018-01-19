package dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import entity.Choice;
import entity.Recogniz;
@Repository
public interface RecognizDao {
	
	List<Recogniz> queryAll();//��ȫ��
	
	List<Recogniz> query(Recogniz rec);//��ȫ��
	
	Recogniz queryById(Integer id);//����id�鵥��
	
	int insert(Recogniz rec);//����һ��ʵ��
	
	int delete(Integer id);
	
	int update(Recogniz rec);
	
	List<Recogniz> queryBySubjectId(Integer subjectId);
}
