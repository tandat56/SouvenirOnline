package com.souvenironline.entity;

import lombok.*;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "User")
@ToString
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

	@ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@ToString.Exclude
	@JoinTable(name = "User_Role", joinColumns = @JoinColumn(name = "userid"),
	inverseJoinColumns = @JoinColumn(name = "roleid"))
	private List<RoleEntity> Role = new ArrayList<>();


	public <T> UserEntity(Long id, Date createdDate, Date modifiedDate, String createdBy, String modifiedBy, String userName, String password, String fullName, String phoneNumber, String email, String city, String address, Integer status, List<RoleEntity> user) {
		this.userName = userName;
		this.password = password;
		this.fullName = fullName;
		this.status = status;
		Role = user;
	}

	public UserEntity(List<RoleEntity> role) {

	}

	@OneToMany(mappedBy = "user")
	@ToString.Exclude
	private List<CommentEntity> comments = new ArrayList<>();

	@OneToMany(mappedBy = "user")
	@ToString.Exclude
	private List<BillEntity> bills = new ArrayList<>();

}
