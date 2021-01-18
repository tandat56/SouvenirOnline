package com.souvenironline.service.admin.impl;

import com.souvenironline.converter.CategoryBlogConverter;
import com.souvenironline.dto.CategoryBlogDTO;
import com.souvenironline.dto.CategoryProductDTO;
import com.souvenironline.entity.CategoryBlogEntity;
import com.souvenironline.entity.CategoryProductEntity;
import com.souvenironline.repository.CategoryBlogRepository;
import com.souvenironline.service.admin.ICategoryBlogAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CategoryBlogAdminService implements ICategoryBlogAdminService {

    @Autowired
    private CategoryBlogRepository categoryBlogRepository;

    @Autowired
    private CategoryBlogConverter categoryBlogConverter;

    @Override
    public Map<String, String> findAll() {
        Map<String, String> result = new HashMap<>();
        List<CategoryBlogEntity> entities = categoryBlogRepository.findAll();
        for (CategoryBlogEntity item : entities) {

            result.put(item.getCode(), item.getName());
        }
        return result;
    }

    @Override
    @Transactional
    public CategoryBlogDTO save(CategoryBlogDTO dto) {
        CategoryBlogEntity categoryBlogEntity = new CategoryBlogEntity();
        if (dto.getId() != null) {
            CategoryBlogEntity oldCategoryBlog = categoryBlogRepository.findOne(dto.getId());
            categoryBlogEntity = categoryBlogConverter.toEntity(oldCategoryBlog, dto);
        } else {
            categoryBlogEntity = categoryBlogConverter.toEntity(dto);
        }
        return categoryBlogConverter.toDTO(categoryBlogRepository.save(categoryBlogEntity));
    }

    @Override
    @Transactional
    public void delete(long[] ids) {
        for (long id : ids) {
            categoryBlogRepository.delete(id);
        }
    }

    @Override
    public List<CategoryBlogDTO> findAllBlog() {
        List<CategoryBlogDTO> models = new ArrayList<>();
        List<CategoryBlogEntity> entities = categoryBlogRepository.findAll();
        for (CategoryBlogEntity item : entities) {
            CategoryBlogDTO categoryBlogDTO = categoryBlogConverter.toDTO(item);
            models.add(categoryBlogDTO);
        }
        return models;
    }

    @Override
    public List<CategoryBlogDTO> findAlll(Pageable pageable) {
        List<CategoryBlogDTO> models = new ArrayList<>();
        List<CategoryBlogEntity> entities = categoryBlogRepository.findAll(pageable).getContent();
        for (CategoryBlogEntity item : entities) {
            CategoryBlogDTO order = categoryBlogConverter.toDTO(item);
            models.add(order);
        }
        return models;
    }

    @Override
    public int getTotalItem() {
        return (int) categoryBlogRepository.count();
    }

    @Override
    public CategoryBlogDTO findById(long id) {
        return categoryBlogConverter.toDTO(categoryBlogRepository.findOne(id));
    }

}
