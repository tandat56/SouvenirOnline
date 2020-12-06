package com.souvenironline.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "Role")
public class RoleEntity extends BaseEntity {
		
	@Column(name = "name")
	private String name;
	
	@Column(name = "code")
	private String code;

	@ManyToMany(mappedBy = "Role")
    private List<UserEntity> users = new ArrayList<>();


}
