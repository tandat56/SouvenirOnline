package com.souvenironline.controller.admin;

import com.souvenironline.dto.BlogDTO;
import com.souvenironline.service.IBlogService;
import com.souvenironline.service.ICategoryBlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "blogControllerOfAdmin")
public class BlogController {

    @Autowired
    private IBlogService blogService;

    @Autowired
    private ICategoryBlogService categoryBlogService;

    @RequestMapping(value = "/quan-tri/bai-viet/danh-sach", method = RequestMethod.GET)
    public ModelAndView showList() {

        BlogDTO model = new BlogDTO();
        ModelAndView mav = new ModelAndView("admin/blog/list");
        model.setListResult(blogService.findAll());
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
