package com.souvenironline.service.admin;

import com.souvenironline.dto.ProductDTO;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface IProductAdminService {

    List<ProductDTO> findAll(Pageable pageable);

    ProductDTO save(ProductDTO dto);

    void delete(long[] ids);

    int getTotalItem();

    ProductDTO findById(long id);

    List<ProductDTO> findAllProductHighlight();
    List<ProductDTO> findAllNewProduct();

    public List<ProductDTO> getProductLimitDesc();

}
