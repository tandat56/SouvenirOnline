package com.souvenironline.converter;

import com.souvenironline.dto.BlogDTO;
import com.souvenironline.dto.CategoryBlogDTO;
import com.souvenironline.entity.BlogEntity;
import com.souvenironline.entity.CategoryBlogEntity;
import org.springframework.stereotype.Component;

@Component
public class CategoryBlogConverter {

    public CategoryBlogDTO toDTO(CategoryBlogEntity entity){
        CategoryBlogDTO result = new CategoryBlogDTO();
        result.setId(entity.getId());
        result.setCode(entity.getCode());
        result.setName(entity.getName());
        return result;
    }
    public CategoryBlogEntity toEntity(CategoryBlogDTO dto){
        CategoryBlogEntity result = new CategoryBlogEntity();
        result.setCode(dto.getCode());
        result.setName(dto.getName());
        return result;
    }
    public CategoryBlogEntity toEntity(CategoryBlogEntity result, CategoryBlogDTO dto){
        result.setCode(dto.getCode());
        result.setName(dto.getName());
        return result;
    }
}
