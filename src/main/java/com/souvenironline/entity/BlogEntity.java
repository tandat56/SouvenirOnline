package com.souvenironline.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "Blog")
@Getter
@Setter
public class BlogEntity extends BaseEntity {

	@Column(name = "title")
	private String title;

	@Column(name = "thumbnail")
	private String thumbnail;

	@Column(name = "short_description")
	private String shortDescription;

	@Column(name = "status")
	private Integer status;

}
