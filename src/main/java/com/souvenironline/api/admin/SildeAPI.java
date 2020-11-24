package com.souvenironline.api.admin;
import com.souvenironline.dto.SildeDTO;
import com.souvenironline.service.admin.ISildeAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


@RestController
public class SildeAPI {

    @Autowired
    private ISildeAdminService sildeAdminService;

    @PostMapping("/api/silde")
    public SildeDTO createSilde(@RequestBody SildeDTO sildeDTO) {
        return sildeAdminService.save(sildeDTO);
    }

    @PutMapping("/api/silde")
    public SildeDTO updateSilde(@RequestBody SildeDTO updateSilde) {
        return sildeAdminService.save(updateSilde);
    }

    @DeleteMapping("/api/silde")
    public void deleteSilde(@RequestBody long[] ids) {
        sildeAdminService.delete(ids);
    }
}
