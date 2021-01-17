package com.souvenironline.service.web.impl;

import com.souvenironline.converter.OrderMapper;
import com.souvenironline.dto.BlogDTO;
import com.souvenironline.dto.OrderCreateModifyDTO;
import com.souvenironline.entity.BlogEntity;
import com.souvenironline.entity.OrderEntity;
import com.souvenironline.repository.OrderRepository;
import com.souvenironline.service.web.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class OrderEntityService implements IOrderService {
	
	@Autowired
	private OrderRepository orderRepository;

	@Autowired
	private OrderMapper orderMapper;

	@Override
	public List<OrderEntity> getAll() {

		return orderRepository.findAll();
	}

	@Override
	public List<OrderCreateModifyDTO> findAlll(Pageable pageable) {
		List<OrderCreateModifyDTO> models = new ArrayList<>();
		List<OrderEntity> entities = orderRepository.findAll(pageable).getContent();
		for (OrderEntity item : entities) {
			OrderCreateModifyDTO order = orderMapper.toOrderResponserDTO(item);
			models.add(order);
		}
		return models;
	}

	@Override
	public OrderEntity createModify(OrderEntity entity) {
		return orderRepository.save(entity);
	}

	@Override
	public void delete(long[] ids) {
		for (long id: ids) {
			orderRepository.delete(id);
		}
	}

	@Override
	public OrderCreateModifyDTO findByIdDTO(long id) {
		OrderEntity order = orderRepository.findOne(id);
		return orderMapper.toOrderResponserDTO(order);
	}

	@Override
	public Map<Long, String> findAll() {
		Map<Long, String> result = new HashMap<>();
		List<OrderEntity> entities = orderRepository.findAll();
		for (OrderEntity item: entities) {
			result.put(item.getId() ,item.getName());
		}
		return result;
	}

	@Override
	public OrderCreateModifyDTO addOrders(OrderCreateModifyDTO dto) {
		OrderEntity entity = orderMapper.toOrder(dto);
		return orderMapper.toOrderResponserDTO(orderRepository.save(entity));
	}

	@Override
	public int countOrder() {
		return orderRepository.countOrder();
	}
}
