package com.souvenironline.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CategoryBlogDTO extends AbstractDTO<CategoryBlogDTO> {

    private String code;
    private String name;
    private int level;
}
