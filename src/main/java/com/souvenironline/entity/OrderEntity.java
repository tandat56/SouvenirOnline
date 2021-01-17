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

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "orders")
@EntityListeners(AuditingEntityListener.class)
@Builder
@ToString
public class OrderEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "userID")
	private Long userID;
	
	@Column(name = "email")
	private String email;
	
	@Column(name = "phone")
	private String phone;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "address")
	private String address;
	
	@Column(name = "total")
	private Double total;
	
	@Column(name = "quanty")
	private Integer quanty;
	
	@Column(name = "note")
	private String note;
	
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
	
	@OneToMany(mappedBy = "order")
	List<OrderDetailEntity> orderDetails = new ArrayList<>();
	
}
