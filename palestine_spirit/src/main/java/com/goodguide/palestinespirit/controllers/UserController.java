package com.goodguide.palestinespirit.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.goodguide.palestinespirit.models.City;
import com.goodguide.palestinespirit.models.Site;
import com.goodguide.palestinespirit.models.Tour;
import com.goodguide.palestinespirit.models.User;
import com.goodguide.palestinespirit.services.CityService;
import com.goodguide.palestinespirit.services.SiteService;
import com.goodguide.palestinespirit.services.TourService;
import com.goodguide.palestinespirit.services.UserService;
import com.goodguide.palestinespirit.validator.UserValidator;


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

		model.addAttribute("city", new City());
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

	
//	@PostMapping("/createsite")
//	public String createnewsite(@Valid @ModelAttribute("site") Site newsite, Model model,
//			HttpSession session,
//			 @RequestParam("extraimage1") MultipartFile extraimage1
//			,@RequestParam("extraimage2") MultipartFile extraimage2
////			,@RequestParam("extraimage3") MultipartFile thirdpic
////			,@RequestParam("extraimage4") MultipartFile fourthpic
//			) throws IOException  
//	{
//		if (session.getAttribute("userId") == null) {
//			return "redirect:/sign";
//
//		}
//		User user = userService.findById((Long) session.getAttribute("userId"));
//
//
//		
//		String mainimagename = StringUtils.cleanPath(extraimage1.getOriginalFilename());
//		newsite.setExtraimage1(mainimagename);
//		String mainimagename2 = StringUtils.cleanPath(extraimage2.getOriginalFilename());
//		newsite.setExtraimage2(mainimagename2);
////		String mainimagename3 = StringUtils.cleanPath(thirdpic.getOriginalFilename());
////		newsite.setExtraimage3(mainimagename3);
////		String mainimagename4 = StringUtils.cleanPath(fourthpic.getOriginalFilename());
////		newsite.setExtraimage4(mainimagename4);
//		
//		Site site= userService.createsite(newsite);
//
//	    String uploadDir = "src/main/webapp/imgs/" + site.getId();
//			String saveimage = StringUtils.cleanPath(extraimage1.getOriginalFilename());
//	    FileUploadUtil.saveFile(uploadDir,saveimage,extraimage1);
//	    //////
//	    String saveimage2 = StringUtils.cleanPath(extraimage2.getOriginalFilename());
//	    FileUploadUtil.saveFile(uploadDir,saveimage2,extraimage2);
//	    ///////
////	    String saveimage3 = StringUtils.cleanPath(thirdpic.getOriginalFilename());
////	    FileUploadUtil.saveFile(uploadDir,saveimage3,thirdpic);
////	    ///
////	    String saveimage4 = StringUtils.cleanPath(fourthpic.getOriginalFilename());
////	    FileUploadUtil.saveFile(uploadDir,saveimage4,fourthpic);
//	    userService.createsite(newsite);
//		return "redirect:/createsite";
//	}
	@PostMapping("/createsite")
    public String createnewsite(@Valid @ModelAttribute("site") Site newsite, BindingResult result, Model model,
            HttpSession session,@RequestParam("extraimage1") MultipartFile mainfile,
            @RequestParam("extraimage2") MultipartFile multipartfile) throws IOException
    {
        if (session.getAttribute("userId") == null) {
            return "redirect:/sign";

        }
        User user = userService.findById((Long) session.getAttribute("userId"));
//        if (result.hasErrors()) {
//
//            model.addAttribute("city", new Cit());
//            model.addAttribute("site", new Site());
//            model.addAttribute("cities", userService.allcities());
//            model.addAttribute("sites", userService.allsites());
//            return "newstateadmin.jsp";
//        }


        String mainimagename = StringUtils.cleanPath(mainfile.getOriginalFilename());
        newsite.setExtraimage1(mainimagename);
            String newime = StringUtils.cleanPath(multipartfile.getOriginalFilename());
            newsite.setExtraimage2(newime);

        Site site= userService.createsite(newsite);

        String uploadDir = "src/main/resources/static/images/";
            String saveimage = StringUtils.cleanPath(multipartfile.getOriginalFilename());
            String saveimage1 = StringUtils.cleanPath(mainfile.getOriginalFilename());

        FileUploadUtil.saveFile(uploadDir,saveimage,multipartfile);
        FileUploadUtil.saveFile(uploadDir,saveimage1,mainfile);

        userService.createsite(newsite);
        return "redirect:/createsite";
    }

