package com.souvenironline.entity;

import lombok.*;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.*;

@Getter
@Setter
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString
@EntityListeners(AuditingEntityListener.class)
@Table(name = "User")
public class UserEntity  {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

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

	@Column(name = "createddate", updatable = false)
	@CreatedDate
	private Date createdDate;

	@Column(name = "modifieddate", updatable = true)
	@LastModifiedDate
	private Date modifiedDate;

	@Column(name = "createdby", updatable = false)
	@CreatedBy
	private String createdBy;

	@Column(name = "modifiedby", updatable = true)
	@LastModifiedBy
	private String modifiedBy;

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

	@OneToMany(mappedBy = "user1")
	@ToString.Exclude
	private List<OrderEntity> bills = new ArrayList<>();

}
