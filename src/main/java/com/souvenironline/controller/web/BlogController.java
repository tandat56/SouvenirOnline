package com.souvenironline.controller.web;


import com.souvenironline.dto.BlogDTO;
import com.souvenironline.dto.CategoryBlogDTO;
import com.souvenironline.dto.CategoryProductDTO;
import com.souvenironline.dto.ProductDTO;
import com.souvenironline.service.admin.IBlogAdminService;
import com.souvenironline.service.web.IBlogWebService;
import com.souvenironline.service.web.ICategoryBlogWebService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "blogControllerOfWeb")
public class BlogController {
    @Autowired
    private ICategoryBlogWebService categoryBlogWebService;
    @Autowired
    private IBlogWebService blogWebService;

    @RequestMapping(value = "/tin-tuc", method = RequestMethod.GET)
    public ModelAndView blogGridPage(@RequestParam(value = "code", required = false) String code) {
        ModelAndView mav = new ModelAndView("web/blog-grid3");
        CategoryBlogDTO categories = new CategoryBlogDTO();
        BlogDTO blog = new BlogDTO();
       // categories.setListResult(categoryBlogWebService.findAllByLevel(0));
       // blog.setListResult(blogWebService.findAllBlogByCategoryCode(code));
        mav.addObject("categories", categories);
        mav.addObject("blogs", blogWebService.findAll());
        return mav;

    }
}
