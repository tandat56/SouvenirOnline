package com.souvenironline.service.web;

import com.souvenironline.dto.CategoryProductDTO;
import com.souvenironline.dto.ProductDTO;

import java.util.List;

public interface ICategoryProductWebService {

    List<CategoryProductDTO> findAll();
    List<CategoryProductDTO> findAllByLevel(int level);
    CategoryProductDTO save(CategoryProductDTO dto);
    void delete(long[] ids);
}
