package dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import entity.Recogniz;
import entity.Subject;
@Repository
public interface RecognizDao {
	
	List<Recogniz> query();//��ȫ��
	
	Subject queryById(Integer id);//����id�鵥��
	
	int insert(Recogniz rec);//����һ��ʵ��
	
	int delete(Integer id);
	
	int update(Recogniz rec);
}
