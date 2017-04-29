package travel.product.mapper;

import java.util.List;

import travel.product.model.Product;

public interface TravelMapper {

	int insertProduct(Product product);
	List<Product> listProduct();
	Product detailProduct(String p_num);
	int updateProduct(Product product);
	int deleteProduct(Product product);

}
