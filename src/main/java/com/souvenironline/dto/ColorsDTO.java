package com.souvenironline.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ColorsDTO extends AbstractDTO<ColorsDTO> {

    private String name;
    private String code;
    private String image;


}
