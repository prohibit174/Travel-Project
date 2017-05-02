package travel.accompany.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import travel.accompany.mapper.TravelMapper;

public class AccompanyDao {
	
	private static AccompanyDao dao = new AccompanyDao();
	private static int count = 1;

	public static AccompanyDao getInstance() {
		return dao;
	}

	public SqlSessionFactory getSqlSessionFactory(){
		String resource ="mybatis-config-accompany.xml";
		InputStream input = null;
		try {
			input = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(input);
	}

	public List<Accompany> selectUserRoute(String userID) throws Exception {
		SqlSession session = getSqlSessionFactory().openSession();
		List<Accompany> list = null;
		try {
			list = session.getMapper(TravelMapper.class).selectUserRoute("0");
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			session.close();
		}
		
		return list;
	}
	
}



	
	
	
	


