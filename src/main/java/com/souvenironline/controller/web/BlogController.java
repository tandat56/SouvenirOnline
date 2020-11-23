package com.souvenironline.controller.web;


import com.souvenironline.dto.BlogDTO;
import com.souvenironline.service.admin.IBlogAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "blogControllerOfWeb")
public class BlogController {

    @Autowired
    private IBlogAdminService blogService;

    @RequestMapping(value = "/tin-tuc", method = RequestMethod.GET)
    public ModelAndView blogGridPage() {
        BlogDTO model = new BlogDTO();
        ModelAndView mav = new ModelAndView("web/blog-grid3");
       // model.setListResult(blogService.findAll(Pageable));
        return mav;
    }
}
