package com.souvenironline.service.admin;
import com.souvenironline.dto.CategoryProductDTO;
import com.souvenironline.dto.OrderCreateModifyDTO;
import com.souvenironline.dto.ProductDTO;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Map;

public interface ICategoryProductAdminService {

    Map<String,String> findAll();
    List<CategoryProductDTO> findAlll(Pageable pageable);
    CategoryProductDTO save(CategoryProductDTO dto);
    void delete(long[] ids);
    int getTotalItem();
    CategoryProductDTO findById(long id);
}
