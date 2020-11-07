package com.souvenironline.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "Bill")
@Getter
@Setter
public class BillEntity extends BaseEntity {

	@Column(name = "order_date")
	private String orderDate;

	@Column(name = "shipped_date")
	private String shippedDate;

	@Column(name = "ship_via")
	private String shipVia;

	@Column(name = "ship_address")
	private String shipAddress;

	@Column(name = "ship_city")
	private String shipCity;

	@Column(name = "bill_type")
	private Integer billType;

	@Column(name = "status")
	private Integer status;
}
