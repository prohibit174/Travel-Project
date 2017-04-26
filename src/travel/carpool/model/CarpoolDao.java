package travel.carpool.model;

import java.io.InputStream;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import travel.carpool.mapper.CarpoolMapper;

import org.apache.ibatis.io.Resources;

public class CarpoolDao {
	private static CarpoolDao dao = new CarpoolDao();
	private static int count = 1;

	public static CarpoolDao getInstance() {
		return dao;
	}
	
	public SqlSessionFactory getSqlSessionFactory(){
		String resource ="mybatis-config-carpool.xml";
		InputStream input = null;
		try {
			input = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(input);
	}
	
	public void insertCarpool(Carpool carpool) throws Exception {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = session.getMapper(CarpoolMapper.class).insertCarpool(carpool);
			if(re > 0){
				session.commit();
			}else{
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
	}
}