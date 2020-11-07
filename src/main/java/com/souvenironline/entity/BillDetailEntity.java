package com.souvenironline.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

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

}
