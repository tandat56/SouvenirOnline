package com.souvenironline.converter;
import com.souvenironline.dto.SildeDTO;
import com.souvenironline.entity.SildeEntity;
import org.springframework.stereotype.Component;

@Component
public class SildeConverter {

    public SildeDTO toDTO(SildeEntity entity) {
        SildeDTO result = new SildeDTO();
        result.setId(entity.getId());
        result.setImage(entity.getImage());
        result.setCaption(entity.getCaption());
        result.setContent(entity.getContent());
        return result;
    }

    public SildeEntity toEntity(SildeDTO dto) {
        SildeEntity result = new SildeEntity();
        result.setImage(dto.getImage());
        result.setCaption(dto.getCaption());
        result.setContent(dto.getContent());
        return result;
    }
    public SildeEntity toEntity(SildeEntity result, SildeDTO dto){
        result.setImage(dto.getImage());
        result.setCaption(dto.getCaption());
        result.setContent(dto.getContent());
        return result;
    }
}
