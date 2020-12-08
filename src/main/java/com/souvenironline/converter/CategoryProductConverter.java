package com.souvenironline.converter;

import com.souvenironline.dto.CategoryProductDTO;
import com.souvenironline.entity.CategoryProductEntity;
import org.springframework.stereotype.Component;

@Component
public class CategoryProductConverter {

    public CategoryProductDTO toDTO(CategoryProductEntity entity){
        CategoryProductDTO result = new CategoryProductDTO();
        result.setId(entity.getId());
        result.setCode(entity.getCode());
        result.setName(entity.getName());

        return result;
    }
    public CategoryProductEntity toEntity(CategoryProductDTO dto){
        CategoryProductEntity result = new CategoryProductEntity();
        result.setCode(dto.getCode());
        result.setName(dto.getName());

        return result;
    }
    public CategoryProductEntity toEntity(CategoryProductEntity result, CategoryProductDTO dto){
        result.setCode(dto.getCode());
        result.setName(dto.getName());

        return result;
    }
}
