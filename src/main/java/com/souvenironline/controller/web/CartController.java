package com.souvenironline.controller.web;
import com.souvenironline.dto.CartDTO;
import com.souvenironline.service.web.ICartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;

@Controller
public class CartController {

    @Autowired
    private ICartService cartService;

    @RequestMapping(value = "/gio-hang", method = RequestMethod.GET)
    public ModelAndView cartPage() {
        ModelAndView mav = new ModelAndView("web/cart");
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
    @RequestMapping(value = "EditCart/{id}/{quantity}")
    public String EditCart(HttpServletRequest request ,HttpSession session, @PathVariable long id, @PathVariable int quantity) {
        HashMap<Long, CartDTO> cart = (HashMap<Long, CartDTO>)session.getAttribute("Shop");
        if(cart == null) {
            cart = new HashMap<Long, CartDTO>();
        }
		cart = cartService.editCart(id, quantity, cart);
		session.setAttribute("Shop", cart);
		session.setAttribute("totalQuantityCart", cartService.totalQuantity(cart));
		session.setAttribute("totalPriceCart", cartService.totalPrice(cart));
        return "redirect:"+request.getHeader("Referer");
    }


    @RequestMapping(value = "DeleteCart/{id}")
    public String DeleteCart(HttpServletRequest request ,HttpSession session, @PathVariable long id) {
        HashMap<Long, CartDTO> cart = (HashMap<Long, CartDTO>)session.getAttribute("Shop");
        if(cart == null) {
            cart = new HashMap<Long, CartDTO>();
        }
        cart = cartService.deleteCart(id, cart);
        session.setAttribute("Shop", cart);
        session.setAttribute("totalQuantityCart", cartService.totalQuantity(cart));
        session.setAttribute("totalPriceCart", cartService.totalPrice(cart));
        return "redirect:"+request.getHeader("Referer");
    }
}
