package com.souvenironline.service.web.impl;

import com.souvenironline.converter.OrderDetailMapper;
import com.souvenironline.dto.CartDTO;
import com.souvenironline.dto.MyUser;
import com.souvenironline.dto.OrderDetailCreateModifyDTO;
import com.souvenironline.dto.ProductDTO;
import com.souvenironline.entity.OrderDetailEntity;
import com.souvenironline.entity.ProductEntity;
import com.souvenironline.repository.OrderDetailRepository;
import com.souvenironline.repository.OrderRepository;
import com.souvenironline.service.web.IOrderDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class OrderDetailEntityService implements IOrderDetailService {

	@Autowired
	private OrderDetailRepository orderDetailRepository;

	@Autowired
	private OrderRepository orderRepo;

	@Autowired
	private OrderDetailMapper orderDetailMapper;

	@Override
	public List<OrderDetailEntity> getAll() {
		return orderDetailRepository.findAll();
	}

	@Override
	public List<OrderDetailCreateModifyDTO> getBillsDetail(Long id) {
		List<OrderDetailCreateModifyDTO> models = new ArrayList<>();
		List<OrderDetailEntity> entities = orderDetailRepository.findAllBillDetailByBillId(id);

		for (OrderDetailEntity item: entities){
			OrderDetailCreateModifyDTO orderDetail = orderDetailMapper.toOrderDetailResponserDTO(item);
			models.add(orderDetail);
		}
		return models;
	}

	@Override
	public OrderDetailEntity createModify(OrderDetailEntity entity) {
		return orderDetailRepository.save(entity);
	}

	@Override
	public void delete(long[] ids) {
		for (long id : ids) {
			orderDetailRepository.delete(id);
		}
	}

	@Override
	public OrderDetailCreateModifyDTO findByIdDTO(long id) {
		OrderDetailEntity orderDetail = orderDetailRepository.findOne(id);
		return orderDetailMapper.toOrderDetailResponserDTO(orderDetail);
	}

	@Override
	public void addOrderDetail(HashMap<Long, CartDTO> cart) {
		long idOrder = orderRepo.getIDLastOrder();
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		for (Map.Entry<Long, CartDTO> item : cart.entrySet()) {
			OrderDetailCreateModifyDTO dto = OrderDetailCreateModifyDTO.builder().userID(((MyUser) principal).getId())//
					.order(idOrder)//
					.product(item.getValue().getProduct().getId())//
					.quantity(item.getValue().getQuantity())//
					.total(item.getValue().getTotalPrice())//
					.build();//
			OrderDetailEntity entity = orderDetailMapper.toOrderDetail(dto);
			System.out.println("entity: " + entity);
			orderDetailRepository.save(entity);
		}
	}

	@Override
	public List<OrderDetailEntity> getBillDetailByUserID(long id) {
		return orderDetailRepository.getBillDetailByUserID(id);
	}
}
