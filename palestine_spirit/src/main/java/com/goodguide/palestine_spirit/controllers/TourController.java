package com.goodguide.palestine_spirit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.goodguide.palestine_spirit.services.TourService;

@Controller
public class TourController {
	
	private final TourService tourService;
	public TourController(TourService tourService) {
		this.tourService = tourService;
	}

	@RequestMapping("/tours")
	public String tours(Model model) {
		model.addAttribute("tours", tourService.allTours());
		return "tours.jsp";
	}

}
