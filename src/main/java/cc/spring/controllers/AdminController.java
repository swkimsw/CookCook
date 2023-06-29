package cc.spring.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import cc.spring.services.AdminMemberService;

@RestController
@RequestMapping("/data/")
public class AdminController {
	
	@Autowired
	private AdminMemberService aService;
	
	@RequestMapping("/**")
	public String toAdmin() {
		return "forward:/admin/index.html";
	}
	
	@RequestMapping("selectSuccessMeal")
	public int selectSuccessMeal() {
		int successMeal = aService.selectSuccessMeal();
		return successMeal;
	}
	
	@RequestMapping("selectSuccessBasket")
	public int selectSuccessBasket() {
		return aService.selectSuccessBasket();
	}

	@RequestMapping("selectFailBasket")
	public int selectFailBasket() {
		return aService.selectFailBasket();
	}
}
