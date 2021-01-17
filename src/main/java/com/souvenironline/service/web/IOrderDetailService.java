package com.souvenironline.service.web;

import com.souvenironline.dto.CartDTO;
import com.souvenironline.dto.OrderDetailCreateModifyDTO;
import com.souvenironline.entity.OrderDetailEntity;

import java.util.HashMap;
import java.util.List;

public interface IOrderDetailService {
	
	List <OrderDetailEntity> getAll();

	List <OrderDetailCreateModifyDTO> getBillsDetail(Long id);
	
	OrderDetailEntity createModify(OrderDetailEntity dto);
	
	OrderDetailCreateModifyDTO findByIdDTO(long id);
	
	public List<OrderDetailEntity> getBillDetailByUserID(long id);
	
	void addOrderDetail(HashMap<Long, CartDTO> cart);
	
	void delete(long[] ids);
	
}