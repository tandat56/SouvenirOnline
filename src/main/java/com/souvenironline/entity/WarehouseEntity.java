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

@Getter
@Setter
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString
@EntityListeners(AuditingEntityListener.class)
@Table(name = "Warehouse")
public class WarehouseEntity  {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

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

	@OneToMany(mappedBy = "warehouse")
	private List<ProductEntity> products = new ArrayList<>();

}
