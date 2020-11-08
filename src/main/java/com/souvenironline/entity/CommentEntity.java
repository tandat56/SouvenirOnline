package com.souvenironline.entity;


import javax.persistence.*;

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

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public BlogEntity getBlog() {
		return blog;
	}

	public void setBlog(BlogEntity blog) {
		this.blog = blog;
	}

	public UserEntity getUser() {
		return user;
	}

	public void setUser(UserEntity user) {
		this.user = user;
	}

	public ProductEntity getProductComment() {
		return productComment;
	}

	public void setProductComment(ProductEntity productComment) {
		this.productComment = productComment;
	}
}
