package travel.product.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import travel.product.mapper.TravelMapper;

public class ProductDao {
	
	private static ProductDao dao = new ProductDao();
	private static int count = 1;

	public static ProductDao getInstance() {
		return dao;
	}

	public SqlSessionFactory getSqlSessionFactory(){
		String resource ="mybatis-config.xml";
		InputStream input = null;
		try {
			input = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(input);
	}



	public void insertProduct(Product product) {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = session.getMapper(TravelMapper.class).insertProduct(product);
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

	public List<Product> listBoard() throws Exception {
		SqlSession session = getSqlSessionFactory().openSession();
		try {
			return session.getMapper(TravelMapper.class).listProduct();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally{
			session.close();
		}
	}

	
	
	
	


}
