package com.souvenironline.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "Role")
public class RoleEntity extends BaseEntity {
		
	@Column(name = "name")
	private String name;
	
	@Column(name = "code")
	private String code;

	@ManyToMany(mappedBy = "Role")
    private List<UserEntity> users = new ArrayList<>();

    public RoleEntity(String code) {
        super();
        this.code = code;
    }
}
