package com.souvenironline.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "Bill_Detail")
@Getter
@Setter
public class BillDetailEntity extends BaseEntity {

	@Column(name = "unit_price")
	private String unitPrice;

	@Column(name = "quantity")
	private String quantity;

	@Column(name = "discount")
	private String discount;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "billDetailid")
	private BillEntity bill;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "billProductDetailid")
	private ProductEntity product;
}