//	@PostMapping("/createsite")
//	public String createnewsite(@Valid @ModelAttribute("site") Site newsite, BindingResult result, Model model,
//			HttpSession session) {
//		if (session.getAttribute("userId") == null) {
//			return "redirect:/sign";
//
//		}
//		User user = userService.findById((Long) session.getAttribute("userId"));
//		if (result.hasErrors()) {
//
//			model.addAttribute("city", new Cit());
//			model.addAttribute("site", new Site());
//			model.addAttribute("cities", userService.allcities());
//			model.addAttribute("sites", userService.allsites());
//			return "newstateadmin.jsp";
//		}
//
//		userService.createsite(newsite);
//		return "redirect:/createsite";
//	}

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
	
	@GetMapping("tours/{id}/b/{choice}/{siteid}")
	public String ManageAttendees(@PathVariable("id") Long id,@PathVariable("siteid") Long siteid, @PathVariable("choice") String choice, HttpSession session, Model model) {
		Long userId = (Long) session.getAttribute("userId");

		Tour tour = userService.findTourById(id);
		boolean isJoining = (choice.equals("join"));
		if(userId == null)
			return "redirect:/";
		
		User user = this.userService.findById(userId);
		this.userService.manageAttendees(tour, user, isJoining);
		model.addAttribute("user", user);
		model.addAttribute("tour", tour);

		return "redirect:/tours";
	}
	
	@GetMapping("/ArchaeologicalSite/{id}")
	public String Show(@PathVariable("id") Long id, Model model, HttpSession session) {
		User user = userService.findById((Long) session.getAttribute("userId"));
		Site site = siteService.findSiteById(id);
		if(user == null)
			return "redirect:/sign";
		if(site == null)
			return "redirect:/sign";
//		List <Tour> siteTours =siteService.findSiteById(id).getTours();
//		model.addAttribute("tours", siteTours);
		model.addAttribute("site", site);
		model.addAttribute("user", user);
		return "oldtownhebron.jsp";
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
		City cityInfo = cityService.findCityById(id);
		String name= cityInfo.getName();
		return "redirect:/"+name;
	}
	
	
	//Rendering each city :
	
	//Nablus:
	@RequestMapping("/nablus")
	public String renderNablusPage(Model model,HttpSession session) {
		int x=3;
		if (session.getAttribute("userId") == null) {
			model.addAttribute("role", x);
			return "nablus.jsp";

		}
		User user = userService.findById((Long) session.getAttribute("userId"));
		String s = user.getRole().getName();
		if (s.equals("ROLE_ADMIN")) {
			System.out.println("i am admin");
			x = 1;
		}
		if (s.equals("ROLE_GUIDE")) {
			System.out.println("i am user");
			x = 2;
		}
		Long id =(long) 1;
		List <Site> citySites = cityService.findCityById(id).getSites();
		model.addAttribute("sites",citySites );
		return "nablus.jsp";
	}
	
	//Hebron:
	@RequestMapping("/hebron")
	public String renderHebronPage(Model model,HttpSession session) {
		int x=3;
		if (session.getAttribute("userId") == null) {
			model.addAttribute("role", x);
			return "hebron.jsp";

		}
		User user = userService.findById((Long) session.getAttribute("userId"));
		String s = user.getRole().getName();
		if (s.equals("ROLE_ADMIN")) {
			System.out.println("i am admin");
			x = 1;
		}
		if (s.equals("ROLE_GUIDE")) {
			System.out.println("i am user");
			x = 2;
		}
		Long id =(long) 2;
		List <Site> citySites = cityService.findCityById(id).getSites();
		model.addAttribute("sites",citySites );
		return "hebron.jsp";
	}
	
	//Jerusalem:
	@RequestMapping("/jerusalem")
	public String renderJerusalemPage(Model model,HttpSession session) {
		int x=3;
		if (session.getAttribute("userId") == null) {
			model.addAttribute("role", x);
			return "jerusalem.jsp";


		}
		User user = userService.findById((Long) session.getAttribute("userId"));
		String s = user.getRole().getName();
		if (s.equals("ROLE_ADMIN")) {
			System.out.println("i am admin");
			x = 1;
		}
		if (s.equals("ROLE_GUIDE")) {
			System.out.println("i am user");
			x = 2;
		}
		Long id =(long) 3;
		List <Site> citySites = cityService.findCityById(id).getSites();
		model.addAttribute("sites",citySites );
		return "jerusalem.jsp";
	}
	
	//Jericho:
	@RequestMapping("/jericho")
	public String renderJerichoPage(Model model,HttpSession session) {
		int x=3;
		if (session.getAttribute("userId") == null) {
			model.addAttribute("role", x);
			
			return "jericho.jsp";

		}
		User user = userService.findById((Long) session.getAttribute("userId"));
		String s = user.getRole().getName();
		
		
		
		if (s.equals("ROLE_ADMIN")) {
			System.out.println("i am admin");
			x = 1;
		}
		if (s.equals("ROLE_GUIDE")) {
			System.out.println("i am user");
			x = 2;
		}
		System.out.print(x);

		Long id =(long) 4;
		List <Site> citySites = cityService.findCityById(id).getSites();
		model.addAttribute("sites",citySites );
		return "jericho.jsp";
		
	}
	
	//Bethlehem:
	@RequestMapping("/bethlehem")
	public String renderBethlehemPage(Model model,HttpSession session) {
		int x = 3;
		if (session.getAttribute("userId") == null) {
			model.addAttribute("role", x);
			return "bethlehem.jsp";

		}
		User user = userService.findById((Long) session.getAttribute("userId"));
		String s = user.getRole().getName();
		if (s.equals("ROLE_ADMIN")) {
			System.out.println("i am admin");
			x = 1;
		}
		if (s.equals("ROLE_GUIDE")) {
			System.out.println("i am user");
			x = 2;
		}
		model.addAttribute("role", x);
		Long id =(long) 5;
		List <Site> citySites = cityService.findCityById(id).getSites();
		model.addAttribute("sites",citySites );
		return "bethlehem.jsp";
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
	@RequestMapping("")
	public String renderHomePage(Model model,HttpSession session) {
		model.addAttribute("cities", cityService.allCities());
		
		int x = 4;
		if (session.getAttribute("userId") == null) {
			model.addAttribute("role", x);
			return "home.jsp";

		}
		User user = userService.findById((Long) session.getAttribute("userId"));
		String s = user.getRole().getName();
		if (s.equals("ROLE_ADMIN")) {
			System.out.println("i am admin");
			x = 1;
		}
		if (s.equals("ROLE_GUIDE")) {
			System.out.println("i am user");
			x = 2;
		}
		if (s.equals("ROLE_USER")) {
			System.out.println("i am user");
			x = 3;
		}
		model.addAttribute("role", x);
		model.addAttribute("user", user);
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

	
	
//	@RequestMapping("/ArchaeologicalSite/{id}")
//	public String renderSitePage(@PathVariable("id")Long id, Model model) {
//		model.addAttribute("site", siteService.findSiteById(id));
//		List <Tour> siteTours =siteService.findSiteById(id).getTours();
//		model.addAttribute("tours", siteTours);
//		return "OldTownHebron.jsp";
//	}
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
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping("/createsite2")
	public String createnewcityrep(Model model, HttpSession session) {
		User user = userService.findById((Long) session.getAttribute("userId"));

		model.addAttribute("city", new City());
		model.addAttribute("site", new Site());
		model.addAttribute("cities", userService.allcities());
		model.addAttribute("sites", userService.allsites());

		return "replacecreatsite.jsp";

	}
	@PostMapping("/createsite2")
	public String createnewcityrep2(@ModelAttribute("site") Site site) {
		siteService.createSite(site);
		return "redirect:/createsite2";
		
	}

	
}
