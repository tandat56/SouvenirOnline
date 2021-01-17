package com.souvenironline.entity;

import lombok.*;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Entity
@Getter
@Setter
@Table(name = "orderdetail")
@EntityListeners(AuditingEntityListener.class)
@Builder
@ToString
public class OrderDetailEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "userID")
	private Long userID;
	
	@Column(name = "total")
	private Double total;
	
	@Column(name = "quantity")
	private Integer quantity;
	
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
	@JoinColumn(name = "product_id")
	@ToString.Exclude
	private ProductEntity product;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "order_id")
	@ToString.Exclude
	private OrderEntity order;
	
}
