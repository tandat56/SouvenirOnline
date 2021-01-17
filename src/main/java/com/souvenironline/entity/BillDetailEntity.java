package com.souvenironline.entity;


import lombok.*;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import java.util.Date;

@Getter
@Setter
@Entity
@Table(name = "Bill_Detail")
@EntityListeners(AuditingEntityListener.class)
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class BillDetailEntity {


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(name = "userID")
	private Long userID;

	@Column(name = "total")
	private double total;

	@Column(name = "quantity")
	private Integer quantity;

	@Column(name = "discount")
	private String discount;

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
	@ToString.Exclude
	@JoinColumn(name = "billDetailid")
	private BillEntity bill;

	@ManyToOne(fetch = FetchType.LAZY)
	@ToString.Exclude
	@JoinColumn(name = "billProductDetailid")
	private ProductEntity product;


}
