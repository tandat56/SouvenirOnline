package com.souvenironline.service.web;

import com.souvenironline.dto.OrderCreateModifyDTO;
import com.souvenironline.entity.OrderEntity;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Map;

public interface IOrderService {

	List<OrderEntity> getAll();

	List<OrderCreateModifyDTO> findAlll(Pageable pageable);
	
	Map<Long, String> findAll();
	
	//OrderCreateModifyDTO createModify(OrderCreateModifyDTO orderdto);
	
	OrderCreateModifyDTO addOrders(OrderCreateModifyDTO dto);
	
	OrderEntity createModify(OrderEntity entity);
	
	OrderCreateModifyDTO findByIdDTO(long id);
	
	void delete(long[] ids);
	
	public int countOrder();
}
