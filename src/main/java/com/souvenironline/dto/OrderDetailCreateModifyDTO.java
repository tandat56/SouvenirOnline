package com.souvenironline.dto;

import lombok.*;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
@ToString
public class OrderDetailCreateModifyDTO {
	private Long id;
	private Long userID;
	private Double total;
	private Double price;
	private Integer quantity;
	private long order;
	private long product;
	private Integer page;
	private Integer limit;
	private Integer totalPage;
	private Integer totalItem;
	private List<OrderDetailCreateModifyDTO> listResult = new ArrayList<>();
	private Date createdDate;
	private Date modifiedDate;
	private String createdBy;
	private String modifiedBy;
}
