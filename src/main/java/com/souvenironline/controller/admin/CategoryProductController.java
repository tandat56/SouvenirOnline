package com.souvenironline.controller.admin;

import com.souvenironline.dto.BlogDTO;
import com.souvenironline.dto.CategoryProductDTO;
import com.souvenironline.service.admin.IBlogAdminService;
import com.souvenironline.service.admin.ICategoryBlogAdminService;
import com.souvenironline.service.admin.ICategoryProductAdminService;
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

@Controller(value = "categoryProductControllerOfAdmin")
public class CategoryProductController {

    @Autowired
    private IBlogAdminService blogService;

    @Autowired
    private ICategoryBlogAdminService categoryBlogService;

    @Autowired
    private ICategoryProductAdminService categoryProductAdminService;

    @Autowired
    private MessageUtil messageUtil;

    @RequestMapping(value = "/quan-tri/the-loai-san-pham/danh-sach", method = RequestMethod.GET)
    public ModelAndView showList(@RequestParam("page") int page,
                                 @RequestParam("limit") int limit, HttpServletRequest request) {
        CategoryProductDTO model = new CategoryProductDTO();
        model.setPage(page);
        model.setLimit(limit);
        ModelAndView mav = new ModelAndView("admin/category_product/list");
        Pageable pageable = new PageRequest(page - 1, limit);
        model.setListResult(categoryProductAdminService.findAlll(pageable));
        model.setTotalItem(categoryProductAdminService.getTotalItem());
        model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));

        if (request.getParameter("message") != null) {
            Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
            mav.addObject("message", message.get("message"));
            mav.addObject("alert", message.get("alert"));
        }
        mav.addObject("model", model);
        return mav;
    }

    @RequestMapping(value = "/quan-tri/the-loai-san-pham/chinh-sua", method = RequestMethod.GET)
    public ModelAndView editList(@RequestParam(value = "id", required = false) Long id, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("admin/category_product/edit");
        CategoryProductDTO model = new CategoryProductDTO();
        if (id != null) {
            model = categoryProductAdminService.findById(id);
        }
        if (request.getParameter("message") != null) {
            Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
            mav.addObject("message", message.get("message"));
            mav.addObject("alert", message.get("alert"));
        }
        mav.addObject("model", model);
        return mav;
    }
}
