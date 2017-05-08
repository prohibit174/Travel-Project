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

	public List<Product> listProduct(Product_Search proSearch) throws Exception {
		SqlSession session = getSqlSessionFactory().openSession();
		List<Product> list = null;
		try {
			list = session.getMapper(TravelMapper.class).listProduct(proSearch);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			session.close();
		}
		
		return list;
	}
	

	public Product detailProduct(String p_num) throws Exception {
		SqlSession session = getSqlSessionFactory().openSession();
		Product product = null;
		try {
			product = session.getMapper(TravelMapper.class).detailProduct(p_num);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			session.close();
		}
		return product;
	}
	
	public void updateProduct(Product product) {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = session.getMapper(TravelMapper.class).updateProduct(product);
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
	
	public void deleteProduct(Product product) {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = session.getMapper(TravelMapper.class).deleteProduct(product);
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
	//���� �߰�
		public void insertProductReq(Product_Request proReq) {
			SqlSession session = getSqlSessionFactory().openSession();
			int re = -1;
			try {
				re = session.getMapper(TravelMapper.class).insertProductReq(proReq);
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
		
		public Product_Request detailProductReq(String p_num) throws Exception {
			SqlSession session = getSqlSessionFactory().openSession();
			Product_Request productReq = null;
			try {
				productReq = session.getMapper(TravelMapper.class).detailProductReq(p_num);
			} catch (Exception e) {
				e.printStackTrace();
			}finally{
				session.close();
			}
			return productReq;
		}

		
		
		
		


	}



	
	
	
	


