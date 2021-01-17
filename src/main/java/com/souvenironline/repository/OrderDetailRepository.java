package com.souvenironline.repository;

import com.souvenironline.entity.OrderDetailEntity;
import com.souvenironline.entity.ProductEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface OrderDetailRepository extends JpaRepository<OrderDetailEntity, Long> {

	@Query(value = "SELECT * FROM orderdetail o where userid = ? ORDER BY id desc;", nativeQuery = true)
	public List<OrderDetailEntity> getBillDetailByUserID(long id);

	@Query(value ="select * from orderdetail as p where p.order_id = ?1 " ,nativeQuery = true)
	List<OrderDetailEntity> findAllBillDetailByBillId(Long id);
}
