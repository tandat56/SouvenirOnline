package com.souvenironline.repository;
import com.souvenironline.entity.CategoryBlogEntity;
import com.souvenironline.entity.CategoryProductEntity;
import com.souvenironline.entity.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CategoryBlogRepository extends JpaRepository<CategoryBlogEntity, Long> {


    CategoryBlogEntity findOneByCode(String code);

    @Query(value = "select * from Blog", nativeQuery = true)
    List<CategoryBlogEntity> findAllBlog();



}
