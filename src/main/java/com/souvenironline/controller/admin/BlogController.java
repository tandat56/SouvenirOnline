package com.souvenironline.controller.admin;

import com.souvenironline.dto.BlogDTO;
import com.souvenironline.service.IBlogService;
import com.souvenironline.service.ICategoryBlogService;
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

@Controller(value = "blogControllerOfAdmin")
public class BlogController {

    @Autowired
    private IBlogService blogService;

    @Autowired
    private ICategoryBlogService categoryBlogService;

    @Autowired
    private MessageUtil messageUtil;

    @RequestMapping(value = "/quan-tri/bai-viet/danh-sach", method = RequestMethod.GET)
    public ModelAndView showList(@RequestParam("page") int page,
                                 @RequestParam("limit") int limit, HttpServletRequest request) {
        BlogDTO model = new BlogDTO();
        model.setPage(page);
        model.setLimit(limit);
        ModelAndView mav = new ModelAndView("admin/blog/list");
        Pageable pageable = new PageRequest(page - 1, limit);
        model.setListResult(blogService.findAll(pageable));
        model.setTotalItem(blogService.getTotalItem());
        model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
        /*if (request.getParameter("message") != null) {
            Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
            mav.addObject("message", message.get("message"));
            mav.addObject("alert", message.get("alert"));
        }*/
        mav.addObject("model", model);
        return mav;
    }

    @RequestMapping(value = "/quan-tri/bai-viet/chinh-sua", method = RequestMethod.GET)
    public ModelAndView editList(@RequestParam(value = "id", required = false) Long id) {
        ModelAndView mav = new ModelAndView("admin/blog/edit");
        BlogDTO model = new BlogDTO();
        if (id != null) {
            model = blogService.findById(id);
        }
        mav.addObject("categories", categoryBlogService.findAll());
        mav.addObject("model", model);
        return mav;
    }
}
