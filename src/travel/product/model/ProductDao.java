package travel.product.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.RowBounds;
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

	public List<Product> listProduct(int startRow, Product_Search proSearch) throws Exception {
		SqlSession session = getSqlSessionFactory().openSession();
		List<Product> list = null;
		try {
			list = session.getMapper(TravelMapper.class).listProduct(new RowBounds(startRow, 8), proSearch);
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
	//혜진 추가
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

		
		public List<Product_Request> listProductRequest(String u_id) throws Exception {
			SqlSession session = getSqlSessionFactory().openSession();
			List<Product_Request> list = null;
			try {
				list = session.getMapper(TravelMapper.class).listProductRequest(u_id);
			} catch (Exception e) {
				e.printStackTrace();
			}finally{
				session.close();
			}
			
			return list;
		}
		
		
		
		//수락신청 여부 변경
		public void updateAccept(Product_Request proReq) {
			SqlSession session = getSqlSessionFactory().openSession();
			int re = -1;
			try {
				re = session.getMapper(TravelMapper.class).updateAccept(proReq);
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
			
			
		public List<Product_Request> listNotAccept() throws Exception {
			SqlSession session = getSqlSessionFactory().openSession();
			List<Product_Request> list = null;
				try {
					list = session.getMapper(TravelMapper.class).listNotAceept();
				} catch (Exception e) {
					e.printStackTrace();
				}finally{
					session.close();
				}
				
				return list;
			}
			
			
			
		}
		

		public int countProduct(Product_Search product_search) {
			SqlSession session = getSqlSessionFactory().openSession();
			int total=0;
			try {
				total = session.getMapper(TravelMapper.class).countProduct(product_search);
			} catch (Exception e) {
				e.printStackTrace();
			}finally{
				session.close();
			}
			return total;
		}

		public List<Product> listProduct(Product_Search proSearch) {
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
		
		

		
		
		
		


	



	
	
	
	


