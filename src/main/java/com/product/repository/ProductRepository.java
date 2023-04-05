package com.product.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.product.model.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {

    default Product saveProduct(Product product) {
    
    	return save(product);
    }
    
}
