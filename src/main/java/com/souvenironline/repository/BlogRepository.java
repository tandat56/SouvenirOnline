package com.souvenironline.repository;

import com.souvenironline.entity.BlogEntity;
import com.souvenironline.entity.ProductEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface BlogRepository extends JpaRepository<BlogEntity, Long> {


}
