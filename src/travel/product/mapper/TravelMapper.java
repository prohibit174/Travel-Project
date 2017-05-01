package travel.product.mapper;

import java.util.List;

import travel.product.model.Product;
import travel.product.model.Product_Request;

public interface TravelMapper {

	int insertProduct(Product product);
	List<Product> listProduct();
	Product detailProduct(String p_num);
	int updateProduct(Product product);
	int deleteProduct(Product product);
	Product_Request detailProductReq(String p_num);
	int insertProductReq(Product_Request proReq);


}
