package com.souvenironline.repository;

import com.souvenironline.dto.CategoryProductDTO;
import com.souvenironline.entity.CategoryProductEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CategoryProductRepository extends JpaRepository<CategoryProductEntity, Long> {

    CategoryProductEntity findOneByCode(String code);
    List<CategoryProductEntity> findAllByLevel(int level);
}
