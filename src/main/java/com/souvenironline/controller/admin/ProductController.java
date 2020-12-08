package com.souvenironline.controller.admin;

import com.souvenironline.dto.ProductDTO;
import com.souvenironline.service.admin.ICategoryProductAdminService;
import com.souvenironline.service.admin.IProductAdminService;
import com.souvenironline.service.admin.impl.ProductAdminService;
import com.souvenironline.util.MessageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller(value = "productControllerOfAdmin")
public class ProductController {

    @Autowired
    private IProductAdminService productService;

    @Autowired
    private ICategoryProductAdminService categoryProductService;

    @Autowired
    private MessageUtil messageUtil;

    @Autowired
    private IProductAdminService productAdminService;

    @RequestMapping(value = "/quan-tri/san-pham/danh-sach", method = RequestMethod.GET)
    public ModelAndView showList(@RequestParam("page") int page,
                                 @RequestParam("limit") int limit, HttpServletRequest request) {
        ProductDTO model = new ProductDTO();
        model.setPage(page);
        model.setLimit(limit);
        ModelAndView mav = new ModelAndView("admin/product/list");
        Pageable pageable = new PageRequest(page - 1, limit);
        model.setListResult(productService.findAll(pageable));
        model.setTotalItem(productService.getTotalItem());
        model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));

        if (request.getParameter("message") != null) {
            Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
            mav.addObject("message", message.get("message"));
            mav.addObject("alert", message.get("alert"));
        }

        mav.addObject("model", model);
        return mav;
    }

    @RequestMapping(value = "/quan-tri/san-pham/chinh-sua", method = RequestMethod.GET)
    public ModelAndView editList(@RequestParam(value = "id", required = false) Long id, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("admin/product/edit");
        ProductDTO model = new ProductDTO();
        if (id != null) {
            model = productService.findById(id);
        }
        if (request.getParameter("message") != null) {
            Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
            mav.addObject("message", message.get("message"));
            mav.addObject("alert", message.get("alert"));
        }
        mav.addObject("categories", categoryProductService.findAll());
        mav.addObject("model", model);
        return mav;
    }
    @RequestMapping(value = "/quan-tri/san-pham/san-pham-moi", method = RequestMethod.GET)
    public ModelAndView subProductNew(@RequestParam("page") int page,
                                      @RequestParam("limit") int limit, HttpServletRequest request) {

        ProductDTO model = new ProductDTO();
        model.setPage(page);
        model.setLimit(limit);
        ModelAndView mav = new ModelAndView("admin/product/list");
        Pageable pageable = new PageRequest(page - 1, limit);
        model.setListResult(productAdminService.findAllProductHighlight());
        model.setTotalItem(productService.getTotalItem());
        model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));

        if (request.getParameter("message") != null) {
            Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
            mav.addObject("message", message.get("message"));
            mav.addObject("alert", message.get("alert"));
        }

        mav.addObject("model", model);
        return mav;
    }

}
