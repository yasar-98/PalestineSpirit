package com.goodguide.palestine_spirit.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.goodguide.palestine_spirit.models.Tour;
import com.goodguide.palestine_spirit.repositories.TourRepository;

@Service
public class TourService {
	private final TourRepository tourRepo;
	public TourService(TourRepository tourRepo) {
		this.tourRepo = tourRepo;
	}
	
	public List<Tour> allTours() {
		return tourRepo.findAll();
	}

}
