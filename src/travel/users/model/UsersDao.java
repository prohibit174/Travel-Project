package travel.users.model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import travel.users.mapper.UsersMapper;

public class UsersDao {

	private static UsersDao dao = new UsersDao();
	
	public static UsersDao getInstance(){
		return dao;
	}
	
	//myBatis 
	public SqlSessionFactory getSqlSessionFactory(){
		String resource = "mybatis-config_users.xml";
		
		InputStream in = null;
		
		try {
			in = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return new SqlSessionFactoryBuilder().build(in);	
	}
	
	//insert
	public int insertUsers(Users users){
		int re = -1;
		SqlSession sqlsession = getSqlSessionFactory().openSession();
		
		try {
			re = sqlsession.getMapper(UsersMapper.class).insertUsers(users);
			
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
	
	
	public int checkId(String string){
		int re = -1;
		SqlSession sqlsession = getSqlSessionFactory().openSession();
		
		try {
			re = sqlsession.getMapper(UsersMapper.class).idCheck(string);
			//여기로 입력받은 id가 존재하는지 갯수가 들어올거임.
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return re;
	}
	
}
