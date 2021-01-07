package com.souvenironline.controller.web;

import com.souvenironline.dto.CartDTO;
import com.souvenironline.dto.CategoryProductDTO;
import com.souvenironline.dto.ProductDTO;
import com.souvenironline.service.web.ICartService;
import com.souvenironline.service.web.ICategoryProductWebService;
import com.souvenironline.service.web.IProductWebService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Controller(value = "productControllerOfWeb")
public class ShopController {

    @Autowired
    private ICategoryProductWebService categoryProductWebService;

    @Autowired
    private ICartService cartService;

    @Autowired
    private IProductWebService productWebService;

    @RequestMapping(value = "/san-pham", method = RequestMethod.GET)
    public ModelAndView blogGridPage(@RequestParam(value = "code", required = false) String code) {
        ModelAndView mav = new ModelAndView("web/shop-grid4");
        CategoryProductDTO categories = new CategoryProductDTO();
        ProductDTO product = new ProductDTO();
        categories.setListResult(categoryProductWebService.findAllByLevel(0));
        product.setListResult(productWebService.findAllProductByCategoryCode(code));
        mav.addObject("categories", categories);
        mav.addObject("products", productWebService.findAll());
        return mav;
    }

    @RequestMapping(value = "AddCart/{id}")
    public String AddCart(HttpServletRequest request, HttpSession session, @PathVariable long id) {
        HashMap<Long, CartDTO> cart = (HashMap<Long, CartDTO>)session.getAttribute("Shop");
        cart = cartService.addCard(id, cart);
        if(cart == null){
            cart = new HashMap<Long, CartDTO>();
        }
        cart = cartService.addCard(id, cart);
        session.setAttribute("Shop", cart);
        session.setAttribute("totalQuantityCart", cartService.totalQuantity(cart));
        session.setAttribute("totalPriceCart", cartService.totalPrice(cart));
        return "redirect:"+request.getHeader("Referer");
    }

    @RequestMapping(value = "/san-pham/danh-sach-theo-the-loai/{code}", method = RequestMethod.GET)
    public ModelAndView shopPage(@PathVariable("code") String code) {
        ModelAndView mav = new ModelAndView("web/shop-grid4.1");
        CategoryProductDTO categories = new CategoryProductDTO();
        ProductDTO product = new ProductDTO();
        categories.setListResult(categoryProductWebService.findAll());
        product.setListResult(productWebService.findAllProductByCategoryCode(code));

        mav.addObject("categories", categories);
        mav.addObject("model", product);
        return mav;
    }
}
