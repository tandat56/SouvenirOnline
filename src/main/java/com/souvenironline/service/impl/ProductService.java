package com.souvenironline.service.impl;

import com.souvenironline.converter.ProductConverter;
import com.souvenironline.dto.ProductDTO;
import com.souvenironline.entity.CategoryProductEntity;
import com.souvenironline.entity.ProductEntity;
import com.souvenironline.repository.CategoryProductRepository;
import com.souvenironline.repository.ProductRepository;
import com.souvenironline.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService implements IProductService {

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private ProductConverter productConverter;

    @Autowired
    private CategoryProductRepository categoryProductRepository;

    @Override
    public List<ProductDTO> findAll(Pageable pageable) {
        List<ProductDTO> models = new ArrayList<>();
        List<ProductEntity> entities = productRepository.findAll(pageable).getContent();

        for (ProductEntity item : entities) {
            ProductDTO productDTO = productConverter.toDTO(item);
            models.add(productDTO);
        }
        return models;
    }

    @Override
    @Transactional
    public ProductDTO save(ProductDTO dto) {
        CategoryProductEntity category = categoryProductRepository.findOneByCode(dto.getCategoryProduct());
        ProductEntity productEntity = new ProductEntity();
        if (dto.getId() != null) {
            ProductEntity oldProduct = productRepository.findOne(dto.getId());
            oldProduct.setCategoryProduct(category);
            oldProduct = productConverter.toEntity(oldProduct, dto);
        } else {
            productEntity = productConverter.toEntity(dto);
            productEntity.setCategoryProduct(category);
        }

        return productConverter.toDTO(productRepository.save(productEntity));
    }

    @Override
    @Transactional
    public void delete(long[] ids) {
        for (long id : ids) {
            productRepository.delete(id);
        }
    }

    @Override
    public int getTotalItem() {
        return (int) productRepository.count();
    }

    @Override
    public ProductDTO findById(long id) {
        ProductEntity entity = productRepository.findOne(id);
        return productConverter.toDTO(entity);
    }
}
