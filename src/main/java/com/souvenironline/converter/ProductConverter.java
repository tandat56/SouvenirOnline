package com.souvenironline.converter;
import com.souvenironline.dto.ProductDTO;
import com.souvenironline.entity.ProductEntity;
import org.springframework.stereotype.Component;

@Component
public class ProductConverter {

    public ProductDTO toDTO(ProductEntity entity) {
        ProductDTO result = new ProductDTO();
        result.setId(entity.getId());
        result.setProductName(entity.getProductName());
        result.setImage(entity.getImage());
        result.setMoreImage(entity.getMoreImage());
        result.setDetail(entity.getDetail());
        result.setViewCount(entity.getViewCount());
        result.setDiscount(entity.getDiscount());
        result.setPrice(entity.getPrice());
        result.setStatus(entity.getStatus());
        result.setCategoryProduct(entity.getCategoryProduct().getCode());
        return result;
    }

    public ProductEntity toEntity(ProductDTO dto) {
        ProductEntity result = new ProductEntity();

        result.setProductName(dto.getProductName());
        result.setImage(dto.getImage());
        result.setMoreImage(dto.getMoreImage());
        result.setDetail(dto.getDetail());
        result.setViewCount(dto.getViewCount());
        result.setDiscount(dto.getDiscount());
        result.setPrice(dto.getPrice());
        result.setStatus(dto.getStatus());
        return result;
    }
    public ProductEntity toEntity(ProductEntity result, ProductDTO dto){
        result.setProductName(dto.getProductName());
        result.setImage(dto.getImage());
        result.setMoreImage(dto.getMoreImage());
        result.setDetail(dto.getDetail());
        result.setViewCount(dto.getViewCount());
        result.setDiscount(dto.getDiscount());
        result.setPrice(dto.getPrice());
        result.setStatus(dto.getStatus());
        return result;
    }
}
