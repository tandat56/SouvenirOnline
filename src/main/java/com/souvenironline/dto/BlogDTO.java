package com.souvenironline.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BlogDTO extends AbstractDTO<BlogDTO> {

    private String title;
    private String thumbnail;
    private String shortDescription;
    private String content;
    private Long categoryId;
    private String categoryCode;
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
