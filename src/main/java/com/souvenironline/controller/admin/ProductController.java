package com.souvenironline.controller.admin;

import com.souvenironline.dto.ProductDTO;
import com.souvenironline.service.ICategoryProductService;
import com.souvenironline.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "productControllerOfAdmin")
public class ProductController {

    @Autowired
    private IProductService productService;

    @Autowired
    private ICategoryProductService categoryProductService;

    @RequestMapping(value = "/quan-tri/san-pham/danh-sach", method = RequestMethod.GET)
    public ModelAndView showList(@RequestParam("page") int page,
                                 @RequestParam("limit") int limit) {
        ProductDTO model = new ProductDTO();
        model.setPage(page);
        model.setLimit(limit);
        ModelAndView mav = new ModelAndView("admin/product/list");
        Pageable pageable = new PageRequest(page - 1, limit);
        model.setListResult(productService.findAll(pageable));
        model.setTotalItem(productService.getTotalItem());
        model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));

        mav.addObject("model", model);
        return mav;
    }

    @RequestMapping(value = "/quan-tri/san-pham/chinh-sua", method = RequestMethod.GET)
    public ModelAndView editList(@RequestParam(value = "id", required = false) Long id) {
        ModelAndView mav = new ModelAndView("admin/product/edit");
        ProductDTO model = new ProductDTO();
        if (id != null) {
            model = productService.findById(id);
        }
        mav.addObject("categories", categoryProductService.findAll());
        mav.addObject("model", model);
        return mav;
    }

}
