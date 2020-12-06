package com.souvenironline.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@Entity
@Table(name = "Blog")
public class BlogEntity extends BaseEntity {

	@Column(name = "title")
	private String title;

	@Column(name = "thumbnail")
	private String thumbnail;

	@Column(name = "content")
	private String content;

	@Column(name = "short_description")
	private String shortDescription;


	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "categoryBlogId")
	private CategoryBlogEntity categoryBlog;

	@OneToMany(mappedBy = "blog")
	private List<CommentEntity> comments = new ArrayList<>();


}
