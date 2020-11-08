package com.souvenironline.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "Category_Blog")
public class CategoryBlogEntity extends BaseEntity {

	@Column(name = "code")
	private String code;

	@Column(name = "name")
	private String name;
<<<<<<< HEAD

	@OneToMany(mappedBy = "categoryBlog")
	private List<BlogEntity> blogs = new ArrayList<>();

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<BlogEntity> getBlogs() {
		return blogs;
	}

	public void setBlogs(List<BlogEntity> blogs) {
		this.blogs = blogs;
	}
=======
>>>>>>> 2e6a162e5df2a5557ce2aaef6e413bf533288531
}
