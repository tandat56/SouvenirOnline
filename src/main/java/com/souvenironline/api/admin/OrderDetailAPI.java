package com.souvenironline.api.admin;

import com.souvenironline.service.web.IOrderDetailService;
import com.souvenironline.service.web.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;


@RestController(value = "orderDetailAPIOfAdmin")
public class OrderDetailAPI {

    @Autowired
    private IOrderDetailService orderDetailService;


    @DeleteMapping("/api/orderDetail")
    public void deleteBlog(@RequestBody long[] ids) {
        orderDetailService.delete(ids);
    }
}
