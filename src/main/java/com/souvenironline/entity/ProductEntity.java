package com.souvenironline.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "Product")
@Getter
@Setter
public class ProductEntity extends BaseEntity {

	@Column(name = "product_name")
	private String productName;

	@Column(name = "image")
	private String image;

	@Column(name = "more_image")
	private String moreImage;

	@Column(name = "detail")
	private String detail;

	@Column(name = "view_count")
	private Long viewCount;

	@Column(name = "discount")
	private String discount;

	@Column(name = "price")
	private Double price;

	@Column(name = "status")
	private Integer status;
	
}
