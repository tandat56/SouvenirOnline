package com.souvenironline.controller.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "homeControllerOfWeb")
public class HomeController {

	@RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
	public ModelAndView loginPage() {
		ModelAndView mav = new ModelAndView("web/login");
		return mav;
	}

	@RequestMapping(value = "/page-about", method = RequestMethod.GET)
	public ModelAndView aboutPage() {
		ModelAndView mav = new ModelAndView("web/about-us");
		return mav;
	}
	
	@RequestMapping(value = "/page-bloggrid3", method = RequestMethod.GET)
	public ModelAndView blogGridPage() {
		ModelAndView mav = new ModelAndView("web/blog-grid3");
		return mav;
	}
	
	@RequestMapping(value = "/page-cart", method = RequestMethod.GET)
	public ModelAndView cartPage() {
		ModelAndView mav = new ModelAndView("web/cart");
		return mav;
	}
	
	@RequestMapping(value = "/page-checkout", method = RequestMethod.GET)
	public ModelAndView checkoutPage() {
		ModelAndView mav = new ModelAndView("web/checkout");
		return mav;
	}
	
	@RequestMapping(value = "/page-compare", method = RequestMethod.GET)
	public ModelAndView comparePage() {
		ModelAndView mav = new ModelAndView("web/compare");
		return mav;
	}
	
	@RequestMapping(value = "/page-contact", method = RequestMethod.GET)
	public ModelAndView contactPage() {
		ModelAndView mav = new ModelAndView("web/contact");
		return mav;
	}
	
	@RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("web/home");
		return mav;
	}
	
	
	@RequestMapping(value = "/page-myaccount", method = RequestMethod.GET)
	public ModelAndView accountPage() {
		ModelAndView mav = new ModelAndView("web/myaccount");
		return mav;
	}
	
	@RequestMapping(value = "/page-register", method = RequestMethod.GET)
	public ModelAndView registerPage() {
		ModelAndView mav = new ModelAndView("web/register");
		return mav;
	}
	
	@RequestMapping(value = "/page-shopgrid4", method = RequestMethod.GET)
	public ModelAndView shopGrid4PPage() {
		ModelAndView mav = new ModelAndView("web/shop-grid4");
		return mav;
	}
	
	@RequestMapping(value = "/page-singleblog", method = RequestMethod.GET)
	public ModelAndView singleBlogPage() {
		ModelAndView mav = new ModelAndView("web/single-blog");
		return mav;
	}
	
	@RequestMapping(value = "/page-singleP", method = RequestMethod.GET)
	public ModelAndView singlePPage() {
		ModelAndView mav = new ModelAndView("web/single-product");
		return mav;
	}
	
	
	
	@RequestMapping(value = "/page-singlePA", method = RequestMethod.GET)
	public ModelAndView singlePAPage() {
		ModelAndView mav = new ModelAndView("web/single-product-affiliate");
		return mav;
	}
	
	@RequestMapping(value = "/page-wishtlist", method = RequestMethod.GET)
	public ModelAndView wishlistPage() {
		ModelAndView mav = new ModelAndView("web/wishtlist");
		return mav;
	}
	
	
	
	
	
	
	
	
	
//	@RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
//	public ModelAndView loginPage() {
//		ModelAndView mav = new ModelAndView("login");
//		return mav;
//	}
	
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
}
