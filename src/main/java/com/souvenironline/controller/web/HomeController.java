package com.souvenironline.controller.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.souvenironline.dto.BlogDTO;
import com.souvenironline.dto.CategoryProductDTO;
import com.souvenironline.dto.ProductDTO;
import com.souvenironline.dto.SildeDTO;
import com.souvenironline.service.web.ICategoryProductWebService;
import com.souvenironline.service.web.IProductWebService;
import com.souvenironline.service.web.impl.SildeWebService;
import com.souvenironline.util.MessageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller(value = "homeControllerOfWeb")
public class HomeController extends BaseController {

    @Autowired
    private IProductWebService productWebService;

    @Autowired
    private MessageUtil messageUtil;

    @Autowired
    private SildeWebService sildeWebService;

    @Autowired
    private ICategoryProductWebService categoryProductWebService;


    @RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
    public ModelAndView homePage() {

        ModelAndView mav = new ModelAndView("web/home");
        ProductDTO model = new ProductDTO();
        CategoryProductDTO cates = new CategoryProductDTO();

        cates.setListResult(categoryProductWebService.findAll());
        model.setListResult(productWebService.findAll());
        List<SildeDTO> silde = sildeWebService.findAll();
        mav.addObject("cates", cates);
        mav.addObject("model", model);
        mav.addObject("silde", silde);
        return mav;
    }

    @RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
    public ModelAndView loginPage() {
        ModelAndView mav = new ModelAndView("web/login");
        return mav;
    }

    @RequestMapping(value = "/thoat", method = RequestMethod.GET)
    public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null) {
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return new ModelAndView("redirect:/trang-chu");
    }

    @RequestMapping(value = "/accessDenied", method = RequestMethod.GET)
    public ModelAndView accessDenied() {
        return new ModelAndView("redirect:/dang-nhap?accessDenied");
    }


    @RequestMapping(value = "/page-register", method = RequestMethod.GET)
    public ModelAndView registerPage() {
        ModelAndView mav = new ModelAndView("web/register");
        return mav;
    }


    @RequestMapping(value = "/page-singlePA", method = RequestMethod.GET)
    public ModelAndView singlePAPage() {
        ModelAndView mav = new ModelAndView("web/single-product-affiliate");
        return mav;
    }


}
