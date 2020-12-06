package com.souvenironline.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CategoryProductDTO extends AbstractDTO<CategoryProductDTO> {
    
    private String name;
    private String code;


}
