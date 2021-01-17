package com.souvenironline.controller.admin;

import com.souvenironline.dto.ProductDTO;
import com.souvenironline.service.admin.IBlogAdminService;
import com.souvenironline.service.admin.IProductAdminService;
import com.souvenironline.service.admin.IUserAdminService;
import com.souvenironline.service.web.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller(value = "homeControllerOfAdmin")
public class HomeController {

	@Autowired
	private IProductAdminService productAdminService;

	@Autowired
	private IOrderService orderService;

	@Autowired
	private IUserAdminService userAdminService;

	@Autowired
	private IBlogAdminService blogAdminService;


	@RequestMapping(value = "/quan-tri/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage(Model model, @RequestParam(value = "number", required = false) Long number) {
		ModelAndView mav = new ModelAndView("admin/home");
		model.addAttribute("product", productAdminService.getTotalItem());
		model.addAttribute("order", orderService.countOrder());
		model.addAttribute("accout", userAdminService.getTotalItem());
		model.addAttribute("post", blogAdminService.getTotalItem());
		List<ProductDTO> list = productAdminService.getProductLimitDesc();
		model.addAttribute("entity", list);

		return mav;
	}
}
