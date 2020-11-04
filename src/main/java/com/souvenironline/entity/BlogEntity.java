package com.souvenironline.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

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

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "categoryBlogId")
	private CategoryBlogEntity categoryBlog;

	@OneToMany(mappedBy = "blog")
	private List<CommentEntity> comments = new ArrayList<>();


}
