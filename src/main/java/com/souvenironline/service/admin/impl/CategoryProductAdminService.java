package com.souvenironline.service.admin.impl;

import com.souvenironline.converter.CategoryProductConverter;
import com.souvenironline.dto.CategoryProductDTO;
import com.souvenironline.dto.OrderCreateModifyDTO;
import com.souvenironline.entity.CategoryProductEntity;
import com.souvenironline.entity.OrderEntity;
import com.souvenironline.repository.CategoryProductRepository;
import com.souvenironline.service.admin.ICategoryProductAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CategoryProductAdminService implements ICategoryProductAdminService {

    @Autowired
    private CategoryProductRepository categoryProductRepository;
    @Autowired
    private CategoryProductConverter categoryProductConverter;

    @Override
    public Map<String, String> findAll() {
        Map<String, String> result = new HashMap<>();
        List<CategoryProductEntity> entities = categoryProductRepository.findAll();
        for (CategoryProductEntity item : entities) {
            result.put(item.getCode(), item.getName());
        }
        return result;
    }

    @Override
    public List<CategoryProductDTO> findAlll(Pageable pageable) {
        List<CategoryProductDTO> models = new ArrayList<>();
        List<CategoryProductEntity> entities = categoryProductRepository.findAll(pageable).getContent();
        for (CategoryProductEntity item : entities) {
            CategoryProductDTO order = categoryProductConverter.toDTO(item);
            models.add(order);
        }
        return models;
    }

    @Override
    @Transactional
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
    @Transactional
    public void delete(long[] ids) {
        for (long id : ids) {
            categoryProductRepository.delete(id);
        }
    }

    @Override
    public int getTotalItem() {
        return (int) categoryProductRepository.count();
    }

    @Override
    public CategoryProductDTO findById(long id) {
        return categoryProductConverter.toDTO(categoryProductRepository.findOne(id));
    }
}
