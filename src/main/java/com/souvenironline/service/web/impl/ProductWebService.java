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

    @Override
    public List<ProductDTO> findAllProductHighlight() {
        List<ProductDTO> models = new ArrayList<>();
        List<ProductEntity> entities = productRepository.findAllProductHighlight();

        for (ProductEntity item: entities){
            ProductDTO productDTO = productConverter.toDTO(item);
            models.add(productDTO);
        }
        return models;
    }

    @Override
    public List<ProductDTO> findAllNewProduct() {
        List<ProductDTO> models = new ArrayList<>();
        List<ProductEntity> entities = productRepository.findAllNewProduct();

        for (ProductEntity item: entities){
            ProductDTO productDTO = productConverter.toDTO(item);
            models.add(productDTO);
        }
        return models;
    }

    @Override
    public List<ProductDTO> findAllProductByCategoryCode(String code) {
        List<ProductDTO> models = new ArrayList<>();
        List<ProductEntity> entities = productRepository.findAllProductByCategoryCode(code);

        for (ProductEntity item: entities){
            ProductDTO productDTO = productConverter.toDTO(item);
            models.add(productDTO);
        }
        return models;
    }

    @Override
    public int getTotalItem() {
        return (int) productRepository.count();
    }

    @Override
    public List<ProductDTO> findById(long id) {
        List<ProductDTO> models = new ArrayList<>();
        List<ProductEntity> entity = productRepository.findById(id);
        for (ProductEntity item: entity){
            ProductDTO productDTO = productConverter.toDTO(item);
            models.add(productDTO);
        }
        return models;
    }
}
