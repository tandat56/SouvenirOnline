package com.souvenironline.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "Category_Product")
@Getter
@Setter
public class CategoryProductEntity extends BaseEntity {

	@Column(name = "code")
	private String code;

	@Column(name = "name")
	private String name;

	@OneToMany(mappedBy = "categoryProduct")
	private List<ProductEntity> products = new ArrayList<>();
}
