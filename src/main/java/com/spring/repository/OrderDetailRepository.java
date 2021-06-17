package com.spring.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.spring.entity.OrderDetail;

@Repository
public interface OrderDetailRepository extends JpaRepository<OrderDetail, Integer> {
	
	@Query("Select o from OrderDetail o where o.product_id.id =:product_id ")
	public  List<OrderDetail> findByProduct(@Param("product_id") Integer product_id);
}
