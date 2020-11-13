package com.souvenironline.service.impl;

import com.souvenironline.converter.CategoryBlogConverter;
import com.souvenironline.dto.CategoryBlogDTO;
import com.souvenironline.entity.BlogEntity;
import com.souvenironline.entity.CategoryBlogEntity;
import com.souvenironline.repository.CategoryBlogRepository;
import com.souvenironline.service.ICategoryBlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CategoryBlogService implements ICategoryBlogService {

    @Autowired
    private CategoryBlogRepository categoryBlogRepository;

    @Autowired
    private CategoryBlogConverter categoryBlogConverter;

    @Override
    public Map<String,String> findAll() {
        Map<String,String> result = new HashMap<>();
        List<CategoryBlogEntity> entities = categoryBlogRepository.findAll();
        for (CategoryBlogEntity item: entities){

            result.put(item.getCode(), item.getName());
        }
        return result;
    }

    @Override
    public CategoryBlogDTO save(CategoryBlogDTO dto) {
        CategoryBlogEntity categoryBlogEntity = new CategoryBlogEntity();
        if (dto.getId() != null) {
            CategoryBlogEntity oldCategoryBlog = categoryBlogRepository.findOne(dto.getId());
            categoryBlogEntity = categoryBlogConverter.toEntity(oldCategoryBlog,dto);
        } else {
            categoryBlogEntity = categoryBlogConverter.toEntity(dto);
        }
        return categoryBlogConverter.toDTO(categoryBlogRepository.save(categoryBlogEntity));
    }

    @Override
    public void delete(long[] ids) {
        for (long id : ids) {
            categoryBlogRepository.delete(id);
        }
    }
}
