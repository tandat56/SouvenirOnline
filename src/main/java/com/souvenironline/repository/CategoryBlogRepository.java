package com.souvenironline.repository;
import com.souvenironline.entity.CategoryBlogEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CategoryBlogRepository extends JpaRepository<CategoryBlogEntity, Long> {

    CategoryBlogEntity findOneByCode(String code);

    @Query(value = "select u from Blog u", nativeQuery = true)
    List<CategoryBlogEntity> findAllBlog();
}
