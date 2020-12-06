package com.souvenironline.entity;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
@Table(name = "Comment")
public class CommentEntity extends BaseEntity {

	@Column(name = "comment")
	private String comment;

	@Column(name = "status")
	private Integer status;


	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "blogid")
	private BlogEntity blog;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "userid")
	private UserEntity user;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "productid")
	private ProductEntity productComment;

	}
