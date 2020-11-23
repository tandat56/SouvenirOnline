package com.souvenironline.service.admin;
import com.souvenironline.dto.CategoryProductDTO;

import java.util.Map;

public interface ICategoryProductAdminService {

    Map<String,String> findAll();
    CategoryProductDTO save(CategoryProductDTO dto);
    void delete(long[] ids);
}
