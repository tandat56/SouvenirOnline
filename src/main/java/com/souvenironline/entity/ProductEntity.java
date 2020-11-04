package com.souvenironline.entity;

import javax.persistence.*;

import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

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

	@OneToMany(mappedBy = "productComment")
	private List<CommentEntity> comments = new ArrayList<>();

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "productid")
	private CategoryProductEntity categoryProduct;

	@OneToMany(mappedBy = "product")
	private List<BillDetailEntity> billDetails = new ArrayList<>();

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "productwarehouseid")
	private WarehouseEntity warehouse;
}
