package com.souvenironline.service.admin.impl;

import com.souvenironline.converter.ProductConverter;
import com.souvenironline.dto.ProductDTO;
import com.souvenironline.entity.CategoryProductEntity;
import com.souvenironline.entity.ProductEntity;
import com.souvenironline.repository.CategoryProductRepository;
import com.souvenironline.repository.ProductRepository;
import com.souvenironline.service.admin.IProductAdminService;
import com.souvenironline.util.UploadFileUtils;
import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

@Service
public class ProductAdminService implements IProductAdminService {

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private ProductConverter productConverter;

    @Autowired
    private CategoryProductRepository categoryProductRepository;

    @Autowired
    private UploadFileUtils uploadFileUtils;

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
        CategoryProductEntity category = categoryProductRepository.findOneByCode(dto.getCategoryProductCode());
        ProductEntity productEntity = new ProductEntity();
        if (dto.getId() != null) {
            ProductEntity oldProduct = productRepository.findOne(dto.getId());
            oldProduct.setCategoryProduct(category);
            productEntity = productConverter.toEntity(oldProduct, dto);
            productEntity.setImage(oldProduct.getImage());

        } else {
            productEntity = productConverter.toEntity(dto);
            productEntity.setCategoryProduct(category);
        }
        savePhoto(dto, productEntity);
        return productConverter.toDTO(productRepository.save(productEntity));
    }

    private void savePhoto(ProductDTO dto, ProductEntity staffEntity) {
        String path = "/photo/" + dto.getPhotoName();
        if (dto.getPhotoBase64() != null) {
            if (staffEntity.getImage() != null) {
                if (!path.equals(staffEntity.getImage())) {
                    File file = new File("/home/asm/" + staffEntity.getImage());
                    file.delete();
                }
            }
            byte[] bytes = Base64.decodeBase64(dto.getPhotoBase64().getBytes());
            uploadFileUtils.writeOrUpdate(path, bytes);
            staffEntity.setImage(path);
        }
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

    @Override
    public List<ProductDTO> findAllProductHighlight() {
        List<ProductDTO> models = new ArrayList<>();
        List<ProductEntity> entities = productRepository.findAllProductHighlight();
        for (ProductEntity item : entities) {
            ProductDTO productDTO = productConverter.toDTO(item);
            models.add(productDTO);
        }
        return models;
    }

    @Override
    public List<ProductDTO> findAllNewProduct() {
        List<ProductDTO> models = new ArrayList<>();
        List<ProductEntity> entities = productRepository.findAllNewProduct();
        for (ProductEntity item : entities) {
            ProductDTO productDTO = productConverter.toDTO(item);
            models.add(productDTO);
        }
        return models;
    }

    @Override
    public List<ProductDTO> getProductLimitDesc() {
        List<ProductDTO> models = new ArrayList<>();
        List<ProductEntity> entities = productRepository.findAllProductLimit();
        for (ProductEntity item : entities) {
            ProductDTO productDTO = productConverter.toDTO(item);
            models.add(productDTO);
        }
        return models;
    }
}
