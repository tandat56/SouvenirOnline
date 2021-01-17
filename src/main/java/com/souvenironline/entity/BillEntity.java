package com.souvenironline.entity;

import lombok.*;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Getter
@Setter
@Entity
@Table(name = "Bill")
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString
@EntityListeners(AuditingEntityListener.class)
public class BillEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(name = "order_date")
	private Date orderDate;

	@Column(name = "userID")
	private Long userID;

	@Column(name = "shipped_date")
	private String shippedDate;

	@Column(name = "ship_via")
	private String shipVia;

	@Column(name = "ship_address")
	private String shipAddress;

	@Column(name = "name")
	private String name;

	@Column(name = "ship_city")
	private String shipCity;

	@Column(name = "email")
	private String email;

	@Column(name = "quantity")
	private Integer quantity;

	@Column(name = "total")
	private Double total;

	@Column(name = "phoneNumber")
	private String phoneNumber;

	@Column(name = "note")
	private String note;

	@Column(name = "userOrder")
	private String userOrder;

	@Column(name = "bill_type")
	private Integer billType;

	@Column(name = "status")
	private Integer status;

	@Column(name = "createddate", updatable = false)
	@CreatedDate
	private Date createdDate;

	@Column(name = "modifieddate", updatable = true)
	@LastModifiedDate
	private Date modifiedDate;

	@Column(name = "createdby", updatable = false)
	@CreatedBy
	private String createdBy;

	@Column(name = "modifiedby", updatable = true)
	@LastModifiedBy
	private String modifiedBy;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "billid")
	private UserEntity user;

	@OneToMany(mappedBy = "bill")
	private List<BillDetailEntity> billDetails = new ArrayList<>();

}
