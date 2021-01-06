package com.souvenironline.controller.admin;

import com.souvenironline.dto.CategoryProductDTO;
import com.souvenironline.dto.ProductDTO;
import com.souvenironline.dto.SildeDTO;
import com.souvenironline.repository.ReportRepository;
import com.souvenironline.service.admin.ICategoryProductAdminService;
import com.souvenironline.service.admin.IProductAdminService;
import com.souvenironline.service.admin.impl.ProductAdminService;
import com.souvenironline.util.MessageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller(value = "productControllerOfAdmin")
public class ProductController {

    @Autowired
    private IProductAdminService productAdminService;

    @Autowired
    private ReportRepository reportRepository;

    @Autowired
    private ICategoryProductAdminService categoryProductService;

    @Autowired
    private MessageUtil messageUtil;

//    @RequestMapping(value = "/quan-tri/san-pham/thong-ke", method = RequestMethod.GET)
//    public ModelAndView inventoryCategory(Model model) {
//        ModelAndView mav = new ModelAndView("web/thongke");
//        model.addAttribute("items",reportRepository.inventoryByCategory());
//        return mav;
//    }


    @RequestMapping(value = "/quan-tri/san-pham/danh-sach", method = RequestMethod.GET)
    public ModelAndView showList(@RequestParam("page") int page,
                                 @RequestParam("limit") int limit, HttpServletRequest request) {
        ProductDTO model = new ProductDTO();
        model.setPage(page);
        model.setLimit(limit);
        ModelAndView mav = new ModelAndView("admin/product/list");
        Pageable pageable = new PageRequest(page - 1, limit);
        model.setListResult(productAdminService.findAll(pageable));
        model.setTotalItem(productAdminService.getTotalItem());
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
            model = productAdminService.findById(id);
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
        model.setTotalItem(productAdminService.getTotalItem());
        model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));

        if (request.getParameter("message") != null) {
            Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
            mav.addObject("message", message.get("message"));
            mav.addObject("alert", message.get("alert"));
        }

        mav.addObject("model", model);
        return mav;
    }
    @RequestMapping(value = "/quan-tri/san-pham/san-pham-noi-bat", method = RequestMethod.GET)
    public ModelAndView subProductHighlight(@RequestParam("page") int page,
                                      @RequestParam("limit") int limit, HttpServletRequest request) {

        ProductDTO model = new ProductDTO();
        model.setPage(page);
        model.setLimit(limit);
        ModelAndView mav = new ModelAndView("admin/product/list");
        Pageable pageable = new PageRequest(page - 1, limit);
        model.setListResult(productAdminService.findAllNewProduct());
        model.setTotalItem(productAdminService.getTotalItem());
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
