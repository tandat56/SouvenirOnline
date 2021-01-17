package com.souvenironline.converter;

import com.souvenironline.dto.OrderCreateModifyDTO;
import com.souvenironline.entity.OrderEntity;
import org.springframework.stereotype.Component;

@Component
public class OrderMapper {
	public OrderEntity toOrder(OrderCreateModifyDTO dto) {
		return OrderEntity.builder()
				.id(dto.getId())
				.userID(dto.getUserID())
				.email(dto.getEmail())
				.phone(dto.getPhone())
				.name(dto.getName())
				.address(dto.getAddress())
				.total(dto.getTotal())
				.quanty(dto.getQuanty())
				.note(dto.getNote())
				.createdDate(dto.getCreatedDate())
				.modifiedDate(dto.getModifiedDate())
				.createdBy(dto.getCreatedBy())
				.modifiedBy(dto.getModifiedBy())
				.build();
	}
	
	public OrderCreateModifyDTO toOrderResponserDTO(OrderEntity order) {
		return OrderCreateModifyDTO.builder()
				.id(order.getId())
				.userID(order.getUserID())
				.email(order.getEmail())
				.phone(order.getPhone())
				.name(order.getName())
				.address(order.getAddress())
				.total(order.getTotal())
				.quanty(order.getQuanty())
				.note(order.getNote())
				.createdDate(order.getCreatedDate())
				.modifiedDate(order.getModifiedDate())
				.createdBy(order.getCreatedBy())
				.modifiedBy(order.getModifiedBy())
				.build();
	}
}
