package net.learn.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.learn.shoppingbackend.dao.ProductDAO;
import net.learn.shoppingbackend.dto.Product;

public class ProductTestCase {

	private static AnnotationConfigApplicationContext context;

	private static ProductDAO productDAO;

	private Product product;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.learn.shoppingbackend");
		context.refresh();

		productDAO = (ProductDAO)context.getBean("ProductDAO");

	}

	

	/*@Test
	public void testCRUDProduct() {

		// Add Operation
		product = new Product();

		product.setName("Oppo Selfie S53");
		product.setBrand("Oppo");
		product.setDescription("This is some description for Oppo mobile phones.");
		product.setUnitPrice(25000);
		product.setActive(true);
		product.setCategoryId(3);
		product.setSupplierId(3);
		
		

		assertEquals("Something went wrong while inserting a new product", true, productDAO.add(product));

		//reading and updating the product
		product = productDAO.get(2);
		product.setName("Samsung Galaxy S7");
		assertEquals("Something went wrong while updating the existing record", true, productDAO.update(product));
		
		assertEquals("Something went wrong while deleting the existing record", true, productDAO.delete(product));
		
		assertEquals("Something went wrong while fetching the list of products", 6, productDAO.list().size());

		
	}*/
	/*@Test
	public void testListActiveProducts(){
		
		assertEquals("Something went wrong while fetching the list of products", 5, productDAO.listActiveProducts().size());
		
		
	}*/
	/*@Test
	public void testListActiveProductsByCategory(){
		
		assertEquals("Something went wrong while fetching the list of products", 3, productDAO.listActiveProductsByCategory(3).size());
		assertEquals("Something went wrong while fetching the list of products", 2, productDAO.listActiveProductsByCategory(1).size());
		
		
	}*/

	@Test
	public void testGetLatestActiveProducts(){
		
		assertEquals("Something went wrong while fetching the list of products", 3, productDAO.getLatestActiveProducts(3).size());
		
		
	}
}
