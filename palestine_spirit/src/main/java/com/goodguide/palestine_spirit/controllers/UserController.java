package com.goodguide.palestine_spirit.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.goodguide.palestine_spirit.models.Cit;
import com.goodguide.palestine_spirit.models.Site;
import com.goodguide.palestine_spirit.models.Tour;
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
		return "home.jsp";
	}

	@GetMapping("/sign")
	public String sign(@ModelAttribute("registration") User user, Model model) {
		return "signPage.jsp";
	}

	@PostMapping("/register")
	public String Register(@Valid @ModelAttribute("registration") User user, BindingResult result, HttpSession session,
			Model model) {
		System.out.println("111");
		System.out.println(user.getRole());
		System.out.println(user.getRole());
		validator.validate(user, result);
		if (result.hasErrors()) {
			System.out.println("222");
			System.out.println(result.getErrorCount());
			System.out.println(result.getAllErrors());
			return "signPage.jsp";
		}

		if (user.getRole().getName().equals("ROLE_USER")) {
			User newUser = userService.registerUser(user);
			session.setAttribute("userId", user.getId());

			System.out.println("333");
			return "redirect:/sendmail/"+newUser.getEmail();
		} else if (user.getRole().getName().equals("ROLE_GUIDE")) {
			System.out.println("444");
			User newUser = userService.registerGuide(user);
			session.setAttribute("userId", user.getId());

			return "redirect:/sendmail/"+newUser.getEmail();
		}
		return "redirect:/";

	}

	@PostMapping("/login")
	public String Login(@RequestParam("email") String email, @RequestParam("password") String password,
			HttpSession session, RedirectAttributes redirs) {
		if (this.userService.authenticateUser(email, password)) {
			User user = this.userService.getUserByEmail(email);
			session.setAttribute("userId", user.getId());
			return "redirect:/";
		}
		redirs.addFlashAttribute("error", "Invalid Email/Password");
		return "redirect:/sign";
	}

	@RequestMapping("/userlist")
	public String listofuser(Model model) {

		model.addAttribute("users", userService.allusers());
		return "useradmin.jsp";
	}

	@RequestMapping("/createsite")
	public String createnewcity(Model model, HttpSession session) {
		if (session.getAttribute("userId") == null) {
			return "redirect:/sign";

		}
		User user = userService.findById((Long) session.getAttribute("userId"));

		model.addAttribute("city", new Cit());
		model.addAttribute("site", new Site());
		model.addAttribute("cities", userService.allcities());
		model.addAttribute("sites", userService.allsites());

		return "newstateadmin.jsp";

	}

	@RequestMapping("/trips")
	public String trips(Model model, HttpSession session, @ModelAttribute("trip") Tour trip) {
		System.out.print("asd");
		if (session.getAttribute("userId") == null) {
			return "redirect:/sign";

		}
		User user = userService.findById((Long) session.getAttribute("userId"));

		model.addAttribute("sites", userService.allsites());

		return "guidetrips.jsp";

	}

	@PostMapping("/createtrip")
	public String createtrip(@Valid @ModelAttribute("trip") Tour trip, BindingResult result, HttpSession session,
			Model model) {
		if (session.getAttribute("userId") == null) {
			return "redirect:/sign";

		}
		User user = userService.findById((Long) session.getAttribute("userId"));

		if (result.hasErrors()) {

			model.addAttribute("sites", userService.allsites());
			return "guidetrips.jsp";
		}

		System.out.print("newtrip");
		trip.setToursown(user);

		userService.createtrip(trip);

		return "redirect:/trips";
	}

	@PostMapping("/createcity")
	public String createcity(@Valid @ModelAttribute("city") Cit newcity, BindingResult result, Model model,
			HttpSession session) {
		if (session.getAttribute("userId") == null) {
			return "redirect:/sign";

		}
		User user = userService.findById((Long) session.getAttribute("userId"));
		if (result.hasErrors()) {

			model.addAttribute("city", new Cit());
			model.addAttribute("site", new Site());
			model.addAttribute("cities", userService.allcities());
			model.addAttribute("sites", userService.allsites());
			return "newstateadmin.jsp";
		}

		userService.createcity(newcity);
		return "redirect:/createsite";
	}

	@PostMapping("/createsite")
	public String createnewsite(@Valid @ModelAttribute("site") Site newsite, BindingResult result, Model model,
			HttpSession session) {
		if (session.getAttribute("userId") == null) {
			return "redirect:/sign";

		}
		User user = userService.findById((Long) session.getAttribute("userId"));
		if (result.hasErrors()) {

			model.addAttribute("city", new Cit());
			model.addAttribute("site", new Site());
			model.addAttribute("cities", userService.allcities());
			model.addAttribute("sites", userService.allsites());
			return "newstateadmin.jsp";
		}

		userService.createsite(newsite);
		return "redirect:/createsite";
	}

	@RequestMapping("/tours")
	public String tourlist(Model model, HttpSession session) {
//		model.addAttribute("jointours", model);
		if (session.getAttribute("userId") == null) {
			return "redirect:/sign";

		}
		User user = userService.findById((Long) session.getAttribute("userId"));
		model.addAttribute("alltours", userService.alltours());
		model.addAttribute("user", user);

		return "tours.jsp";
	}
	@GetMapping("tours/{id}/a/{choice}")
	public String ManageAttendeees(@PathVariable("id") Long id, @PathVariable("choice") String choice, HttpSession session, Model model) {
		Long userId = (Long) session.getAttribute("userId");

		Tour tour = userService.findTourById(id);
		boolean isJoining = (choice.equals("join"));
		if(userId == null)
			return "redirect:/";
		
		User user = this.userService.findById(userId);
		this.userService.manageAttendees(tour, user, isJoining);
		model.addAttribute("user", user);

		return "redirect:/tours";
	}
    @RequestMapping("/sendmail/{mailTo}")
    public String sendEmail(@PathVariable("mailTo") String reciever) {
        String message = " Thank you for using our website. ";
        System.out.println("sending new mail to... "+reciever+message);
        userService.sendingMail(reciever, message, "Welcome");
        return "redirect:/";
    }

}