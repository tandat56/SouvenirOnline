package com.souvenironline.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "Bill_Detail")

public class BillDetailEntity extends BaseEntity {

	@Column(name = "unit_price")
	private String unitPrice;

	@Column(name = "quantity")
	private String quantity;

	@Column(name = "discount")
	private String discount;

<<<<<<< HEAD
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "billDetailid")
	private BillEntity bill;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "billProductDetailid")
	private ProductEntity product;

	public String getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(String unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getDiscount() {
		return discount;
	}

	public void setDiscount(String discount) {
		this.discount = discount;
	}

	public BillEntity getBill() {
		return bill;
	}

	public void setBill(BillEntity bill) {
		this.bill = bill;
	}

	public ProductEntity getProduct() {
		return product;
	}

	public void setProduct(ProductEntity product) {
		this.product = product;
	}
=======
>>>>>>> 2e6a162e5df2a5557ce2aaef6e413bf533288531
}
