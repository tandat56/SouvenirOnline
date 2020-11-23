package com.souvenironline.service.web.impl;

import com.souvenironline.converter.ProductConverter;
import com.souvenironline.dto.ProductDTO;
import com.souvenironline.entity.ProductEntity;
import com.souvenironline.repository.ProductRepository;
import com.souvenironline.service.web.IProductWebService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductWebService implements IProductWebService {
    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private ProductConverter productConverter;

    @Override
    public List<ProductDTO> findAll() {
        List<ProductDTO> models = new ArrayList<>();
        List<ProductEntity> entities = productRepository.findAll();

        for (ProductEntity item : entities) {
            ProductDTO productDTO = productConverter.toDTO(item);
            models.add(productDTO);
        }
        return models;
    }
}
