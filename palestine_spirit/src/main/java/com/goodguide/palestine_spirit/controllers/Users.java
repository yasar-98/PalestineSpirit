package com.goodguide.palestine_spirit.controllers;

import java.security.Principal;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.goodguide.palestine_spirit.models.User;
import com.goodguide.palestine_spirit.services.UserService;
import com.goodguide.palestine_spirit.validator.UserValidator;


@Controller
public class Users {
    
    private UserService userService;
    
    // NEW
    private UserValidator userValidator;
    
    // NEW
    public Users(UserService userService, UserValidator userValidator) {
        this.userService = userService;
        this.userValidator = userValidator;
    }
    
    
    @RequestMapping("/sign")
    public String registerForm(@Valid @ModelAttribute("user") User user) {
        return "signPage.jsp";
    }
    
    @PostMapping("/registration")
    public String registration(@Valid @ModelAttribute("user") User user, BindingResult result, Model model, HttpSession session, @RequestParam("role") String role) {
        userValidator.validate(user, result);

    	if (result.hasErrors()) {
            return "signPage.jsp";
        }
    	if (role.equals("User")) {
            userService.saveWithUserRole(user);
        } else if (role.equals("Guide")) {
            userService.saveWithGuideRole(user);
        }
        userService.saveUserWithAdminRole(user);
        return "redirect:/";
        
    }
    
    @RequestMapping("/login")
    public String login(@RequestParam(value="error", required=false) String error, @RequestParam(value="logout", required=false) String logout, Model model) {
        if(error != null) {
            model.addAttribute("errorMessage", "Invalid Credentials, Please try again.");
        }
        if(logout != null) {
            model.addAttribute("logoutMessage", "Logout Successful!");
        }
        return "signPage.jsp";
    }

    
    @RequestMapping(value = {"/", "/home"})
    public String home(Principal principal, Model model) {
        // 1
        String username = principal.getName();
        model.addAttribute("currentUser", userService.findByUsername(username));
        return "homePage.jsp";
    }
    
    @RequestMapping("/admin")
    public String adminPage(Principal principal, Model model) {
        String username = principal.getName();
        model.addAttribute("currentUser", userService.findByUsername(username));
        return "adminPage.jsp";
    }

    @RequestMapping("/CreateTrip")
    public String GuidePage(Principal principal, Model model) {
        String username = principal.getName();
        model.addAttribute("currentUser", userService.findByUsername(username));
        return "CreateTrip.jsp";
    }

}
