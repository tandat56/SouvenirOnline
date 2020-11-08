package com.souvenironline.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "Role")
public class RoleEntity extends BaseEntity {
		
	@Column(name = "name")
	private String name;
	
	@Column(name = "code")
	private String code;

	public List<UserEntity> getUsers() {
		return users;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public void setUsers(List<UserEntity> users) {
		this.users = users;
	}

	@ManyToMany(mappedBy = "Role")
    private List<UserEntity> users = new ArrayList<>();


}
