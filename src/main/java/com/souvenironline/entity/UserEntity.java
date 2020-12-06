package com.souvenironline.entity;

import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

@Getter
@Setter
@Entity
@Table(name = "User")
public class UserEntity extends BaseEntity {

	@Column(name = "username")
	private String userName;

	@Column(name = "password")
	private String password;

	@Column(name = "fullname")
	private String fullName;

	@Column(name = "phone_number")
	private String phoneNumber;

	@Column(name = "email")
	private String email;

	@Column(name = "city")
	private String city;

	@Column(name = "address")
	private String address;

	@Column
	private Integer status;

	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "User_Role", joinColumns = @JoinColumn(name = "userid"),
	inverseJoinColumns = @JoinColumn(name = "roleid"))
	
	private List<RoleEntity> Role = new ArrayList<>();

	public List<RoleEntity> getRole() {
		return Role;
	}

	@OneToMany(mappedBy = "user")
	private List<CommentEntity> comments = new ArrayList<>();

	@OneToMany(mappedBy = "user")
	private List<BillEntity> bills = new ArrayList<>();


}
