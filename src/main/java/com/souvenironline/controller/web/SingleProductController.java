package com.souvenironline.controller.web;

import com.souvenironline.dto.ProductDTO;
import com.souvenironline.service.web.IProductWebService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class SingleProductController {

    @Autowired
    private IProductWebService productWebService;

    @RequestMapping(value = "/chi-tiet-san-pham/{id}", method = RequestMethod.GET)
    public ModelAndView singlePPage(@PathVariable Long id) {
        ProductDTO productDTO = new ProductDTO();
        ModelAndView mav = new ModelAndView("web/single-product");
        if (id != null) {
            mav.addObject("model", productWebService.findById(id));
            mav.addObject("products", productWebService.findAllProductLimit());
        }
        return mav;
    }
}
