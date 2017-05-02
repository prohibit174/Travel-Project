package travel.users.model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import travel.carpool.mapper.CarpoolMapper;
import travel.carpool.model.Carpool;
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
	
	//insert user
	public void insertUsers(Users users) throws Exception {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = session.getMapper(UsersMapper.class).insertUsers(users);
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
	
	
	//Check User ID Duplicate
	public int checkId(String string){
		int re = -1;
		SqlSession sqlsession = getSqlSessionFactory().openSession();
		
		try {
			re = sqlsession.getMapper(UsersMapper.class).idCheck(string);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return re;
	}

	public void insertUsers2(Users users) {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = session.getMapper(UsersMapper.class).insertUsers2(users);
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
	
	//User Detail Information
	public Users userDetail(String u_id){
		SqlSession session = getSqlSessionFactory().openSession();
		Users users = null;
		try {
			users = session.getMapper(UsersMapper.class).userDetail(u_id);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return users;
	}

	//User Information Update
	public void userUpdate(String U_id){
		SqlSession session = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
