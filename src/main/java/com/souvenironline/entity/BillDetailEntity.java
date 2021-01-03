package com.souvenironline.entity;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
@Table(name = "Bill_Detail")

public class BillDetailEntity extends BaseEntity {

	@Column(name = "unit_price")
	private String unitPrice;

	@Column(name = "quantity")
	private int quantity;

	@Column(name = "discount")
	private String discount;

	@Column(name = "total")
	private int total;


	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "billDetailid")
	private BillEntity bill;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "billProductDetailid")
	private ProductEntity product;


}
