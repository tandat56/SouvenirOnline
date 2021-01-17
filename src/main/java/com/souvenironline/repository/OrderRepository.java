package com.souvenironline.repository;

import com.souvenironline.entity.OrderEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


public interface OrderRepository extends JpaRepository<OrderEntity, Long> {

		
	@Query(value = "SELECT MAX(id) FROM orders;", nativeQuery = true)
	public long getIDLastOrder(); 
	
	@Query(value = "SELECT COUNT(*) FROM orders;", nativeQuery = true)
	public int countOrder(); 
}
