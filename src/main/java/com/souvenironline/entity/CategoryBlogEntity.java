package com.souvenironline.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "Category_Blog")
@Getter
@Setter
public class CategoryBlogEntity extends BaseEntity {

	@Column(name = "code")
	private String code;

	@Column(name = "name")
	private String name;
}
