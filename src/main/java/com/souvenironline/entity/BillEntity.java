package com.souvenironline.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@Entity
@Table(name = "Bill")
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

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "billid")
	private UserEntity user;

	@OneToMany(mappedBy = "bill")
	private List<BillDetailEntity> billDetails = new ArrayList<>();

}
