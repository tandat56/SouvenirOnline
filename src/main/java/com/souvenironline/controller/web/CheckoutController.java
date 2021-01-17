package com.souvenironline.controller.web;

import com.souvenironline.dto.*;
import com.souvenironline.service.web.ICategoryProductWebService;
import com.souvenironline.service.web.IOrderDetailService;
import com.souvenironline.service.web.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;

@RestController
public class CheckoutController {
    @Autowired
    private ICategoryProductWebService categoryProductWebService;
    @Autowired
    private IOrderService orderService;
    @Autowired
    private IOrderDetailService orderDetailService;

    @RequestMapping(value = "/thanh-toan", method = RequestMethod.GET)
    public ModelAndView checkoutPage(HttpServletRequest request, HttpSession session, Model model) {
        ModelAndView mav = new ModelAndView("web/checkout");
        List<CategoryProductDTO> list = categoryProductWebService.findAll();
        model.addAttribute("productCategorySession", list);
        OrderCreateModifyDTO dto = new OrderCreateModifyDTO();
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal != null) {
            dto.setUserID(((MyUser) principal).getId());
            dto.setAddress(((MyUser) principal).getAddress());
            dto.setName(((MyUser) principal).getFullName());
            dto.setEmail(((MyUser) principal).getEmail());
        }
        model.addAttribute("bill", dto);
        return mav;
    }
    @RequestMapping(value = "/thanh-toan", method = RequestMethod.POST)
    public ModelAndView checkoutBillPage(HttpServletRequest request, HttpSession session, @ModelAttribute("bill") OrderCreateModifyDTO dto) {
        dto.setQuanty((int)session.getAttribute("totalQuantityCart"));
        dto.setTotal((double)session.getAttribute("totalPriceCart"));
        if(orderService.addOrders(dto) != null) {
            HashMap<Long, CartDTO> cart = (HashMap<Long, CartDTO>)session.getAttribute("Shop");
            orderDetailService.addOrderDetail(cart);
        }
        session.removeAttribute("Shop");
        session.removeAttribute("totalQuantityCart");
        session.removeAttribute("totalPriceCart");
        return new ModelAndView("web/shopping_success");
        }

}
