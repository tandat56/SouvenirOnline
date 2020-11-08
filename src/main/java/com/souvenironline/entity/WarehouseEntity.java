package com.souvenironline.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "Warehouse")
public class WarehouseEntity extends BaseEntity {

	@Column(name = "lotId")
	private String lotId;

	@Column(name = "cal_unit")
	private String calUnit;

	@Column(name = "quantity")
	private Long quantity;

	@Column(name = "import_price")
	private Double importPrice;

	@Column(name = "saling_price")
	private Double salingPrice;

	@Column(name = "min_quantity")
	private Long minQuantity;

	@Column(name = "exprire_date")
	private String exprireDate;

	@Column(name = "status")
	private Integer status;

	@OneToMany(mappedBy = "warehouse")
	private List<ProductEntity> products = new ArrayList<>();

	public String getLotId() {
		return lotId;
	}

	public void setLotId(String lotId) {
		this.lotId = lotId;
	}

	public String getCalUnit() {
		return calUnit;
	}

	public void setCalUnit(String calUnit) {
		this.calUnit = calUnit;
	}

	public Long getQuantity() {
		return quantity;
	}

	public void setQuantity(Long quantity) {
		this.quantity = quantity;
	}

	public Double getImportPrice() {
		return importPrice;
	}

	public void setImportPrice(Double importPrice) {
		this.importPrice = importPrice;
	}

	public Double getSalingPrice() {
		return salingPrice;
	}

	public void setSalingPrice(Double salingPrice) {
		this.salingPrice = salingPrice;
	}

	public Long getMinQuantity() {
		return minQuantity;
	}

	public void setMinQuantity(Long minQuantity) {
		this.minQuantity = minQuantity;
	}

	public String getExprireDate() {
		return exprireDate;
	}

	public void setExprireDate(String exprireDate) {
		this.exprireDate = exprireDate;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public List<ProductEntity> getProducts() {
		return products;
	}

	public void setProducts(List<ProductEntity> products) {
		this.products = products;
	}
}
