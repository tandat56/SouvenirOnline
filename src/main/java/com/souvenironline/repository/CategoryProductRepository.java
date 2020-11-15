package com.souvenironline.repository;

import com.souvenironline.entity.CategoryProductEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryProductRepository extends JpaRepository<CategoryProductEntity, Long> {

    CategoryProductEntity findOneByCode(String code);
}
