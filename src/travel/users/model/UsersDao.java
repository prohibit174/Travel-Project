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
			//�뿬湲곕줈 �엯�젰諛쏆� id媛� 議댁옱�븯�뒗吏� 媛��닔媛� �뱾�뼱�삱嫄곗엫.
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return re;
	}
}
