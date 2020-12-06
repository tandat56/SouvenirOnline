package com.souvenironline.entity;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@Entity
@Table(name = "Product")
public class ProductEntity extends BaseEntity {

	@Column(name = "product_name")
	private String productName;

	@Column(name = "title")
	private String title;

	@Column(name = "image")
	private String image;

	@Column(name = "more_image")
	private String moreImage;

	@Column(name = "detail")
	private String detail;

	@Column(name = "sale")
	private Integer sale;

	@Column(name = "view_count")
	private Long viewCount;

	@Column (name = "highlight", columnDefinition = "BOOLEAN")
	private Boolean highlight;

	@Column (name = "new_product", columnDefinition = "BOOLEAN")
	private Boolean newProduct;

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

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "colorsid")
	private ColorsEntity colors;

	}
