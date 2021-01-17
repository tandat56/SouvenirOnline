package com.souvenironline.converter;
import com.souvenironline.dto.OrderDetailCreateModifyDTO;
import com.souvenironline.entity.OrderDetailEntity;
import com.souvenironline.entity.OrderEntity;
import com.souvenironline.entity.ProductEntity;
import org.springframework.stereotype.Component;

@Component
public class OrderDetailMapper {
	public OrderDetailEntity toOrderDetail(OrderDetailCreateModifyDTO dto) {
		OrderEntity order = OrderEntity.builder()
				.id(dto.getOrder())
				.build();
		ProductEntity product = ProductEntity.builder()
				.id(dto.getProduct())
				.build();
		return OrderDetailEntity.builder()
				.id(dto.getId())
				.userID(dto.getUserID())
				.total(dto.getTotal())
				.quantity(dto.getQuantity())
				.order(order)
				.product(product)
				.createdDate(dto.getCreatedDate())
				.modifiedDate(dto.getModifiedDate())
				.createdBy(dto.getCreatedBy())
				.modifiedBy(dto.getModifiedBy())
				.build();
	}
	
	public OrderDetailCreateModifyDTO toOrderDetailResponserDTO(OrderDetailEntity orderdetail) {
		System.out.println("Entity: " + orderdetail);
		return OrderDetailCreateModifyDTO.builder()
				.id(orderdetail.getId())
				.userID(orderdetail.getUserID())
				.total(orderdetail.getTotal())
				.quantity(orderdetail.getQuantity())
				.order(orderdetail.getOrder().getId())
				.product(orderdetail.getProduct().getId())
				.createdDate(orderdetail.getCreatedDate())
				.modifiedDate(orderdetail.getModifiedDate())
				.createdBy(orderdetail.getCreatedBy())
				.modifiedBy(orderdetail.getModifiedBy())
				.build();
	}
}
