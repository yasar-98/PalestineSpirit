package com.goodguide.palestine_spirit.controllers;

import java.util.List;

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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.goodguide.palestine_spirit.models.Cit;
import com.goodguide.palestine_spirit.models.Site;
import com.goodguide.palestine_spirit.models.Tour;
import com.goodguide.palestine_spirit.models.User;
import com.goodguide.palestine_spirit.services.CityService;
import com.goodguide.palestine_spirit.services.SiteService;
import com.goodguide.palestine_spirit.services.TourService;
import com.goodguide.palestine_spirit.services.UserService;
import com.goodguide.palestine_spirit.validator.UserValidator;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private UserValidator validator;
	private final CityService cityService;
	private final SiteService siteService;
	private final TourService tourService;

public UserController(UserService userService, UserValidator validator, CityService cityService,
			SiteService siteService, TourService tourService) {
		super();
		this.userService = userService;
		this.validator = validator;
		this.cityService = cityService;
		this.siteService = siteService;
		this.tourService = tourService;
	}

//	@GetMapping("/")
//	public String Index() {
//		return "home.jsp";
//	}
//	@GetMapping("/Nablus")
//	public String Nablus() {
//		return "Hebron.jsp";
//	}
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

//////////////////////////////////////////////////////////////////////////////////////////////////



	//render cities pages
	@RequestMapping("/{id}")
	public String renderCityPage(@PathVariable("id")Long id) {
		Cit cityInfo = cityService.findCityById(id);
		String name= cityInfo.getName();
		return "redirect:/"+name;
	}
	
	
	//Rendering each city :
	
	//Nablus:
	@RequestMapping("/Nablus")
	public String renderNablusPage(Model model) {
		Long id =(long) 1;
		List <Site> citySites = cityService.findCityById(id).getSites();
		model.addAttribute("sites",citySites );
		return "Nablus.jsp";
	}
	
	//Hebron:
	@RequestMapping("/Hebron")
	public String renderHebronPage(Model model) {
		Long id =(long) 2;
		List <Site> citySites = cityService.findCityById(id).getSites();
		model.addAttribute("sites",citySites );
		return "Hebron.jsp";
	}
	
	//Jerusalem:
	@RequestMapping("/Jerusalem")
	public String renderJerusalemPage(Model model) {
		Long id =(long) 3;
		List <Site> citySites = cityService.findCityById(id).getSites();
		model.addAttribute("sites",citySites );
		return "Jerusalem.jsp";
	}
	
	//Jericho:
	@RequestMapping("/Jericho")
	public String renderJerichoPage(Model model) {
		Long id =(long) 4;
		List <Site> citySites = cityService.findCityById(id).getSites();
		model.addAttribute("sites",citySites );
		return "Jericho.jsp";
	}
	
	//Bethlehem:
	@RequestMapping("/Bethlehem")
	public String renderBethlehemPage(Model model) {
		Long id =(long) 5;
		List <Site> citySites = cityService.findCityById(id).getSites();
		model.addAttribute("sites",citySites );
		return "Bethlehem.jsp";
	}

	
	
	
	
	
//	//render new city page :
//	@RequestMapping("/city/new")
//	public String city(@ModelAttribute("city") Cit city, Model model) {
////		List<Site> listSites = siteService.findAllSites();
////		model.addAttribute("sites", listSites);
//		return "city.jsp";
//	}
//	
//
//	//add a new city
//	@RequestMapping(value="/city/new", method=RequestMethod.POST)
//	public String createCity(@Valid @ModelAttribute("city")Cit city, BindingResult result) {
//		if (result.hasErrors()) {
//			return "city.jsp";
//		}
//		else {
//			cityService.createCity(city);
//			return "redirect:/city/new";
//		}
//		
//	}
	
	
	
	
//	//Render new site page:
//	@RequestMapping("/sites/new")
//	public String newSite(@ModelAttribute("site") Site site) {
//		return "site.jsp";
//	}
//
//	
//	//create a new site:
//	@RequestMapping(value = "/sites/new", method = RequestMethod.POST)
//	public String createSite(@Valid @ModelAttribute("site") Site site, BindingResult result) {
//		if (result.hasErrors()) {
//			return "site.jsp";
//		} else {
//			siteService.createSite(site);
//			return "redirect:/sites/new";
//		}
//	}
	

	//Render Home Page: 
	@RequestMapping("/")
	public String renderHomePage(Model model) {
		model.addAttribute("cities", cityService.allCities());
		return "home.jsp";
	}
	
	
	
	//Render the site pages :
	
	
//	@RequestMapping("/s/{id}")
//	public String renderSitePage(@PathVariable("id")Long id) {
//		Site siteInfo = siteService.findSiteById(id);
//		String nameS= siteInfo.getName();
//		return "redirect:/"+nameS;
//	}
	
	
	
//	@RequestMapping("/OldTownHebron")
//	public String renderOldTownHebronPage(Model model) {
//		model.addAttribute("sites", siteService.findAllSites().get(0));
//		return "OldTownHebron.jsp";
//	}

	
	
	@RequestMapping("/ArchaeologicalSite/{id}")
	public String renderSitePage(@PathVariable("id")Long id, Model model) {
		model.addAttribute("site", siteService.findSiteById(id));
		List <Tour> siteTours =siteService.findSiteById(id).getTours();
		model.addAttribute("tours", siteTours);
		return "OldTownHebron.jsp";
	}
	@GetMapping("/ArchaeologicalSite/{id}")
	public String Show(@PathVariable("id") Long id, Model model, HttpSession session) {
		User user = userService.findById((Long) session.getAttribute("userId"));
		Site site = siteService.findSiteById(id);
		if(user == null)
			return "redirect:/sign";
		if(site == null)
			return "redirect:/sign";
		List <Tour> siteTours =siteService.findSiteById(id).getTours();
		model.addAttribute("tours", siteTours);

		model.addAttribute("site", site);
		model.addAttribute("userId", user);
		return "OldTownHebron.jsp";
	}
	@PostMapping("/{id}/comment")
	public String Comment(@PathVariable("id") Long id, @RequestParam("comment") String comment, RedirectAttributes redirs, HttpSession session) {
		User user = userService.findById((Long) session.getAttribute("userId"));
		if(user == null)
			return "redirect:/sign";
		if(comment.equals("")) {
			redirs.addFlashAttribute("error", "Review must not be blank");
			return "redirect:/ArchaeologicalSite/" + id ;
		}
		Site site = siteService.findSiteById(id);
		userService.comment(comment,user, site);
		return "redirect:/ArchaeologicalSite/" + id;
	}
}
