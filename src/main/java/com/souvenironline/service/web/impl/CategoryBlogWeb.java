package com.souvenironline.service.web.impl;

import com.souvenironline.converter.CategoryBlogConverter;
import com.souvenironline.converter.CategoryProductConverter;
import com.souvenironline.dto.CategoryBlogDTO;
import com.souvenironline.dto.CategoryProductDTO;
import com.souvenironline.entity.CategoryBlogEntity;
import com.souvenironline.entity.CategoryProductEntity;
import com.souvenironline.repository.CategoryBlogRepository;
import com.souvenironline.repository.CategoryProductRepository;
import com.souvenironline.service.web.ICategoryBlogWebService;
import com.souvenironline.service.web.ICategoryProductWebService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CategoryBlogWeb implements ICategoryBlogWebService {

    @Autowired
    private CategoryBlogRepository categoryBlogRepository;
    @Autowired
    private CategoryBlogConverter categoryBlogConverter;


    @Override
    public List<CategoryBlogDTO> findAll() {
        List<CategoryBlogDTO> models = new ArrayList<>();
        List<CategoryBlogEntity> entities = categoryBlogRepository.findAll();
        for (CategoryBlogEntity item : entities) {
            CategoryBlogDTO categoryBlogDTO = categoryBlogConverter.toDTO(item);
            models.add(categoryBlogDTO);
        }
        return models;
    }

    @Override
    public List<CategoryBlogDTO> findAllByLevel(int level) {
        List<CategoryBlogDTO> models = new ArrayList<>();
        List<CategoryBlogEntity> entities = categoryBlogRepository.findAllByLevel(level);
        for (CategoryBlogEntity item : entities) {
            CategoryBlogDTO categoryProductDTO = categoryBlogConverter.toDTO(item);
            models.add(categoryProductDTO);
        }
        return models;
    }
}
