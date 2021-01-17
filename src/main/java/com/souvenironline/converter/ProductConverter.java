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
        result.setTitle(entity.getTitle());
        result.setMoreImage(entity.getMoreImage());
        result.setDetail(entity.getDetail());
        result.setHightlight(entity.getHighlight());
        result.setNewProduct(entity.getNewProduct());
        result.setViewCount(entity.getViewCount());
        result.setDiscount(entity.getDiscount());
        result.setPrice(entity.getPrice());
        result.setStatus(entity.getStatus());
        result.setCategoryProductCode(entity.getCategoryProductCode());
        result.setCreatedBy(entity.getCreatedBy());
        result.setCreatedDate(entity.getCreatedDate());
        return result;
    }

    public ProductEntity toEntity(ProductDTO dto) {
        ProductEntity result = new ProductEntity();
        result.setId(dto.getId());
        result.setProductName(dto.getProductName());
        result.setImage(dto.getImage());
        result.setTitle(dto.getTitle());
        result.setMoreImage(dto.getMoreImage());
        result.setCategoryProductCode(dto.getCategoryProductCode());
        result.setDetail(dto.getDetail());
        result.setHighlight(dto.getHightlight());
        result.setNewProduct(dto.getNewProduct());
        result.setViewCount(dto.getViewCount());
        result.setDiscount(dto.getDiscount());
        result.setPrice(dto.getPrice());
        result.setStatus(dto.getStatus());
        return result;
    }
    public ProductEntity toEntity(ProductEntity result, ProductDTO dto){
        result.setId(dto.getId());
        result.setProductName(dto.getProductName());
        result.setCategoryProductCode(dto.getCategoryProductCode());
        result.setImage(dto.getImage());
        result.setTitle(dto.getTitle());
        result.setMoreImage(dto.getMoreImage());
        result.setDetail(dto.getDetail());
        result.setHighlight(dto.getHightlight());
        result.setNewProduct(dto.getNewProduct());
        result.setViewCount(dto.getViewCount());
        result.setDiscount(dto.getDiscount());
        result.setPrice(dto.getPrice());
        result.setStatus(dto.getStatus());
        return result;
    }
}
