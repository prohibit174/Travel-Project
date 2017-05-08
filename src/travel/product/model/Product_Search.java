package travel.product.model;

public class Product_Search {
	private String[] product_search;
	private String searchKey;
	
	public Product_Search(){}
	
	public Product_Search(String[] product_search, String searchKey) {
		super();
		this.product_search = product_search;
		this.searchKey = searchKey;
	}

	public String[] getProduct_search() {
		return product_search;
	}

	public void setProduct_search(String[] product_search) {
		this.product_search = product_search;
	}

	public String getSearchKey() {
		return searchKey;
	}

	public void setSearchKey(String searchKey) {
		this.searchKey = searchKey;
	}
	
	
	
	

}
