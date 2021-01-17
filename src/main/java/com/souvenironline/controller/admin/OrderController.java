package com.souvenironline.controller.admin;

import com.souvenironline.dto.OrderCreateModifyDTO;
import com.souvenironline.dto.OrderDetailCreateModifyDTO;
import com.souvenironline.service.web.IOrderDetailService;
import com.souvenironline.service.web.IOrderService;
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
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller(value = "orderControllerOfAdmin")
public class OrderController {

    @Autowired
    private IOrderService orderService;

    @Autowired
    private IOrderDetailService orderDetailService;

    @Autowired
    private MessageUtil messageUtil;

    @RequestMapping(value = "/quan-tri/hoa-don/danh-sach", method = RequestMethod.GET)
    public ModelAndView showList(@RequestParam("page") int page,
                                 @RequestParam("limit") int limit, HttpServletRequest request) {
        OrderCreateModifyDTO model = new OrderCreateModifyDTO();
        model.setPage(page);
        model.setLimit(limit);
        ModelAndView mav = new ModelAndView("admin/order/list");
        Pageable pageable = new PageRequest(page - 1, limit);
        model.setListResult(orderService.findAlll(pageable));
        model.setTotalItem(orderService.countOrder());
        model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));

        if (request.getParameter("message") != null) {
            Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
            mav.addObject("message", message.get("message"));
            mav.addObject("alert", message.get("alert"));
        }
        mav.addObject("model", model);
        return mav;
    }
    @RequestMapping(value = "/quan-tri/hoa-don-chi-tiet/danh-sach", method = RequestMethod.GET)
    public ModelAndView showListDetail(@RequestParam("id") Long id, HttpServletRequest request) {
        List<OrderDetailCreateModifyDTO> model = new ArrayList<>();
        if (id != null) {
            model = orderDetailService.getBillsDetail(id);
        }
        ModelAndView mav = new ModelAndView("admin/order/listDetail");

        if (request.getParameter("message") != null) {
            Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
            mav.addObject("message", message.get("message"));
            mav.addObject("alert", message.get("alert"));
        }
        mav.addObject("model", model);
        return mav;
    }

}
