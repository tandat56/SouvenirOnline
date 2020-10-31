package com.souvenironline.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "Comment")
@Getter
@Setter
public class CommentEntity extends BaseEntity {

	@Column(name = "comment")
	private String comment;

	@Column(name = "status")
	private Integer status;
	
}
