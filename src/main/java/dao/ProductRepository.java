package dao;

import java.util.ArrayList;
import java.util.List;

import dto.Product;

// Product�� ���� ����� ����
public class ProductRepository {
	// List�� interface, ArrayList�� class
	// List�� ArrayList�� �ٲٸ� ��뼺�� ���� �߻�(������)
	private List<Product> products = new ArrayList<>();
	
	// �ϳ��� ��ü�� ���� �� �ν��Ͻ��� �����ϴ� �̱��� ����
	private static ProductRepository instance = new ProductRepository();
	
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public ProductRepository() {
		// ������ DB���� ������ ������
		// ���� DB �� ����� �׳� 3�� ���� ����
		Product phone = new Product("P1234", "iPhone 6s", 800000);
		phone.setDescription("4.7-inch, 1334X750 Retina HD display, ��¼��");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		
		Product notebook = new Product("P1235", "LG PC �׷�", 1500000);
		notebook.setDescription("4.7-inch, 1334X750 Retina HD display, ��¼��");
		notebook.setCategory("Smart Phone");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refubished");
	
		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("4.7-inch, 1334X750 Retina HD display, ��¼��");
		tablet.setCategory("Smart Phone");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		
		products.add(phone);
		products.add(notebook);
		products.add(tablet);
	}
	
	// ��� ��ǰ ����
	public List<Product> getAllProducts() {
		return products;
	}
	
	// ID�� ��ǰ ã��
	public Product getProductById(String productId) {
		// ���� �ڵ�� å p.173 ����
		return products.stream() // ��ǰ 3�� �귯���ϴ�
				.filter((product) -> product.getProductId().equals(productId)) // �ʿ��� �� �Ÿ���
				.findFirst() // ù��° ��
				.get(); // ���
	}
	
	// ��ǰ �߰�
	public void addProduct(Product product) {
		products.add(product);
	}
}