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
public class OrderCreateModifyDTO {
	private Long id;
	private Long userID;
	private String phone;
	private String name;
	private String email;
	private String address;
	private Double total;
	private Integer quanty;
	private List<OrderCreateModifyDTO> listResult = new ArrayList<>();
	private String note;
	private Integer page;
	private Integer limit;
	private Integer totalPage;
	private Integer totalItem;
	private Date createdDate;
	private Date modifiedDate;
	private String createdBy;
	private String modifiedBy;
}
