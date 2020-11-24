package com.souvenironline.dto;

public class SildeDTO extends AbstractDTO<SildeDTO> {

    private String image;
    private String name;
    private String content;
    private String caption;
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

    public String getPhotoName() {
        return photoName;
    }

    public void setPhotoName(String photoName) {
        this.photoName = photoName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCaption() {
        return caption;
    }

    public void setCaption(String caption) {
        this.caption = caption;
    }
}
