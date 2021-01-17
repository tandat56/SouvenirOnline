package com.souvenironline.api.admin;

import com.souvenironline.dto.BlogDTO;
import com.souvenironline.service.admin.IBlogAdminService;
import com.souvenironline.service.web.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


@RestController(value = "orderAPIOfAdmin")
public class OrderAPI {

    @Autowired
    private IOrderService orderService;


    @DeleteMapping("/api/order")
    public void deleteBlog(@RequestBody long[] ids) {
        orderService.delete(ids);
    }
}
