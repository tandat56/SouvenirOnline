package com.souvenironline.entity;

import lombok.*;
import org.hibernate.annotations.Type;
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
@AllArgsConstructor
@NoArgsConstructor
@Builder
@EntityListeners(AuditingEntityListener.class)
@Table(name = "Product")
@ToString
public class ProductEntity  {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

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

	@Column (name = "highlight")
	private int highlight;

	@Column (name = "new_product")
	private int newProduct;

	@Column(name = "discount")
	private String discount;

	@Column(name = "price")
	private Double price;

	@Column(name = "status")
	private Integer status;

	@Column(name = "category_product_code")
	@ToString.Exclude
	private String categoryProductCode;

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




	@OneToMany(mappedBy = "productComment")
	private List<CommentEntity> comments = new ArrayList<>();

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "productid")
	@ToString.Exclude
	private CategoryProductEntity categoryProduct;

	@OneToMany(mappedBy = "product")
	private List<BillDetailEntity> billDetails = new ArrayList<>();

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "productwarehouseid")
	@ToString.Exclude
	private WarehouseEntity warehouse;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "colorsid")
	@ToString.Exclude
	private ColorsEntity colors;

	}
