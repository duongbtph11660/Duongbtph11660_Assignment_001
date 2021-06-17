package com.spring.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.spring.entity.Product;

@Repository 
public interface ProductRepository extends JpaRepository<Product, Integer> {
	
	@Query("Select entity from Product entity where status=:status ")
	public  List<Product> findByStatus(@Param("status") Integer status);
	
	List<Product> findByName(String name);
	Page<Product> findByName(String name, Pageable pageable);
}
