package com.souvenironline.entity;

import lombok.*;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Getter
@Setter
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString
@EntityListeners(AuditingEntityListener.class)
@Table(name = "Colors")
public class ColorsEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "code")
    private String code;

    @Column(name = "name")
    private String name;

    @Column(name = "image")
    private String image;

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

    @OneToMany(mappedBy = "colors")
    private List<ProductEntity> products = new ArrayList<>();

    public List<ProductEntity> getProducts() {
        return products;
    }

}
