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

    @RequestMapping(value = "/chi-tiet-san-pham", method = RequestMethod.GET)
    public ModelAndView singlePPage(@RequestParam(value = "id") Long id) {
        ModelAndView mav = new ModelAndView("web/single-product");
        ProductDTO productDTO = new ProductDTO();
        productDTO.setListResult(productWebService.findById(id));
        if (id != null) {
            mav.addObject("model", productWebService.findById(id));
            mav.addObject("products", productWebService.findAll());
        }
        return mav;
    }
}
