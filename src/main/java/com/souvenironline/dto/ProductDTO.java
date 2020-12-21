package com.souvenironline.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ProductDTO extends AbstractDTO<ProductDTO> {

    private String productName;
    private String title;
    private String sale;
    private String image;
    private String moreImage;
    private String detail;
    private Long viewCount;
    private String discount;
    private int hightlight;
    private int newProduct;
    private Double price;
    private Integer status;
    private String categoryProductCode;
    private String photoBase64;
    private String photoName;

    public String getPhotoBase64() {
        if (photoBase64 != null) {
            return photoBase64.split(",")[1];
        }
        return photoBase64;
    }

    public void setPhotoBase64(String photoBase64) {
        this.photoBase64 = photoBase64;
    }
}
