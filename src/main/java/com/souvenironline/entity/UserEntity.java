package com.souvenironline.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "User")
@Getter
@Setter
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

	@OneToMany(mappedBy = "user")
	private List<CommentEntity> comments = new ArrayList<>();

	@OneToMany(mappedBy = "user")
	private List<BillEntity> bills = new ArrayList<>();


}
