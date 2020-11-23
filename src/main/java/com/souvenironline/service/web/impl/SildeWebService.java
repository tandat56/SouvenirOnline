package com.souvenironline.service.web.impl;

import com.souvenironline.converter.SildeConverter;
import com.souvenironline.dto.SildeDTO;
import com.souvenironline.entity.SildeEntity;
import com.souvenironline.repository.SildeRepository;
import com.souvenironline.service.web.ISildeWebService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class SildeWebService implements ISildeWebService {

    @Autowired
    private SildeRepository sildeRepository;

    @Autowired
    private SildeConverter sildeConverter;


    @Override
    public List<SildeDTO> findAll() {
        List<SildeDTO> models = new ArrayList<>();
        List<SildeEntity> entities = sildeRepository.findAll();

        for (SildeEntity item : entities) {
            SildeDTO sildeDTO = sildeConverter.toDTO(item);
            models.add(sildeDTO);
        }
        return models;
    }
}
