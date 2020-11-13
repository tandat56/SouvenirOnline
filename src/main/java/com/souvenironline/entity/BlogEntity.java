package com.souvenironline.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

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

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public String getShortDescription() {
		return shortDescription;
	}

	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}

	public CategoryBlogEntity getCategoryBlog() {
		return categoryBlog;
	}

	public void setCategoryBlog(CategoryBlogEntity categoryBlog) {
		this.categoryBlog = categoryBlog;
	}

	public List<CommentEntity> getComments() {
		return comments;
	}

	public void setComments(List<CommentEntity> comments) {
		this.comments = comments;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
}
