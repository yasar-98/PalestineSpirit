package com.goodguide.palestine_spirit.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.goodguide.palestine_spirit.models.Role;
import com.goodguide.palestine_spirit.models.User;
import com.goodguide.palestine_spirit.services.UserService;
import com.goodguide.palestine_spirit.validator.UserValidator;


@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private UserValidator validator;
	
	@GetMapping("/")
	public String Index() {
		return "homePage.jsp";
	}
	
	@GetMapping("/sign")
	public String sign(@ModelAttribute("registration") User user, Model model) {
		return "signPage.jsp";
	}

	@PostMapping("/register")
	public String Register(@Valid @ModelAttribute("registration") User user, BindingResult result, HttpSession session, Model model) {
		System.out.println("111");
		System.out.println(user.getRole());
		System.out.println(user.getRole());
		validator.validate(user, result);
		if(result.hasErrors()) {
			System.out.println("222");
			System.out.println(result.getErrorCount());
			System.out.println(result.getAllErrors());
			return "signPage.jsp";
	}
			
    	if (user.getRole().getName().equals("ROLE_USER")) {
    		User newUser = userService.registerUser(user);
    		System.out.println("333");
            return "redirect:/";
        } else if (user.getRole().getName().equals("ROLE_GUIDE")) {
        	System.out.println("444");
        	User newUser = userService.registerGuide(user);
            return "redirect:/";
        }
        return "redirect:/";

	}
	@PostMapping("/login")
	public String Login(@RequestParam("email") String email, @RequestParam("password") String password, HttpSession session, RedirectAttributes redirs) {
		if(this.userService.authenticateUser(email, password)) {
			User user = this.userService.getUserByEmail(email);
			session.setAttribute("userId", user.getId());
			return "redirect:/";
		}
		redirs.addFlashAttribute("error", "Invalid Email/Password");
		return "redirect:/sign";
	}
}