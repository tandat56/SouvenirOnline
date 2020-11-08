package com.souvenironline.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "Product")
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
<<<<<<< HEAD

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

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getMoreImage() {
		return moreImage;
	}

	public void setMoreImage(String moreImage) {
		this.moreImage = moreImage;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public Long getViewCount() {
		return viewCount;
	}

	public void setViewCount(Long viewCount) {
		this.viewCount = viewCount;
	}

	public String getDiscount() {
		return discount;
	}

	public void setDiscount(String discount) {
		this.discount = discount;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public List<CommentEntity> getComments() {
		return comments;
	}

	public void setComments(List<CommentEntity> comments) {
		this.comments = comments;
	}

	public CategoryProductEntity getCategoryProduct() {
		return categoryProduct;
	}

	public void setCategoryProduct(CategoryProductEntity categoryProduct) {
		this.categoryProduct = categoryProduct;
	}

	public List<BillDetailEntity> getBillDetails() {
		return billDetails;
	}

	public void setBillDetails(List<BillDetailEntity> billDetails) {
		this.billDetails = billDetails;
	}

	public WarehouseEntity getWarehouse() {
		return warehouse;
	}

	public void setWarehouse(WarehouseEntity warehouse) {
		this.warehouse = warehouse;
	}
=======
	
>>>>>>> 2e6a162e5df2a5557ce2aaef6e413bf533288531
}
