package travel.join.Model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import travel.join.Mapper.JoinMapper;

public class JoinDao {

	private static JoinDao dao = new JoinDao();
	
	public static JoinDao getInstance(){
		return dao;
	}
	
	//myBatis 
	public SqlSessionFactory getSqlSessionFactory(){
		String resource = "mybatis-config_join.xml";
		
		InputStream in = null;
		
		try {
			in = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return new SqlSessionFactoryBuilder().build(in);	
	}
	
	//insert
	public int insertJoin(Join join){
		int re = -1;
		SqlSession sqlsession = getSqlSessionFactory().openSession();
		
		try {
			re = sqlsession.getMapper(JoinMapper.class).insertJoin(join);
			
			if(re>0){
				sqlsession.commit();
			}else{
				sqlsession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlsession.close();
		}
		System.out.println("DAO"+ re);
		return re;
		
		
	}
}
