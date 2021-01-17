package com.souvenironline.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.*;

import lombok.*;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Getter
@Setter
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString
@EntityListeners(AuditingEntityListener.class)
@Table(name = "Role")
public class RoleEntity  {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
		
	@Column(name = "name")
	private String name;
	
	@Column(name = "code")
	private String code;

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

	@ManyToMany(mappedBy = "Role")
    private List<UserEntity> users = new ArrayList<>();

    public RoleEntity(String code) {
        super();
        this.code = code;
    }
}
