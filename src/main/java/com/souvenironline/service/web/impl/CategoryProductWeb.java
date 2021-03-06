package com.souvenironline.service.web.impl;

import com.souvenironline.converter.CategoryProductConverter;
import com.souvenironline.dto.CategoryProductDTO;
import com.souvenironline.entity.CategoryProductEntity;
import com.souvenironline.entity.ProductEntity;
import com.souvenironline.repository.CategoryProductRepository;
import com.souvenironline.service.web.ICategoryProductWebService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CategoryProductWeb implements ICategoryProductWebService {

    @Autowired
    private CategoryProductRepository categoryProductRepository;

    @Autowired
    private CategoryProductConverter categoryProductConverter;

    @Override
    public List<CategoryProductDTO> findAll() {
        List<CategoryProductDTO> models = new ArrayList<>();
        List<CategoryProductEntity> entities = categoryProductRepository.findAll();
        for (CategoryProductEntity item : entities) {
            CategoryProductDTO categoryProductDTO = categoryProductConverter.toDTO(item);
            models.add(categoryProductDTO);
        }
        return models;
    }

    @Override
    public List<CategoryProductDTO> findAllByLevel(int level) {
        List<CategoryProductDTO> models = new ArrayList<>();
        List<CategoryProductEntity> entities = categoryProductRepository.findAllByLevel(level);
        for (CategoryProductEntity item : entities) {
            CategoryProductDTO categoryProductDTO = categoryProductConverter.toDTO(item);
            models.add(categoryProductDTO);
        }
        return models;
    }

    @Override
    public CategoryProductDTO save(CategoryProductDTO dto) {
        CategoryProductEntity categoryProductEntity = new CategoryProductEntity();
        if (dto.getId() != null) {
            CategoryProductEntity oldCategoryProduct = categoryProductRepository.findOne(dto.getId());
            categoryProductEntity = categoryProductConverter.toEntity(oldCategoryProduct, dto);

        } else {
            categoryProductEntity = categoryProductConverter.toEntity(dto);
        }
        return categoryProductConverter.toDTO(categoryProductRepository.save(categoryProductEntity));
    }

    @Override
    public void delete(long[] ids) {
        for (long id : ids) {
            categoryProductRepository.delete(id);
        }
    }
}
