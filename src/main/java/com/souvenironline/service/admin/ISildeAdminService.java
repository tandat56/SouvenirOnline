package com.souvenironline.service.admin;


import com.souvenironline.dto.SildeDTO;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface ISildeAdminService {
    List<SildeDTO> findAll(Pageable pageable);
    int getTotalItem();
    SildeDTO findById(long id);
    SildeDTO save(SildeDTO dto);
    void delete(long[] ids);
}
