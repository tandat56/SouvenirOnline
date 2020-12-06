package com.souvenironline.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
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

}
