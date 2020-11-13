package com.souvenironline.repository;

import com.souvenironline.entity.CategoryBlogEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryBlogRepository extends JpaRepository<CategoryBlogEntity, Long> {

    CategoryBlogEntity findOneByCode(String code);
}
