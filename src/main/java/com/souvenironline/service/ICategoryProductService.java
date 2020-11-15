package com.souvenironline.service;
import com.souvenironline.dto.CategoryProductDTO;

import java.util.Map;

public interface ICategoryProductService {

    Map<String,String> findAll();
    CategoryProductDTO save(CategoryProductDTO dto);
    void delete(long[] ids);
}
