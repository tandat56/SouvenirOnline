package com.souvenironline.controller.admin;

import com.souvenironline.dto.ProductDTO;
import com.souvenironline.dto.SildeDTO;
import com.souvenironline.service.admin.ICategoryProductAdminService;
import com.souvenironline.service.admin.IProductAdminService;
import com.souvenironline.service.admin.ISildeAdminService;
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

@Controller(value = "sildeControllerOfAdmin")
public class SildeController {

    @Autowired
    private ISildeAdminService sildeAdminService;

    @Autowired
    private MessageUtil messageUtil;

    @RequestMapping(value = "/quan-tri/silde/danh-sach", method = RequestMethod.GET)
    public ModelAndView showSilde(@RequestParam("page") int page,
                                 @RequestParam("limit") int limit, HttpServletRequest request) {
        SildeDTO model = new SildeDTO();
        model.setPage(page);
        model.setLimit(limit);
        ModelAndView mav = new ModelAndView("admin/silde/list");
        Pageable pageable = new PageRequest(page - 1, limit);
        model.setListResult(sildeAdminService.findAll(pageable));
        model.setTotalItem(sildeAdminService.getTotalItem());
        model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));

        if (request.getParameter("message") != null) {
            Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
            mav.addObject("message", message.get("message"));
            mav.addObject("alert", message.get("alert"));
        }

        mav.addObject("model", model);
        return mav;
    }

    @RequestMapping(value = "/quan-tri/silde/chinh-sua", method = RequestMethod.GET)
    public ModelAndView editSilde(@RequestParam(value = "id", required = false) Long id, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("admin/silde/edit");
        SildeDTO model = new SildeDTO();
        if (id != null) {
            model = sildeAdminService.findById(id);
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
