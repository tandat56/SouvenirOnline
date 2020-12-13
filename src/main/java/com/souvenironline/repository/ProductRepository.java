package com.souvenironline.repository;

import com.souvenironline.entity.ProductEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ProductRepository extends JpaRepository<ProductEntity, Long> {

    @Query(value = "select * from Product as p WHERE p.highlight = 1 GROUP BY p.id ORDER BY RAND() LIMIT 10", nativeQuery = true)
    List<ProductEntity> findAllProductHighlight();

    @Query(value = "select * from Product as p WHERE p.new_product = 1 GROUP BY p.id ORDER BY RAND() LIMIT 10", nativeQuery = true)
    List<ProductEntity> findAllNewProduct();

   @Query(value ="select * from Product as p where p.category_product_code = ?1 " ,nativeQuery = true)
    List<ProductEntity> findAllProductByCategoryCode(String code);

   List<ProductEntity> findById(long id);

}
