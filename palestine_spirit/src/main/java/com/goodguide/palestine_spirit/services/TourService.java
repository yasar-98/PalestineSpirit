package com.goodguide.palestine_spirit.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.goodguide.palestine_spirit.models.Tour;
import com.goodguide.palestine_spirit.repositories.TourRepository;


@Service
public class TourService {

	private final TourRepository tourRepository;

	public TourService(TourRepository tourRepository) {
        this.tourRepository = tourRepository;
    }
	
	//returns all tours: 
		public List<Tour> findAllTours() {
	        return tourRepository.findAll();
	    }
}
