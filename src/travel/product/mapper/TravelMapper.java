package travel.product.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;


import travel.product.model.Product;
import travel.product.model.Product_Request;
import travel.product.model.Product_Search;

public interface TravelMapper {

	int insertProduct(Product product);
	List<Product> listProduct(RowBounds row,Product_Search search);
	Product detailProduct(String p_num);
	int updateProduct(Product product);
	int deleteProduct(Product product);
	Product_Request detailProductReq(String p_num);
	int insertProductReq(Product_Request proReq);
	List<Product_Request> listProductRequest(String u_id);
<<<<<<< HEAD
	int updateAccept(Product_Request proReq);
	List<Product_Request> listNotAceept();
=======
	int countProduct(Product_Search proSearch);
	List<Product> listProduct(Product_Search proSearch);
>>>>>>> branch '김두두' of https://github.com/prohibit174/Travel-Project


}
