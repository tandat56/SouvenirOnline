package com.souvenironline.controller.web;

import com.souvenironline.dto.BlogDTO;
import com.souvenironline.service.web.IBlogWebService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class SingleBlogController {
    @Autowired
    private IBlogWebService blogWebService;

    @RequestMapping(value = "/chi-tiet-bai-viet/{id}", method = RequestMethod.GET)
    public ModelAndView singleBlogPage(@PathVariable Long id) {
        ModelAndView mav = new ModelAndView("web/single-blog");
        BlogDTO blogDTO = new BlogDTO();
        mav.addObject("model", blogWebService.findById(id));
        return mav;
    }
}
